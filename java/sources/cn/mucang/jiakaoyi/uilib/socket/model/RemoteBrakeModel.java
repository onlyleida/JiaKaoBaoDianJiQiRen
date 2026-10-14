package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteBrakeModel extends SocketModel {
    public final byte cmd;

    public RemoteBrakeModel(byte b) {
        super(l.Receive_GEAR_DATA2);
        this.cmd = b;
    }
}
