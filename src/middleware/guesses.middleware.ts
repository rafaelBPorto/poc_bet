import { NextFunction, Request, Response } from "express";
import { guessSchema } from "../models/guesses.schema.js";
import { Guess } from "../protocols.js";

export function guessValidation(req: Request, res: Response, next: NextFunction){
    const guess : Guess = req.body;
    const {error} = guessSchema.validate(guess, {abortEarly: false});

    if (error) {
        const errors = error.details.map((detail) => detail.message);
        return res.status(400).send({ message: errors });
      }
    
      next();
}