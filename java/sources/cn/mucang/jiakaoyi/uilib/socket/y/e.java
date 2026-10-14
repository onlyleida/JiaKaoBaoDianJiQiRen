package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleStartModel;

/* JADX INFO: loaded from: classes5.dex */
public class e extends w<AutoShuttleStartModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(AutoShuttleStartModel autoShuttleStartModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到自动接驳车指令");
        LiveBus.c(autoShuttleStartModel);
        return true;
    }
}
