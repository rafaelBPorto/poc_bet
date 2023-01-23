import Joi from "joi";
import { User } from "../protocols";

const userSchema = Joi.object<User>({
    name: Joi.string().trim().required()
});

export {userSchema}