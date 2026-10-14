package f.a.a.a.activity;

import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.RpcAction;
import cn.mucang.android.core.utils.RpcActionCallback;
import cn.mucang.android.core.utils.RpcSupport;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: f.a.a.a.i.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J?\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2%\b\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\b\u0018\u00010\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/core/activity/ActivityStarterMultiProcessSupport;", "", "()V", "RPC_ACTIVITY_STARTER", "", "RPC_KEY_FALLBACK", "RPC_KEY_URL", "init", "", "maybeStart", "protocol", "allowFallbackToH5", "", SpeechUtility.TAG_RESOURCE_RESULT, "Lkotlin/Function1;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "suc", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActivityStarterMultiProcessSupport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActivityStarterMultiProcessSupport f14450a = new ActivityStarterMultiProcessSupport();

    /* JADX INFO: renamed from: f.a.a.a.i.f$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/activity/ActivityStarterMultiProcessSupport$init$1", "Lcn/mucang/android/core/utils/RpcAction;", "onRpcCall", "", SpeechConstant.PARAMS, "Landroid/os/Bundle;", "callback", "Lcn/mucang/android/core/utils/RpcActionCallback;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements RpcAction {
        a() {
        }

        @Override // cn.mucang.android.core.utils.RpcAction
        public boolean a(Bundle bundle, RpcActionCallback callback) {
            r.e(callback, "callback");
            String string = bundle == null ? null : bundle.getString("cn.mucang.android.rpc.key.url");
            if (string == null || t.r(string)) {
                return false;
            }
            boolean zD = h.d(MucangConfig.getContext(), string, bundle.getBoolean("cn.mucang.android.rpc.key.fallback", false));
            if (zD) {
                Bundle EMPTY = Bundle.EMPTY;
                r.d(EMPTY, "EMPTY");
                callback.a(EMPTY, zD);
            }
            return zD;
        }
    }

    /* JADX INFO: renamed from: f.a.a.a.i.f$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/activity/ActivityStarterMultiProcessSupport$maybeStart$2", "Lcn/mucang/android/core/utils/RpcActionCallback;", "onRpcResult", "", "bundle", "Landroid/os/Bundle;", "suc", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements RpcActionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, v> f14451a;

        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super Boolean, v> function1) {
            this.f14451a = function1;
        }

        @Override // cn.mucang.android.core.utils.RpcActionCallback
        public void a(Bundle bundle, boolean z) {
            r.e(bundle, "bundle");
            Function1<Boolean, v> function1 = this.f14451a;
            if (function1 == null) {
                return;
            }
            function1.invoke(Boolean.valueOf(z));
        }
    }

    private ActivityStarterMultiProcessSupport() {
    }

    public static final void a() {
        RpcSupport.i("cn.mucang.android.rpc.activity.starter", new a());
    }

    public static final void b(String protocol, boolean z) {
        r.e(protocol, "protocol");
        d(protocol, z, null, 4, null);
    }

    public static final void c(String protocol, boolean z, Function1<? super Boolean, v> function1) {
        r.e(protocol, "protocol");
        Bundle bundle = new Bundle();
        bundle.putString("cn.mucang.android.rpc.key.url", protocol);
        bundle.putBoolean("cn.mucang.android.rpc.key.fallback", z);
        v vVar = v.f15822a;
        RpcSupport.d("cn.mucang.android.rpc.activity.starter", bundle, new b(function1), 0L, 8, null);
    }

    public static /* synthetic */ void d(String str, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        c(str, z, function1);
    }
}
