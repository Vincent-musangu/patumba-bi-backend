import {
   BaseEntity,
   Entity,
   PrimaryGeneratedColumn,
   Column,
   Unique,
} from "typeorm";
import * as bcrypt from "bcrypt";
// import { IsEmpty } from "class-validator/decorator/decorators";
@Entity()
// @Unique(["email"])
export class UserEntity extends BaseEntity {
   @PrimaryGeneratedColumn()
   id: number;
   @Column()
   username: string;
   @Column()
   email: string;
   @Column()
   password: string;
   // @Column()
   // role: string;

   @Column()
   salt: string;

   async validatePassword(password: string): Promise<boolean> {
      const hash = await bcrypt.hash(password, this.salt);
      return hash === this.password;
   }
}
