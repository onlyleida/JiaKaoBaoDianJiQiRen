package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsBaseModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class o extends t<GpsBaseModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GpsBaseModel a(int i, ByteBuffer byteBuffer) {
        String str = new String(byteBuffer.array());
        cn.mucang.jiakaoyi.uilib.rtmc.e.b = str;
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到0x43消息，设置基站名称:" + cn.mucang.jiakaoyi.uilib.rtmc.e.b);
        GpsBaseModel gpsBaseModel = new GpsBaseModel(str);
        LiveBus.d(GpsBaseModel.class).l(gpsBaseModel);
        return gpsBaseModel;
    }
}
