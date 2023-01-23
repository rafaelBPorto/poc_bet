import { Router } from "express";
import { matchPost, putResultMatch } from "../controllers/matches.controller.js";
import { matchValidation } from "../middleware/matches.middleware.js";

const matchesRouter = Router();
matchesRouter.post("/add-match", matchValidation, matchPost)
matchesRouter.put("/change-result/:id", putResultMatch)
export{matchesRouter};