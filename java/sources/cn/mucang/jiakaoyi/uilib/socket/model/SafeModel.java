package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class SafeModel extends SocketModel {
    public final byte cmd;
    public final byte operation;

    public SafeModel(byte b, byte b2) {
        super(147);
        this.cmd = b;
        this.operation = b2;
    }
}
