package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.OtherCarPosListSocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class z extends w<OtherCarPosListSocketModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(OtherCarPosListSocketModel otherCarPosListSocketModel) {
        LiveBus.c(otherCarPosListSocketModel);
        return true;
    }
}
