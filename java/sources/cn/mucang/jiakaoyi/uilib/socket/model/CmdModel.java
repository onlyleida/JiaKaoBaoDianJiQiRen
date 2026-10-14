package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class CmdModel extends SocketModel {
    public final String cmd;
    public final byte cmdType;
    public final int id;

    public CmdModel(String str, byte b, int i) {
        super(41);
        this.cmd = str;
        this.id = i;
        this.cmdType = b;
    }
}
