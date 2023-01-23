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

export type MatchEntity = {
    id: number,
    home_team_id: number,
    match_visiting_team_id: number
    result_match: number;
    date: (Date | string)
};

export type Match = Omit<MatchEntity, "id">;