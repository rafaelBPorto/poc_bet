export type UserEntity = {
    id: number;
    name: string;
};

export type User = Omit<UserEntity, "id">;

export type GuessEntity = {
    id: number,
    user_id: number,
    match_id: number
    guess: number;
};

export type Guess = Omit<GuessEntity, "id">;

