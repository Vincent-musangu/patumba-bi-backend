import { Controller, Get, Param } from "@nestjs/common";
import { AirtelPatumbaService } from "./airtel.service";
@Controller("airtel")
export class AirtelPatumbaController {
   constructor(private airtelpatumbaService: AirtelPatumbaService) {}
   // geing sec reports
   @Get("/sec")
   secFees(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.airtelpatumbaService.getSecReport(firstDate, secondDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units")
   monthlyUnits(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.airtelpatumbaService.getMonthlyUnitsReport(
         firstDate,
         secondDate,
      );
   }
   @Get("/units-price")
   unitPrice(firstDate: string, secondDate: string) {
      firstDate = "2020-02-01 00:00:00";
      secondDate = "2020-02-10 00:00:00";
      return this.airtelpatumbaService.getUnitPriceReport(
         firstDate,
         secondDate,
      );
   }
}
