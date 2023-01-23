import { QueryResult } from "pg";
import { connection } from "../database/database.js";

export async function findMatchById(id: number): Promise<QueryResult> {
    let match;
    try{
        match = await connection.query(`
        SELECT * FROM matches WHERE id=$1;
        `, [id]);
    }catch(error){
        // console.log(error.details);
    }
    
    return match
}