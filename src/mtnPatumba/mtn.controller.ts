import { Controller, Get, Param } from "@nestjs/common";
import { MtnPatumbaService } from "./mtn.service";
@Controller("mtn")
export class MtnPatumbaController {
   constructor(private mtnpatumbaService: MtnPatumbaService) {}
   // geing sec reports
   @Get("/sec")
   secFees(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.mtnpatumbaService.getSecReport(firstDate, secondDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units")
   monthlyUnits(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.mtnpatumbaService.getMonthlyUnitsReport(
         firstDate,
         secondDate,
      );
   }
   @Get("/units-price")
   unitPrice(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.mtnpatumbaService.getUnitPriceReport(firstDate, secondDate);
   }
}
