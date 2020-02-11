import { Controller, Get, Post, Body, Param } from "@nestjs/common";
import { MtnPatumbaService } from "./mtn.service";
@Controller("mtn")
export class MtnPatumbaController {
   constructor(private mtnpatumbaService: MtnPatumbaService) {}

   // geing sec reports

   // geing sec reports
   @Get("/sec/:startDate/:endDate")
   secFees(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.mtnpatumbaService.getSecReport(startDate, endDate);
   }
   // geting monthlyunit reports
   @Get("/monthly-units/:startDate/:endDate")
   monthlyUnits(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.mtnpatumbaService.getMonthlyUnitsReport(startDate, endDate);
   }
   @Get("/units-price/:startDate/:endDate")
   unitPrice(
      @Param("startDate") startDate: string,
      @Param("endDate") endDate: string,
   ) {
      return this.mtnpatumbaService.getUnitPriceReport(startDate, endDate);
   }
}
