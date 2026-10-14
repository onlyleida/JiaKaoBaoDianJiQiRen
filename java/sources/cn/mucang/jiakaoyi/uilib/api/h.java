package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.cache.b;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.g;
import cn.mucang.android.jiakaoyi.framework.p002e.intercept.GlobalResponseInterceptor;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class h extends b {
    public h() {
        addResponseInterceptor(new GlobalResponseInterceptor());
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://lukaoyi.ttt.mucang.cn" : "https://lukaoyi.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return g.b();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#iJejkYeMfUWcmnNzhZaQh4aT";
    }
}
