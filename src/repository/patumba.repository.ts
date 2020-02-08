import { EntityRepository, Repository } from "typeorm";
import {
   SecEntity,
   UnitPriceEntity,
   SaccoEntity,
} from "../entity/patumba.entity";

@EntityRepository(SecEntity)
export class SecEntityRepository extends Repository<SecEntity> {}
// tslint:disable-next-line: max-classes-per-file
@EntityRepository(UnitPriceEntity)
export class UnitPriceEntityRepository extends Repository<UnitPriceEntity> {}
// tslint:disable-next-line: max-classes-per-file
@EntityRepository(SaccoEntity)
export class SaccoEntityRepository extends Repository<SaccoEntity> {}
