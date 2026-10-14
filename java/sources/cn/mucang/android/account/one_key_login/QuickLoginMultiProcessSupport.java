package cn.mucang.android.account.one_key_login;

import android.content.Context;
import android.os.Bundle;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.RpcAction;
import cn.mucang.android.core.utils.RpcActionCallback;
import cn.mucang.android.core.utils.RpcSupport;
import cn.mucang.android.core.utils.t;
import com.iflytek.cloud.SpeechConstant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.account.j.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J0\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport;", "", "()V", "KEY_LOGIN_MODEL", "", "RPC_QUICK_LOGIN", "TAG", "init", "", "quickLogin", "context", "Landroid/content/Context;", "loginSmsModel", "Lcn/mucang/android/account/data/LoginSmsModel;", "quickLoginFailAction", "Lcn/mucang/android/account/one_key_login/QuickLoginFailedAction;", "quickLoginSuccessAction", "Lcn/mucang/android/account/one_key_login/QuickLoginSuccessAction;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QuickLoginMultiProcessSupport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final QuickLoginMultiProcessSupport f2196a = new QuickLoginMultiProcessSupport();

    /* JADX INFO: renamed from: cn.mucang.android.account.j.k$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport$init$1", "Lcn/mucang/android/core/utils/RpcAction;", "onRpcCall", "", SpeechConstant.PARAMS, "Landroid/os/Bundle;", "callback", "Lcn/mucang/android/core/utils/RpcActionCallback;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements RpcAction {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(RpcActionCallback callback, Context context, LoginSmsModel loginSmsModel) {
            r.e(callback, "$callback");
            Bundle EMPTY = Bundle.EMPTY;
            r.d(EMPTY, "EMPTY");
            callback.a(EMPTY, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(RpcActionCallback callback, Context context, LoginSmsModel loginSmsModel) {
            r.e(callback, "$callback");
            Bundle EMPTY = Bundle.EMPTY;
            r.d(EMPTY, "EMPTY");
            callback.a(EMPTY, true);
        }

        @Override // cn.mucang.android.core.utils.RpcAction
        public boolean a(Bundle bundle, final RpcActionCallback callback) {
            r.e(callback, "callback");
            Serializable serializable = bundle == null ? null : bundle.getSerializable("__quick_login_multi_key_login_model__");
            LoginSmsModel loginSmsModel = serializable instanceof LoginSmsModel ? (LoginSmsModel) serializable : null;
            if (loginSmsModel == null) {
                return false;
            }
            AccountManager.h().I(MucangConfig.getContext(), loginSmsModel, new j() { // from class: cn.mucang.android.account.j.e
                @Override // cn.mucang.android.account.one_key_login.j
                public final void a(Context context, LoginSmsModel loginSmsModel2) {
                    QuickLoginMultiProcessSupport.a.d(callback, context, loginSmsModel2);
                }
            }, new l() { // from class: cn.mucang.android.account.j.d
                @Override // cn.mucang.android.account.one_key_login.l
                public final void a(Context context, LoginSmsModel loginSmsModel2) {
                    QuickLoginMultiProcessSupport.a.e(callback, context, loginSmsModel2);
                }
            });
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.j.k$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport$quickLogin$1", "Lcn/mucang/android/core/utils/RpcActionCallback;", "onRpcResult", "", "bundle", "Landroid/os/Bundle;", "suc", "", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements RpcActionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j f2197a;
        final /* synthetic */ Context b;
        final /* synthetic */ LoginSmsModel c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ l f2198d;

        b(j jVar, Context context, LoginSmsModel loginSmsModel, l lVar) {
            this.f2197a = jVar;
            this.b = context;
            this.c = loginSmsModel;
            this.f2198d = lVar;
        }

        @Override // cn.mucang.android.core.utils.RpcActionCallback
        public void a(Bundle bundle, boolean z) {
            r.e(bundle, "bundle");
            if (!z) {
                this.f2197a.a(this.b, this.c);
                return;
            }
            l lVar = this.f2198d;
            if (lVar == null) {
                return;
            }
            lVar.a(this.b, this.c);
        }
    }

    private QuickLoginMultiProcessSupport() {
    }

    public static final void a() {
        RpcSupport.i("cn.mucang.android.account.rpc_quick_login", new a());
        t.d("QuickLoginMultiProcessSupport", "quick login init success");
    }

    public static final void b(Context context, LoginSmsModel loginSmsModel, j quickLoginFailAction, l lVar) {
        r.e(quickLoginFailAction, "quickLoginFailAction");
        Bundle bundle = new Bundle();
        if (loginSmsModel != null) {
            bundle.putSerializable("__quick_login_multi_key_login_model__", loginSmsModel);
        }
        RpcSupport.d("cn.mucang.android.account.rpc_quick_login", bundle, new b(quickLoginFailAction, context, loginSmsModel, lVar), 0L, 8, null);
    }
}
