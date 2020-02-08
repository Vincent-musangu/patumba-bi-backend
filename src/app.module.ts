import { Module } from "@nestjs/common";
import { ZamtelPatumbaModule } from "./zamtelPatumba/zamtel.module";
import { TypeOrmModule } from "@nestjs/typeorm";
import {
   SecEntity,
   UnitPriceEntity,
   SaccoEntity,
} from "./entity/patumba.entity";
import { AirtelPatumbaModule } from "./airtelPatumba/airtel.module";

@Module({
   imports: [
      AirtelPatumbaModule,
      ZamtelPatumbaModule,
      TypeOrmModule.forRoot({
         type: "mysql",
         host: "localhost",
         port: 3306,
         username: "root",
         database: "patumba_reports",
         entities: [SecEntity, UnitPriceEntity, SaccoEntity],
         synchronize: false,
      }),
   ],
})
export class AppModule {}
