import { NextFunction, Request, Response } from "express";
import { userSchema } from "../models/user.schema.js";
import { User } from "../protocols";

export function userValidation(req: Request, res: Response, next: NextFunction) {
    const name: User = req.body
    const {error} = userSchema.validate(name, {abortEarly: false});

    if (error) {
        const errors = error.details.map((detail) => detail.message);
        return res.status(400).send({ message: errors });
      }
    
      next();
}