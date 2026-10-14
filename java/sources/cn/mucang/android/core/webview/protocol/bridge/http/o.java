package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.api.cache.CacheMode;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeGetParams;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"chooseCacheStrategy", "Lcn/mucang/android/core/api/cache/CacheConfig;", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;", "webview_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class o {
    /* JADX INFO: Access modifiers changed from: private */
    public static final cn.mucang.android.core.api.cache.c b(HttpJsBridgeGetParams httpJsBridgeGetParams) {
        cn.mucang.android.core.api.cache.c.a aVar = new cn.mucang.android.core.api.cache.c.a(cn.mucang.android.core.api.cache.c.h());
        aVar.c(CacheMode.AUTO);
        aVar.g(httpJsBridgeGetParams.getF2861f());
        cn.mucang.android.core.api.cache.c cVarA = aVar.a();
        r.d(cVarA, "Builder(CacheConfig.crea…meOutMs)\n        .build()");
        return cVarA;
    }
}
