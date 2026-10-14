package cn.mucang.android.core.webview.protocol.bridge.http.params;

import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.r.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\u000fR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostFormParams;", "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;", "host", "", "path", "headers", "", "Lcn/mucang/android/core/http/MucangNameValuePair;", "signKey", "isRequireBasicParams", "", "requestTimeOut", "", "enableEncrypt", "postForm", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZLjava/util/List;)V", "getPostForm", "()Ljava/util/List;", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgePostFormParams extends HttpJsBridgeBaseParams {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<MucangNameValuePair> f2864h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HttpJsBridgePostFormParams(String host, String path, List<? extends MucangNameValuePair> headers, String str, boolean z, long j, boolean z2, List<? extends MucangNameValuePair> postForm) {
        super(host, path, headers, str, z, j, z2);
        r.e(host, "host");
        r.e(path, "path");
        r.e(headers, "headers");
        r.e(postForm, "postForm");
        this.f2864h = postForm;
    }

    public final List<MucangNameValuePair> h() {
        return this.f2864h;
    }
}
