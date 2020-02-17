import { Injectable, UnauthorizedException } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { Strategy, ExtractJwt } from "passport-jwt";
import { JwtPayload } from "./jwtPayload.interface";
import { InjectRepository } from "@nestjs/typeorm";
import { UserRepository } from "./user.repository";
import { UserEntity } from "./user.entity";
@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
   constructor(
      @InjectRepository(UserRepository)
      private userRepository: UserRepository,
   ) {
      super({
         jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
         secretOrKey: "topsecret17",
      });
   }

   async validate(payload: JwtPayload): Promise<UserEntity> {
      const { userEmail } = payload;
      const user = await this.userRepository.findOne(userEmail);

      // tslint:disable-next-line: no-console
      // console.log(user);
      if (!user) {
         throw new UnauthorizedException();
      }
      return user;
   }
}
