package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationInfoModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class p extends t<GpsStationInfoModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GpsStationInfoModel a(int i, ByteBuffer byteBuffer) {
        GpsStationInfoModel gpsStationInfoModel = new GpsStationInfoModel();
        byte[] bArr = new byte[byteBuffer.getShort()];
        byteBuffer.get(bArr);
        gpsStationInfoModel.name = new String(bArr);
        gpsStationInfoModel.status = byteBuffer.get();
        gpsStationInfoModel.lat = byteBuffer.getDouble();
        gpsStationInfoModel.lon = byteBuffer.getDouble();
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到0x46消息，基站信息:" + gpsStationInfoModel.name + "," + gpsStationInfoModel.status + "," + gpsStationInfoModel.lat + "," + gpsStationInfoModel.lon);
        gpsStationInfoModel.lat = gpsStationInfoModel.lat - 0.01d;
        gpsStationInfoModel.lon = gpsStationInfoModel.lon - 0.01d;
        return gpsStationInfoModel;
    }
}
