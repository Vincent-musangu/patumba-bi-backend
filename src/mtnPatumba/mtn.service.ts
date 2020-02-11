import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import {
   SecEntityRepository,
   UnitPriceEntityRepository,
} from "../repository/patumba.repository";

@Injectable()
export class MtnPatumbaService {
   // am using AirtelSecEntityRepository repo for sec and monthly
   // because the all use the same table
   constructor(
      @InjectRepository(SecEntityRepository)
      private airtelSecEntityRepository: SecEntityRepository,
      private airtelUnitPriceEntityRepository: UnitPriceEntityRepository,
   ) {}
   async getSecReport(
      startDate: string,
      endDate: string,
   ): Promise<SecEntityRepository> {
      const secQuery = await this.airtelSecEntityRepository.query(
         `select SUBSTRING(CONVERT(created_at,CHAR),1,10) as date,4/7.25*total_liabilites as "fundManagementFees",
         1/7.25*total_liabilites as "custodianFees",1.25/7.25*total_liabilites as "secLevyFees",
         1/7.25*total_liabilites as "trustFees" FROM fund_end_of_day WHERE DATE(created_at)
         >= '${startDate}' AND DATE(created_at) <= '${endDate}' OR  DATE(created_at)
         <= '${startDate}' AND DATE(created_at) >= '${endDate}';`,
      );
      // tslint:disable-next-line: no-console
      console.log(secQuery);
      // tslint:disable-next-line: no-console
      // console.log("first and second", .startDate, this.endDate);

      return secQuery;
   }

   // geting monthly units
   async getMonthlyUnitsReport(
      startDate: string,
      endDate: string,
   ): Promise<SecEntityRepository> {
      const MonthlyQuery = await this.airtelSecEntityRepository.query(
         `select SUBSTRING(CONVERT(created_at,CHAR),1,10) as Date, total_withdraws as "Total Units Redeemed",
          total_units as "Total Units Issued" from fund_end_of_day WHERE DATE(created_at)
           >= '${startDate}' AND DATE(created_at) <= '${endDate}' OR  DATE(created_at)
           <= '${startDate}' AND DATE(created_at) >= '${endDate}';`,
      );
      // tslint:disable-next-line: no-console
      console.log(MonthlyQuery);

      return MonthlyQuery;
   }

   async getUnitPriceReport(
      startDate: string,
      endDate: string,
   ): Promise<UnitPriceEntityRepository> {
      const UnitPriceQuery = await this.airtelUnitPriceEntityRepository.query(
         `Select SUBSTRING( CONVERT(date,CHAR),1,10) as Date, unitPrice as 'Unit Price' FROM unitPrices
          WHERE DATE(date) >= '${startDate}' AND DATE(date) <= '${endDate}'
           OR DATE(date) <= '${startDate}' AND DATE(date) >= '${endDate}';`,
      );
      // tslint:disable-next-line: no-console
      console.log(UnitPriceQuery);

      return UnitPriceQuery;
   }
   // geting Sacco Data
}
