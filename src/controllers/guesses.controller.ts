import { Request, Response } from "express";
import { Guess } from "../protocols.js";
import { insertGuess } from "../repositories/guesses.repository.js";

export async function guesPost(req: Request, res: Response) {
    const guess: Guess = req.body;
    try {
       const isGuess =  await insertGuess(guess)
        if(!isGuess){
            return res.sendStatus(400);
        }
    } catch {
        res.sendStatus(500);
    }

    res.sendStatus(201);
}