package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleGetDisModel;

/* JADX INFO: loaded from: classes5.dex */
public class d extends w<AutoShuttleGetDisModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(AutoShuttleGetDisModel autoShuttleGetDisModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到“获取自动接驳车剩余距离”指令");
        LiveBus.c(autoShuttleGetDisModel);
        return true;
    }
}
