import { BaseEntity, Entity, PrimaryGeneratedColumn, Column } from "typeorm";
@Entity()
export class UserEntity extends BaseEntity {
   @PrimaryGeneratedColumn()
   id: number;
   @Column()
   userName: string;
   @Column()
   email: string;
   @Column()
   password: string;
   @Column()
   role: string;
}
