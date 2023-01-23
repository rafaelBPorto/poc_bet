import express from "express"

const server = express();
server.use(express.json());

server.get("/health", (req, res)=> res.send("OK!"));
const port = 4000
server.listen(port, ()=> console.log(`Server is running in ${port}`))