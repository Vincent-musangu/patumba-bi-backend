import { Module } from "@nestjs/common";
import { AirtelPatumbaController } from "./airtel.controller";
import { AirtelPatumbaService } from "./airtel.service";
import { TypeOrmModule } from "@nestjs/typeorm";
import {
   SecEntityRepository,
   UnitPriceEntityRepository,
   SaccoEntityRepository,
} from "../repository/patumba.repository";

@Module({
   imports: [
      TypeOrmModule.forFeature([
         SecEntityRepository,
         UnitPriceEntityRepository,
         // SaccoEntityRepository,
      ]),
   ],
   controllers: [AirtelPatumbaController],
   providers: [AirtelPatumbaService],
})
export class AirtelPatumbaModule {}
