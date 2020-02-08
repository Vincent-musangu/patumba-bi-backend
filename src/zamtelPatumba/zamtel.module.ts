import { Module } from "@nestjs/common";
import { ZamtelPatumbaController } from "./zamtel.controller";
import { ZamtelPatumbaService } from "./zamtel.service";
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
         SaccoEntityRepository,
      ]),
   ],
   controllers: [ZamtelPatumbaController],
   providers: [ZamtelPatumbaService],
})
export class ZamtelPatumbaModule {}
