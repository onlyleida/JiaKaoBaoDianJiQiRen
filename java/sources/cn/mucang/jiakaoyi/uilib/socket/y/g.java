package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.ConfigModel;

/* JADX INFO: loaded from: classes5.dex */
public class g extends w<ConfigModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(ConfigModel configModel) {
        LiveBus.c(configModel);
        return true;
    }
}
