import Joi from "joi";
import { Guess } from "../protocols.js";

const guessSchema = Joi.object<Guess>({
    user_id: Joi.number().required(),
    match_id: Joi.number().required(),
    guess: Joi.number().required()
});

export { guessSchema }