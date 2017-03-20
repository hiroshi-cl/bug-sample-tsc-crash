import { Either } from "monet";
import { Def } from "@local/def";

export class Use {
    get(str: string): Either<any, any> {
        return Def.get(str);
    }
}
