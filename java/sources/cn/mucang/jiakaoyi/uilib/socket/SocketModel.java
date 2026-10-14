package cn.mucang.jiakaoyi.uilib.socket;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SocketModel implements Serializable {
    private final int type;

    public SocketModel(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }
}
