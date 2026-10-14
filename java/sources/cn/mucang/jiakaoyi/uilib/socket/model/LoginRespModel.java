package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class LoginRespModel extends SocketModel {
    private static final int CODE_LOGIN_FAIL = 400;
    private static final int CODE_LOGIN_SUCCESS = 200;
    private static final int CODE_LOGIN_TOKEN_EXPIRED = 401;
    private int code;

    public LoginRespModel(int i) {
        super(17);
        this.code = i;
    }

    public boolean isSuccess() {
        return this.code == 200;
    }

    public boolean isTokenExpired() {
        return this.code == 401;
    }

    public boolean isTokenFail() {
        return this.code == 400;
    }
}
