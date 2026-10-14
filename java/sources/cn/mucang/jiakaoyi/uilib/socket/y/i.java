package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.rtmc.GpsStationSwitcher;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;

/* JADX INFO: loaded from: classes5.dex */
public class i extends w<GpsStationModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(GpsStationModel gpsStationModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到基站切换指令:" + gpsStationModel.baseName + "," + ((int) gpsStationModel.station) + "," + gpsStationModel.sn);
        LiveBus.c(gpsStationModel);
        GpsStationSwitcher.f9475a.l(gpsStationModel);
        return true;
    }
}
