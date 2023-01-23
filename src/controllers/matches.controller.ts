import { Request, Response } from "express";
import { Match } from "../protocols.js";
import { insertMatch, updateResulMatch } from "../repositories/matchs.respository.js";

export async function matchPost(req: Request, res: Response) {
    const match: Match = req.body;
    try {
        const isMatch = await insertMatch(match)
        if (!isMatch) {
            return res.sendStatus(400);
        }
    } catch {
        res.sendStatus(500);
    }

    res.sendStatus(201);
}

export async function putResultMatch(req: Request, res: Response) {
    const { id }  = req.params;
    const { result_match } = req.body;
    
    try {
        const isChange = await updateResulMatch(Number(id), result_match)
    } catch (error) {
        res.sendStatus(500);
    }
    res.sendStatus(201);
}
