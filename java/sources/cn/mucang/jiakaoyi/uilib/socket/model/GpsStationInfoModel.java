package cn.mucang.jiakaoyi.uilib.socket.model;

import android.text.TextUtils;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class GpsStationInfoModel extends SocketModel {
    public double lat;
    public double lon;
    public String name;
    public int status;

    public GpsStationInfoModel() {
        super(70);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GpsStationInfoModel gpsStationInfoModel = (GpsStationInfoModel) obj;
        return this.status == gpsStationInfoModel.status && Double.compare(gpsStationInfoModel.lat, this.lat) == 0 && Double.compare(gpsStationInfoModel.lon, this.lon) == 0 && TextUtils.equals(this.name, gpsStationInfoModel.name);
    }

    public int hashCode() {
        return Objects.hash(this.name, Integer.valueOf(this.status), Double.valueOf(this.lat), Double.valueOf(this.lon));
    }

    public String toString() {
        return "GpsStationInfo{name='" + this.name + "', status=" + this.status + ", lat=" + (this.lat + 0.01d) + ", lon=" + (this.lon + 0.01d) + '}';
    }
}
