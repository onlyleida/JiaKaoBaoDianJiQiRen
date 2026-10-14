package cn.mucang.android.core.webview.protocol.bridge.http.params;

import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.r.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0018\b\u0017\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eR\u001a\u0010\r\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010\u001a¨\u0006$"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;", "", "host", "", "path", "headers", "", "Lcn/mucang/android/core/http/MucangNameValuePair;", "signKey", "isRequireBasicParams", "", "requestTimeOutMs", "", "enableEncrypt", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)V", "getEnableEncrypt", "()Z", "setEnableEncrypt", "(Z)V", "getHeaders", "()Ljava/util/List;", "setHeaders", "(Ljava/util/List;)V", "getHost", "()Ljava/lang/String;", "setHost", "(Ljava/lang/String;)V", "setRequireBasicParams", "getPath", "setPath", "getRequestTimeOutMs", "()J", "setRequestTimeOutMs", "(J)V", "getSignKey", "setSignKey", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class HttpJsBridgeBaseParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2858a;
    private String b;
    private List<? extends MucangNameValuePair> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2862g;

    public HttpJsBridgeBaseParams(String host, String path, List<? extends MucangNameValuePair> headers, String str, boolean z, long j, boolean z2) {
        r.e(host, "host");
        r.e(path, "path");
        r.e(headers, "headers");
        this.f2858a = host;
        this.b = path;
        this.c = headers;
        this.f2859d = str;
        this.f2860e = z;
        this.f2861f = j;
        this.f2862g = z2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF2862g() {
        return this.f2862g;
    }

    public final List<MucangNameValuePair> b() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF2858a() {
        return this.f2858a;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final long getF2861f() {
        return this.f2861f;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getF2859d() {
        return this.f2859d;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getF2860e() {
        return this.f2860e;
    }
}
