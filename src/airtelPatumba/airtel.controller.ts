import { Controller, Get, Post, Body, Param } from "@nestjs/common";
import { AirtelPatumbaService } from "./airtel.service";
@Controller("airtel")
export class AirtelPatumbaController {
   constructor(private airtelPatumbaService: AirtelPatumbaService) {}

   // geing sec reports

   // geing sec reports
   @Get("/sec/:startDate/:endDate")
   secFees(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.airtelPatumbaService.getSecReport(startDate, endDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units/:startDate/:endDate")
   monthlyUnits(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.airtelPatumbaService.getMonthlyUnitsReport(
         startDate,
         endDate,
      );
   }
   @Get("/units-price/:startDate/:endDate")
   unitPrice(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.airtelPatumbaService.getUnitPriceReport(startDate, endDate);
   }
}
