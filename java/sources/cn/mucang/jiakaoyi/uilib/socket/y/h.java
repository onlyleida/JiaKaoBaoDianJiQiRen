package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.GearSetModel;

/* JADX INFO: loaded from: classes5.dex */
public class h extends w<GearSetModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(GearSetModel gearSetModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到档位标定指令");
        LiveBus.d(GearSetModel.class).l(gearSetModel);
        return true;
    }
}
