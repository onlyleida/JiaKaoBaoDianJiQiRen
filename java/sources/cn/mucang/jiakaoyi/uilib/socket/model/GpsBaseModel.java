package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class GpsBaseModel extends SocketModel {
    private final String gpsBaseName;

    public GpsBaseModel(String str) {
        super(67);
        this.gpsBaseName = str;
    }

    public String getGpsBaseName() {
        return this.gpsBaseName;
    }
}
