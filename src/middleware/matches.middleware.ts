import { NextFunction, Request, Response } from "express";
import { matchSchema } from "../models/matches.schema.js";
import { Match } from "../protocols.js";

export function matchValidation(req: Request, res: Response, next: NextFunction){
    const match : Match = req.body;
    const {error} =  matchSchema.validate(match, {abortEarly: false});

    if (error) {
        const errors = error.details.map((detail) => detail.message);
        return res.status(400).send({ message: errors });
      }
    
      next();
}