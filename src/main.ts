import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";
import { CorsOptions } from "@nestjs/common/interfaces/external/cors-options.interface";

async function bootstrap() {
   const app = await NestFactory.create(AppModule);

   const options: CorsOptions = {
      origin: "http://localhost:3000",
   };
   app.enableCors(options);
   await app.listen(5000);
}
bootstrap();
