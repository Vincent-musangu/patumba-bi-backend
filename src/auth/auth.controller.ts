import { AuthService } from "./auth.service";
import { AuthCredentialsDto } from "./dto/authCredentials.dto";
import {
   Controller,
   Post,
   Body,
   ValidationPipe,
   UseGuards,
   Req,
} from "@nestjs/common";
import { AuthGuard } from "@nestjs/passport";
import { GetUser } from "./get-user.decorator";
import { UserEntity } from "./user.entity";
@Controller("auth")
export class AuthController {
   constructor(private authService: AuthService) {}

   @Post("/signup")
   async addUser(@Body(ValidationPipe) authCredentialsDto: AuthCredentialsDto) {
      return this.authService.addUser(authCredentialsDto);
   }

   @Post("/signin")
   async signIn(@Body(ValidationPipe) authCredentialsDto: AuthCredentialsDto) {
      return this.authService.signIn(authCredentialsDto);
   }

   @Post("/test")
   // @UseGuards(AuthGuard())
   test(@Req() req) {
      // tslint:disable-next-line: no-console
      console.log(req);
   }
}
