import { Router } from "express";

const guessesRouter = Router();
guessesRouter.post("/add-guess");

export { guessesRouter };