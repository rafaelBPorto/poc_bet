import { Router } from "express";
import { userPost } from "../controllers/users.controller.js";

const usesRouter = Router();

usesRouter.post("/add-user", userPost)

export {usesRouter};