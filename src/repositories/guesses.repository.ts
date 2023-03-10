import { connection } from "../database/database.js";
import { Guess, Match } from "../protocols.js";
import { findMatchById } from "./matchs.respository.js";
import { findUserbyId } from "./user.repository.js";

export async function insertGuess(guesses: Guess) {
    const { user_id, match_id, guess } = guesses
    try {
        const isUser = await findUserbyId(user_id);
        if (isUser.rowCount === 0) {
            return false
        }
        const isMatch = await findMatchById(match_id);
        if (isMatch.rowCount === 0) {
            return false
        }

        if(isMatch.rows[0].result_match!==4){
            return false
        }

        await connection.query(`
            INSERT INTO guesses (user_id, match_id, guess) 
             VALUES ($1, $2, $3);
             `, [user_id, match_id, guess]);
        return true
    } catch (error) {
        console.log(error.detail)
    }
}