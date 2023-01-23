import Joi from "joi";
import { Match } from "../protocols.js";

const matchSchema = Joi.object<Match>({
    home_team_id: Joi.number().required(),
    visiting_team_id: Joi.number().required(),
    result_match: Joi.number().required(),
    date: Joi.date().required() || Joi.string().required()
});

export { matchSchema }