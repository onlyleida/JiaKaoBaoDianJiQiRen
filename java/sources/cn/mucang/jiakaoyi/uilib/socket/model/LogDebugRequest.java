package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class LogDebugRequest extends SocketModel {
    public byte cmd;

    public LogDebugRequest() {
        super(177);
    }

    public boolean isEnd() {
        return this.cmd == 0;
    }

    public boolean isStart() {
        return this.cmd == 1;
    }
}
