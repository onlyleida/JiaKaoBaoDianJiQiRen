package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class ProjectFenceModel extends SocketModel {
    public static final int Close = 0;
    public static final int Open = 1;
    public final byte enable;
    public final long id;
    public final int time;

    public ProjectFenceModel(long j, byte b, int i) {
        super(182);
        this.id = j;
        this.enable = b;
        this.time = i;
        f.o("收到项目围栏下发事件:" + j + "," + ((int) b) + "," + i);
    }

    public String toString() {
        return "ProjectFenceModel{id=" + this.id + ", enable=" + ((int) this.enable) + ", time=" + this.time + '}';
    }
}
