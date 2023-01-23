import { Router } from "express";
import { matchPost } from "../controllers/matches.controller.js";
import { matchValidation } from "../middleware/matches.middleware.js";

const matchesRouter = Router();
matchesRouter.post("/add-match", matchValidation, matchPost)
export{matchesRouter};