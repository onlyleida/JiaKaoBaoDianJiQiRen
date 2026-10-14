package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class CallStatusModel extends SocketModel {
    public final byte cmd;

    public CallStatusModel(byte b) {
        super(180);
        this.cmd = b;
    }
}
