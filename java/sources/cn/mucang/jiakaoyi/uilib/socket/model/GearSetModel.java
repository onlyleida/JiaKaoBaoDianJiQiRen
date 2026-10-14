package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class GearSetModel extends SocketModel {
    public final int algType;
    public final byte[] gearData;
    public final int id;

    public GearSetModel(int i, int i2, byte[] bArr) {
        super(113);
        this.id = i;
        this.algType = i2;
        this.gearData = bArr;
    }
}
