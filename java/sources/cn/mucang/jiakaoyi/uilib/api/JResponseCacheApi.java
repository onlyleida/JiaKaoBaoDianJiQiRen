package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.cache.b;
import cn.mucang.android.core.api.request.GlobalApiInterceptorManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.g;
import cn.mucang.android.jiakaoyi.framework.p002e.intercept.GlobalResponseInterceptor;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\b\u0016\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0014J\u001a\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006H\u0014J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/JResponseCacheApi;", "Lcn/mucang/android/core/api/cache/CacheBaseApi;", "()V", "getApiHost", "", "getExtraParams", "", "getSignKey", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class JResponseCacheApi extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final GlobalResponseInterceptor f9335a;

    static {
        GlobalResponseInterceptor globalResponseInterceptor = new GlobalResponseInterceptor();
        f9335a = globalResponseInterceptor;
        GlobalApiInterceptorManager.f2401a.b(globalResponseInterceptor);
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
