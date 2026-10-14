package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeBaseParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeGetParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgePostFormParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgePostMultiPartParams;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApiFactory;", "", "()V", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgeApiFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2856a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.k$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApiFactory$Companion;", "", "()V", "get", "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final HttpJsBridgeApi a(HttpJsBridgeBaseParams params) {
            r.e(params, "params");
            if (params instanceof HttpJsBridgePostMultiPartParams) {
                return new HttpJsBridgePostMultiPartApi((HttpJsBridgePostMultiPartParams) params);
            }
            if (params instanceof HttpJsBridgePostFormParams) {
                return new HttpJsBridgePostFormApi((HttpJsBridgePostFormParams) params);
            }
            if (!(params instanceof HttpJsBridgeGetParams)) {
                throw new UnsupportedOperationException(r.m("api params not supported yet:", params));
            }
            HttpJsBridgeGetParams httpJsBridgeGetParams = (HttpJsBridgeGetParams) params;
            return !httpJsBridgeGetParams.getF2863h() ? new HttpJsBridgeGetApi(httpJsBridgeGetParams) : new HttpJsBridgeGetCacheApi(httpJsBridgeGetParams);
        }
    }
}
