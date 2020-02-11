import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import {
   SecEntityRepository,
   UnitPriceEntityRepository,
   SaccoEntityRepository,
} from "../repository/patumba.repository";

@Injectable()
export class ZamtelPatumbaService {
   // am using zamtelSecEntityRepository repo for sec and monthly
   // because the all use the same table
   constructor(
      @InjectRepository(SecEntityRepository)
      private zamtelSecEntityRepository: SecEntityRepository,
      private zamtelUnitPriceEntityRepository: UnitPriceEntityRepository,
      private zamtelSaccoEntityRepository: SaccoEntityRepository,
   ) {}

   async getSecReport(
      startDate: string,
      endDate: string,
   ): Promise<SecEntityRepository> {
      const secQuery = await this.zamtelSecEntityRepository.query(
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
      const MonthlyQuery = await this.zamtelSecEntityRepository.query(
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
      const UnitPriceQuery = await this.zamtelUnitPriceEntityRepository.query(
         `Select SUBSTRING( CONVERT(date,CHAR),1,10) as Date, unitPrice as 'Unit Price' FROM unitPrices
          WHERE DATE(date) >= '${startDate}' AND DATE(date) <= '${endDate}'
           OR DATE(date) <= '${startDate}' AND DATE(date) >= '${endDate}';`,
      );
      // tslint:disable-next-line: no-console
      console.log(UnitPriceQuery);

      return UnitPriceQuery;
   }
   // geting Sacco Data
   async getsaccoReport(
      startDate: string,
      endDate: string,
   ): Promise<SaccoEntityRepository> {
      const saccoQuery = await this.zamtelSaccoEntityRepository.query(
         `SELECT
         SUBSTRING(CONVERT(T.maturity_date,CHAR),1,10) AS BorrowDate,
    T.id AS Reference,
    T.MSISDN AS AccountNo,
    CONCAT(C.first_name, ' ', C.last_name) AS Name,
    T.tenor AS Period,
    T.amount AS Principle,
    SUBSTRING(CONVERT(T.maturity_date,CHAR),1,10) AS RepaymentDate,
    T.interest_rate AS InterestRate,
    T.chargeAmount AS INTEREST,
    (T.amount + T.chargeAmount) AS AmntDue,
    (T.chargeAmount + T.amount) AS TotalRepayment
FROM
    transactions T
LEFT JOIN customers C ON
    T.MSISDN = C.MSISDN
WHERE
    T.serviceID = 11 AND T.statusCode = 100 AND
    DATE(T.dateCreated) >= '${startDate}'AND DATE(T.dateCreated) <= '${endDate}'
    OR DATE(T.dateCreated) <= '${startDate}'AND DATE(T.dateCreated) >= '${endDate}'
ORDER BY
    BorrowDate;`,
      );
      // tslint:disable-next-line: no-console
      console.log(saccoQuery);

      return saccoQuery;
   }
}
