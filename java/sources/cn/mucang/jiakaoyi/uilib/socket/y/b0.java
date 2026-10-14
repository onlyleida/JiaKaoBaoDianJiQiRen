package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.PushSwitchModel;

/* JADX INFO: loaded from: classes5.dex */
public class b0 extends w<PushSwitchModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(PushSwitchModel pushSwitchModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("监控中心推流开关：" + pushSwitchModel.isEnable);
        LiveBus.c(pushSwitchModel);
        return true;
    }
}
