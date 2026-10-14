package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleCancelModel;

/* JADX INFO: loaded from: classes5.dex */
public class c extends w<AutoShuttleCancelModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(AutoShuttleCancelModel autoShuttleCancelModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到“取消自动接驳车”指令");
        LiveBus.c(autoShuttleCancelModel);
        return true;
    }
}
