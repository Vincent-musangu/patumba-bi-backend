import { Repository, EntityRepository } from "typeorm";
import { UserEntity } from "./user.entity";
import { AuthCredentialsDto } from "./dto/authCredentials.dto";
import {
   ConflictException,
   InternalServerErrorException,
} from "@nestjs/common";

import * as bcrypt from "bcrypt";
@EntityRepository(UserEntity)
export class UserRepository extends Repository<UserEntity> {
   async addUser(authCredentialsDto: AuthCredentialsDto) {
      const { username, password, email } = authCredentialsDto;
      const user = new UserEntity();
      user.salt = await bcrypt.genSalt();
      user.email = email;
      user.password = await this.hashPassword(password, user.salt);
      user.username = username;
      // user.role = role;
      // tslint:disable-next-line: no-console
      console.log(user.password);

      try {
         await user.save();
         return 201;
      } catch (error) {
         // tslint:disable-next-line: no-console
         console.log(error);
         // if (error.code === "ER_DUP_ENTRY") {
         //    throw new ConflictException("user already exist");
         // } else {
         //    throw new InternalServerErrorException();
         // }
      }
   }

   async validateUserPassword(
      authCredentialsDto: AuthCredentialsDto,
   ): Promise<{ userEmail: string; userRole: string; userName: string } | any> {
      const { email, password } = authCredentialsDto;
      const user = await this.findOne({ email });
      if (user && (await user.validatePassword(password))) {
         const userEmail = user.email;
         // const userRole = user.role;
         const userName = user.username;
         const userCredential = {
            userEmail,
            // userRole,
            userName,
         };
         return userCredential;
      }
   }
   private async hashPassword(password, salt): Promise<string> {
      return bcrypt.hash(password, salt);
   }
}
