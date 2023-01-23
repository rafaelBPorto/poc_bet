import { Request, Response } from "express";
import { User } from "../protocols.js";
import { insertUser } from "../repositories/user.repository.js";


export async function userPost(req: Request, res: Response) {
    const user: User = req.body;
    try {
        await insertUser(user.name)
    } catch {
        res.sendStatus(500);
    }
    res.sendStatus(201);
}