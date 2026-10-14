package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class LoginStudent extends SocketModel {
    public String studentId;
    public long time;
    public boolean timeOver;

    public LoginStudent(String str, long j) {
        super(69);
        this.studentId = str;
        this.time = j;
    }
}
