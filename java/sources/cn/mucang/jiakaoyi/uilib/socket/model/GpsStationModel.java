package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class GpsStationModel extends SocketModel {
    public static final byte LiuFenStation = 2;
    public static final byte SelfStation = 1;
    public String baseId;
    public String baseName;
    public String key;
    public String secret;
    public String sn;
    public byte station;

    public GpsStationModel() {
        super(36);
        this.station = (byte) 1;
        this.baseName = "本地基站";
    }

    public String desc() {
        return isSelf() ? "自建基站" : "云基站";
    }

    public boolean isLiuFen() {
        return this.station == 2;
    }

    public boolean isSelf() {
        return this.station == 1;
    }

    public void set(GpsStationModel gpsStationModel) {
        this.station = gpsStationModel.station;
        this.sn = gpsStationModel.sn;
        this.key = gpsStationModel.key;
        this.secret = gpsStationModel.secret;
        this.baseId = gpsStationModel.baseId;
        this.baseName = gpsStationModel.baseName;
    }

    public String toString() {
        return "CBaseSnModel{station=" + ((int) this.station) + ", sn='" + this.sn + "', key='" + this.key + "', secret='" + this.secret + "'}";
    }
}
