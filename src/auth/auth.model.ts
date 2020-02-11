export class AuthModel {
   id: string;
   userName: string;
   password: string;
   email: string;
   role: string;
}

export enum EserRole {
   Admin = "Admin",
}
