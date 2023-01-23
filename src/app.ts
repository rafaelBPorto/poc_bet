import express from "express"
import { usesRouter } from "./routes/user.routes.js";

const server = express();
server
    .use(express.json())
    .use(usesRouter);

server.get("/health", (req, res)=> res.send("OK!"));
const port = 4000
server.listen(port, ()=> console.log(`Server is running in ${port}`))