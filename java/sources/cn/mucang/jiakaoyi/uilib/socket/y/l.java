package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.jiakaoyi.uilib.socket.model.GpsBaseModel;

/* JADX INFO: loaded from: classes5.dex */
public class l extends w<GpsBaseModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(GpsBaseModel gpsBaseModel) {
        cn.mucang.android.core.utils.t.d("MCGpsBaseMessageHandler", "收到下发基站名称消息：" + gpsBaseModel.getGpsBaseName());
        return true;
    }
}
