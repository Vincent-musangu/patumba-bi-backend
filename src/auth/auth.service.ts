import { InjectRepository } from "@nestjs/typeorm";
import { Injectable, UnauthorizedException } from "@nestjs/common";
import { UserRepository } from "./user.repository";
import { AuthCredentialsDto } from "./dto/authCredentials.dto";
import { JwtService } from "@nestjs/jwt";
import { JwtPayload } from "./jwtPayload.interface";

@Injectable()
export class AuthService {
   constructor(
      @InjectRepository(UserRepository)
      private userRepository: UserRepository,
      private jwtService: JwtService,
   ) {}
   async addUser(authCredentialsDto: AuthCredentialsDto): Promise<any> {
      const credentials = await this.userRepository.addUser(authCredentialsDto);
      // tslint:disable-next-line: no-console
      // console.log(authCredentialsDto);
      return credentials;
   }
   async signIn(authCredentialsDto: AuthCredentialsDto) {
      const userCredential = await this.userRepository.validateUserPassword(
         authCredentialsDto,
      );
      // tslint:disable-next-line: no-console
      if (userCredential) {
         const { userEmail, userRole, userName } = userCredential;
         // const payload: JwtPayload = { userEmail, userRole, userName };
         const accessToken = await this.jwtService.sign({
            userEmail,
            userRole,
            userName,
         });
         return {
            userRole,
            userName,
            statusCode: 201,
         };
      } else {
         return {
            statusCode: 401,
         };
      }
   }
}
