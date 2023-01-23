import { QueryResult } from "pg";
import { connection } from "../database/database.js";

export async function insertUser(name: string) {
    await connection.query(`
        INSERT INTO users (name) VALUES ($1);
    `, [name]);
}

export async function findUserbyId(id:number) : Promise<QueryResult>{
    const user = await connection.query(`
    SELECT * FROM users WHERE id=$1;`
    , [id]);
    return user;
}