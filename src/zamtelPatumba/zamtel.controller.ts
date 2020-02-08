import { Controller, Get, Param } from "@nestjs/common";
import { ZamtelPatumbaService } from "./zamtel.service";
@Controller("zamtel")
export class ZamtelPatumbaController {
   constructor(private zamtelPatumbaService: ZamtelPatumbaService) {}
   // geing sec reports
   @Get("/sec")
   secFees(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.zamtelPatumbaService.getSecReport(firstDate, secondDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units")
   monthlyUnits(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.zamtelPatumbaService.getMonthlyUnitsReport(
         firstDate,
         secondDate,
      );
   }
   @Get("/units-price")
   unitPrice(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.zamtelPatumbaService.getUnitPriceReport(
         firstDate,
         secondDate,
      );
   }
   @Get("/sacco")
   sacco(firstDate: string, secondDate: string) {
      firstDate = "2020-01-01 00:00:00";
      secondDate = "2020-02-18 00:00:00";
      return this.zamtelPatumbaService.getsaccoReport(firstDate, secondDate);
   }
}
