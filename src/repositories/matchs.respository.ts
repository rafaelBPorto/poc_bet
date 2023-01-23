import { QueryResult } from "pg";
import { connection } from "../database/database.js";
import { Match, MatchEntity } from "../protocols.js";
import dayjs from 'dayjs'

export async function findMatchById(id: number){
    let match : QueryResult<MatchEntity>;
    try{
        match = await connection.query<MatchEntity>(`
        SELECT * FROM matches WHERE id=$1;
        `, [id]);
    }catch(error){
        console.log(error.details);
    }
    
    return match
}

export async function insertMatch(match : Match){
    const {home_team_id, visiting_team_id, result_match, date} = match;
    const dateFomat =  dayjs(date)
    try {
        await connection.query(`
            INSERT INTO matches (home_team_id, visiting_team_id, result_match, date) 
             VALUES ($1, $2, $3, $4);
             `, [home_team_id, visiting_team_id, result_match, dateFomat]);
        return true
    } catch (error) {
        console.log(error)
    }

}

export async function updateResulMatch(id:number, result_match:number) {
    await connection.query(`
        UPDATE matches SET result_match=$2 WHERE id = $1;
    `, [id, result_match])
    
}