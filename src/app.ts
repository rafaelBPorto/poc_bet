import express from "express"
import { guessesRouter } from "./routes/guesses.routes.js";
import { matchesRouter } from "./routes/matches.routes.js";
import { usesRouter } from "./routes/user.routes.js";

const server = express();

server
    .use(express.json())
    .get("/health", (req, res) => res.send("OK!"))
    .use(usesRouter)
    .use(guessesRouter)
    .use(matchesRouter)

const port = 4000
server.listen(port, () => console.log(`Server is running in ${port}`))