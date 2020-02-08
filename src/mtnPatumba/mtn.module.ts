import { Module } from "@nestjs/common";
import { MtnPatumbaController } from "./mtn.controller";
import { MtnPatumbaService } from "./mtn.service";
import { TypeOrmModule } from "@nestjs/typeorm";
import {
   SecEntityRepository,
   UnitPriceEntityRepository,
   // SaccoEntityRepository,
} from "../repository/patumba.repository";

@Module({
   imports: [
      TypeOrmModule.forFeature([
         SecEntityRepository,
         UnitPriceEntityRepository,
         // SaccoEntityRepository,
      ]),
   ],
   controllers: [MtnPatumbaController],
   providers: [MtnPatumbaService],
})
export class AirtelPatumbaModule {}
