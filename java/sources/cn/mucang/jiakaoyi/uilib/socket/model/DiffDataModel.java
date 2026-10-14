package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class DiffDataModel extends SocketModel {
    public final byte[] rtcm;

    public DiffDataModel(byte[] bArr) {
        super(64);
        this.rtcm = bArr;
    }
}
