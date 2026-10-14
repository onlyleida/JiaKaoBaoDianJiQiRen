package cn.mucang.android.jiakaoyi.framework.p002e;

import androidx.lifecycle.z;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.e.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R*\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\n¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/XyToken;", "", "()V", "authToken", "Landroidx/lifecycle/MutableLiveData;", "", "getAuthToken$annotations", "getAuthToken", "()Landroidx/lifecycle/MutableLiveData;", "setAuthToken", "(Landroidx/lifecycle/MutableLiveData;)V", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "xyToken", "getXyToken$annotations", "getXyToken", "setXyToken", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class XyToken {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final XyToken f3444a = new XyToken();
    private static z<String> b = new z<>();
    private static z<String> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f3445d;

    private XyToken() {
    }

    public static final z<String> a() {
        return c;
    }

    public static final z<String> c() {
        return b;
    }

    public final String b() {
        return f3445d;
    }

    public final void d(String str) {
        f3445d = str;
    }
}
