import { Request, Response } from "express";


export async function userPost(req: Request, res: Response){
    const {name} = req.body;
    console.log(name)
    res.send({name})
}