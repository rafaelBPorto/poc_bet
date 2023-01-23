import { Router } from "express";
import { guesPost } from "../controllers/guesses.controller.js";
import { guessValidation } from "../middleware/guesses.middleware.js";

const guessesRouter = Router();
guessesRouter.post("/add-guess", guessValidation, guesPost);

export { guessesRouter };