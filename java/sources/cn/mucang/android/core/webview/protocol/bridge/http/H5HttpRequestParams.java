package cn.mucang.android.core.webview.protocol.bridge.http;

import android.net.Uri;
import cn.mucang.android.core.http.MucangNameValuePair;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.iflytek.cloud.SpeechConstant;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\t\b\u0001\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001a\u0010\u0019\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR \u0010$\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0013\"\u0004\b&\u0010\u0015R\u001a\u0010'\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\f\"\u0004\b/\u0010\u000e¨\u00061"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;", "", "()V", "enableEncrypt", "", "getEnableEncrypt", "()Z", "setEnableEncrypt", "(Z)V", "fullUrl", "", "getFullUrl", "()Ljava/lang/String;", "setFullUrl", "(Ljava/lang/String;)V", "headers", "", "Lcn/mucang/android/core/http/MucangNameValuePair;", "getHeaders", "()Ljava/util/List;", "setHeaders", "(Ljava/util/List;)V", "host", "getHost", "setHost", "isDecodeBase64FromServer", "setDecodeBase64FromServer", "isEnableCacheForGetRequest", "setEnableCacheForGetRequest", "isKeepOriginResponse", "setKeepOriginResponse", "isRequireBasicParams", "setRequireBasicParams", "path", "getPath", "setPath", "requestParams", "getRequestParams", "setRequestParams", "requestTimeOut", "", "getRequestTimeOut", "()J", "setRequestTimeOut", "(J)V", "signKey", "getSignKey", "setSignKey", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class H5HttpRequestParams {
    public static final a l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2847a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<MucangNameValuePair> f2848d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<MucangNameValuePair> f2849e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2851g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2852h;
    private boolean i;
    private long j;
    private boolean k;

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.g$a */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0007J\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0002¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams$Companion;", "", "()V", "from", "Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;", "requestData", "", "", "parseHeaderFromH5", "", "Lcn/mucang/android/core/http/MucangNameValuePair;", "header", "parseParams", SpeechConstant.PARAMS, "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final List<MucangNameValuePair> b(String str) {
            Set<String> setKeySet;
            String string;
            ArrayList arrayList = new ArrayList();
            try {
                JSONObject object = JSON.parseObject(str);
                if (!((object == null || (setKeySet = object.keySet()) == null || !(setKeySet.isEmpty() ^ true)) ? false : true)) {
                    return arrayList;
                }
                for (String str2 : object.keySet()) {
                    if (str2 != null) {
                        if (!(str2.length() == 0) && (string = object.getString(str2)) != null) {
                            if (!(string.length() == 0)) {
                                arrayList.add(new MucangNameValuePair(str2, string));
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return arrayList;
        }

        private final List<MucangNameValuePair> c(String str) {
            Set<String> setKeySet;
            String string;
            ArrayList arrayList = new ArrayList();
            try {
                JSONObject object = JSON.parseObject(str);
                if (!((object == null || (setKeySet = object.keySet()) == null || !(setKeySet.isEmpty() ^ true)) ? false : true)) {
                    return arrayList;
                }
                for (String str2 : object.keySet()) {
                    if (str2 != null) {
                        if (!(str2.length() == 0) && (string = object.getString(str2)) != null) {
                            if (!(string.length() == 0)) {
                                arrayList.add(new MucangNameValuePair(str2, URLDecoder.decode(string, Charsets.f15811a.name())));
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return arrayList;
        }

        public final H5HttpRequestParams a(Map<String, String> requestData) throws RuntimeException {
            Float fI;
            r.e(requestData, "requestData");
            String str = requestData.get("url");
            String str2 = requestData.get("header");
            String str3 = requestData.get(SpeechConstant.PARAMS);
            String str4 = requestData.get("sign");
            boolean zK = cn.mucang.android.core.webview.protocol.e.a.k(requestData.get("basicParams"), true);
            boolean zK2 = cn.mucang.android.core.webview.protocol.e.a.k(requestData.get("base64"), false);
            boolean zK3 = cn.mucang.android.core.webview.protocol.e.a.k(requestData.get("originalData"), false);
            boolean zK4 = cn.mucang.android.core.webview.protocol.e.a.k(requestData.get("cache"), false);
            boolean zK5 = cn.mucang.android.core.webview.protocol.e.a.k(requestData.get("ec"), true);
            String str5 = requestData.get("timeout");
            float fFloatValue = 5.0f;
            if (str5 != null && (fI = kotlin.text.r.i(str5)) != null) {
                fFloatValue = fI.floatValue();
            }
            long j = (long) (fFloatValue * 1000);
            Uri uri = Uri.parse(str);
            String str6 = ((Object) uri.getScheme()) + "://" + ((Object) uri.getHost());
            String path = uri.getPath();
            if (uri.getQuery() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append((Object) path);
                sb.append('?');
                sb.append((Object) uri.getQuery());
                path = sb.toString();
            }
            H5HttpRequestParams h5HttpRequestParams = new H5HttpRequestParams();
            h5HttpRequestParams.g().addAll(c(str3));
            h5HttpRequestParams.p(str);
            h5HttpRequestParams.q(str6);
            h5HttpRequestParams.s(path);
            h5HttpRequestParams.d().addAll(b(str2));
            h5HttpRequestParams.v(str4);
            h5HttpRequestParams.u(zK);
            h5HttpRequestParams.m(zK2);
            h5HttpRequestParams.r(zK3);
            h5HttpRequestParams.n(zK4);
            h5HttpRequestParams.t(j);
            h5HttpRequestParams.o(zK5);
            return h5HttpRequestParams;
        }
    }

    public static final H5HttpRequestParams a(Map<String, String> map) throws RuntimeException {
        return l.a(map);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getK() {
        return this.k;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF2847a() {
        return this.f2847a;
    }

    public final List<MucangNameValuePair> d() {
        return this.f2848d;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getC() {
        return this.c;
    }

    public final List<MucangNameValuePair> g() {
        return this.f2849e;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final long getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF2850f() {
        return this.f2850f;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getI() {
        return this.i;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final boolean getF2852h() {
        return this.f2852h;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final boolean getF2851g() {
        return this.f2851g;
    }

    public final void m(boolean z) {
    }

    public final void n(boolean z) {
        this.i = z;
    }

    public final void o(boolean z) {
        this.k = z;
    }

    public final void p(String str) {
        this.f2847a = str;
    }

    public final void q(String str) {
        this.b = str;
    }

    public final void r(boolean z) {
        this.f2852h = z;
    }

    public final void s(String str) {
        this.c = str;
    }

    public final void t(long j) {
        this.j = j;
    }

    public final void u(boolean z) {
        this.f2851g = z;
    }

    public final void v(String str) {
        this.f2850f = str;
    }
}
