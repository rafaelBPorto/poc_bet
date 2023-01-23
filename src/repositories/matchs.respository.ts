import { QueryResult } from "pg";
import { connection } from "../database/database.js";
import { MatchEntity } from "../protocols.js";

export async function findMatchById(id: number){
    let match : QueryResult<MatchEntity>;
    try{
        match = await connection.query<MatchEntity>(`
        SELECT * FROM matches WHERE id=$1;
        `, [id]);
    }catch(error){
        // console.log(error.details);
    }
    
    return match
}