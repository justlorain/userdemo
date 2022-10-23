namespace go user

struct BaseResp {
    1: i64 StatusCode;
    2: string StatusMsg;
    3: string data;
}

struct RegisterRequest {
    1: string Username (api.body="username");
    2: string Password (api.body="password");
}

struct RegisterResponse {
    1: BaseResp BaseResp;
}

struct LoginRequest {
    1: string Username (api.body="username");
    2: string Password (api.body="password");
}

struct LoginResponse {
    1: BaseResp BaseResp;
}

struct InfoRequest {
    1: string Username (api.path="username");
}

struct InfoResponse {
    1: BaseResp BaseResp;
}

service UserService {
    RegisterResponse Register(1: RegisterRequest req) (api.post="/user/register");
    LoginResponse Login(1: LoginRequest req) (api.post="/user/login");
    InfoResponse Info(1: InfoRequest req) (api.get="/user/:username");
}