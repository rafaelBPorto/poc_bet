import { Router } from "express";
import { userPost } from "../controllers/users.controller.js";
import { userValidation } from "../middleware/user.middleware.js";

const usesRouter = Router();
usesRouter.post("/add-user", userValidation, userPost)

export {usesRouter};