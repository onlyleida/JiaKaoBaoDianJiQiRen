package cn.mucang.android.jiakaoyi.signal.communicate;

import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/ComProviderWrap;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "provider", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;", "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;)V", "getName", "()Ljava/lang/String;", "getProvider", "()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ComProviderWrap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5402a;
    private final cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b b;

    public ComProviderWrap(String name, cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b provider) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(provider, "provider");
        this.f5402a = name;
        this.b = provider;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF5402a() {
        return this.f5402a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b getB() {
        return this.b;
    }
}
