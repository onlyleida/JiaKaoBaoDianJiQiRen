package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationInfoModel;

/* JADX INFO: loaded from: classes5.dex */
public class p extends w<GpsStationInfoModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(GpsStationInfoModel gpsStationInfoModel) {
        cn.mucang.jiakaoyi.uilib.rtmc.e.b(gpsStationInfoModel);
        LiveBus.d(GpsStationInfoModel.class).l(gpsStationInfoModel);
        return true;
    }
}
