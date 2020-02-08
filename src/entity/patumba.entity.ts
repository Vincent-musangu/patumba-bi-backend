import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";
@Entity()
export class SecEntity {
   @PrimaryGeneratedColumn()
   id: number;
   @Column()
   totalWithdraws: number;

   @Column()
   netAssetValue: number;
   @Column()
   totalCollections: number;
   @Column()
   unitPrice: number;
   @Column()
   totalUnits: number;
   @Column()
   totalLiabilites: number;
   @Column()
   totalExpenses: number;
   @Column()
   totalInstrumentsValue: number;
   @Column()
   createdAt: string;
   @Column()
   updatedAt: string;
   @Column()
   date: string;
}

// tslint:disable-next-line: max-classes-per-file
@Entity()
export class UnitPriceEntity {
   @PrimaryGeneratedColumn()
   id: number;
   @Column()
   unitPrice: number;
   @Column()
   date: string;
   @Column()
   insertedBy: number;
   @Column()
   dateModified: string;
}
// tslint:disable-next-line: max-classes-per-file
@Entity()
export class SaccoEntity {
   @PrimaryGeneratedColumn()
   id: number;
   @Column()
   MSISDN: number;
   @Column()
   amount: number;
   @Column()
   firstName: string;
   @Column()
   lastName: string;
   @Column()
   units: number;
   @Column()
   unitPrice: number;
   @Column()
   charge: number;
   @Column()
   chargeUnits: number;
   @Column()
   chargeAmount: number;
   @Column()
   movedToWithdraws: number;
   @Column()
   statusCode: number;
   @Column()
   serviceID: number;
   @Column()
   accountSourceId: number;
   @Column()
   tenor: number;
   @Column()
   balance: number;
   @Column()
   maturityDate: number;
   @Column()
   dateCreated: number;
   @Column()
   interestRate: number;
   @Column()
   accountTypeId: number;
   @Column()
   maturityUnitPrice: number;
}
