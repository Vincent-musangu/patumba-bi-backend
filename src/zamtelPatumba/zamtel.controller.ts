import { Controller, Get, Param, Post, Body } from "@nestjs/common";
import { ZamtelPatumbaService } from "./zamtel.service";
@Controller("zamtel")
export class ZamtelPatumbaController {
   constructor(private zamtelPatumbaService: ZamtelPatumbaService) {}

   // geing sec reports

   // geing sec reports
   @Get("/sec/:startDate/:endDate")
   secFees(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.zamtelPatumbaService.getSecReport(startDate, endDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units/:startDate/:endDate")
   monthlyUnits(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.zamtelPatumbaService.getMonthlyUnitsReport(
         startDate,
         endDate,
      );
   }
   @Get("/units-price/:startDate/:endDate")
   unitPrice(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.zamtelPatumbaService.getUnitPriceReport(startDate, endDate);
   }
   @Get("/sacco/:startDate/:endDate")
   sacco(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.zamtelPatumbaService.getsaccoReport(startDate, endDate);
   }
}
