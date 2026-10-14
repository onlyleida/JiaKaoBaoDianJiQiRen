package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class LogoutModel extends SocketModel {
    public String reason;

    public LogoutModel(String str) {
        super(65);
        this.reason = str;
    }
}
