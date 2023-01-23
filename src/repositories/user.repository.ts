import { connection } from "../database/database.js";

export async function insertUser(name: string) {
    await connection.query(`
        INSERT INTO users (name) VALUES ($1);
    `, [name])
}   