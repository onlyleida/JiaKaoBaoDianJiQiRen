package cn.mucang.jiakaoyi.uilib.login;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.lifecycle.z;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.p002e.SsoBaseApi;
import cn.mucang.android.jiakaoyi.framework.p002e.XyToken;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.jiakaoyi.uilib.login.api.BaseBusinessLoginApi;
import cn.mucang.jiakaoyi.uilib.login.api.XyLoginApi;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.ui.dialog.DefaultPrivacyView;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import com.alibaba.fastjson.JSON;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J*\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J2\u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0007J2\u0010\u0018\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u001b\u001a\u00020\u0006H\u0007J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ(\u0010\u001d\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J0\u0010\u001d\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\bH\u0007J\u001a\u0010\u001f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u0017H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/LoginManager;", "", "()V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/login/LoginListener;", "changeReadState", "", "all", "", "dispatchUserLogin", "activity", "Landroid/app/Activity;", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "data", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "ct", "Ljava/util/concurrent/CountDownLatch;", "doLogin", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "errCall", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "handleReadState", "init", "login", "logout", "onSsoLogin", "onUserLogin", "sync", "ssoLogin", "userToken", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LoginManager f9357a = new LoginManager();
    private static LoginListener b;

    private LoginManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A() {
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(new XyLoginApi().n()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(Activity activity) {
        r.e(activity, "$activity");
        LoginListener loginListener = b;
        if (loginListener == null) {
            return;
        }
        loginListener.g(activity);
    }

    public static final void D(Activity activity, XyUserModel user, LoginType loginType, LoginData data, boolean z) throws InterruptedException {
        r.e(activity, "activity");
        r.e(user, "user");
        r.e(loginType, "loginType");
        r.e(data, "data");
        cn.mucang.android.jiakaoyi.framework.log.f.o("用户登录完成：" + ((Object) user.getName()) + ',' + user.getStudentId());
        final CountDownLatch countDownLatch = z ? new CountDownLatch(1) : null;
        final Runnable runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.a
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager.E(countDownLatch);
            }
        };
        LoginListener loginListener = b;
        if (loginListener != null) {
            loginListener.c(user, loginType, new LoginManager$onUserLogin$1(runnable, user, activity, data, countDownLatch, loginType), new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.login.LoginManager$onUserLogin$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    u.e(runnable);
                    CountDownLatch countDownLatch2 = countDownLatch;
                    if (countDownLatch2 != null) {
                        countDownLatch2.countDown();
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("登录被拦截，流程中断");
                }
            });
        }
        if (countDownLatch != null) {
            u.d(runnable, 30000L);
            countDownLatch.await();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(CountDownLatch countDownLatch) {
        if (countDownLatch == null) {
            return;
        }
        countDownLatch.countDown();
    }

    public static final void F(final Activity activity, String str) {
        r.e(activity, "activity");
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("设置 sso token：", str));
        SsoBaseApi.f3442e.a().o(str);
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.jiakaoyi.uilib.login.j
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                LoginManager.G(activity);
            }
        }, "正在登录", "登录失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(Activity activity) {
        r.e(activity, "$activity");
        try {
            XyUserModel xyUserModelM = new BaseBusinessLoginApi().m();
            XyToken.c().l(xyUserModelM.getXyToken());
            XyToken.a().l(xyUserModelM.getAuthToken());
            XyToken.f3444a.d(xyUserModelM.getName());
            w.r.studentId = String.valueOf(xyUserModelM.getStudentId());
            z<String> zVar = w.q;
            String mucangId = xyUserModelM.getMucangId();
            if (mucangId == null) {
                mucangId = "";
            }
            zVar.l(mucangId);
            f9357a.B(activity);
        } catch (Exception e2) {
            SsoBaseApi.f3442e.a().l(null);
            if ((e2 instanceof ApiException) && n0.g(e2.getMessage())) {
                u.h(e2.getMessage());
            } else {
                u.h("登录失败");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(final boolean z) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.d
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager.f(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(boolean z) {
        List<PrivacyAgreementDialog.a> listD;
        try {
            Result.Companion companion = Result.INSTANCE;
            LoginListener loginListener = b;
            v vVar = null;
            if (loginListener != null && (listD = loginListener.d(null)) != null) {
                for (PrivacyAgreementDialog.a aVar : listD) {
                    if (z) {
                        aVar.c();
                    } else if (aVar instanceof DefaultPrivacyView) {
                        aVar.c();
                    }
                }
                vVar = v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(final Activity activity, final XyUserModel xyUserModel, final LoginData loginData, CountDownLatch countDownLatch) {
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.b
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager.h(activity, xyUserModel, loginData);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Activity activity, XyUserModel user, LoginData data) {
        r.e(activity, "$activity");
        r.e(user, "$user");
        r.e(data, "$data");
        LoginListener loginListener = b;
        if (loginListener == null) {
            return;
        }
        loginListener.a(activity, user, data);
    }

    public static final void i(final Activity activity, final LoginType loginType, final LoginData data, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        r.e(activity, "activity");
        r.e(loginType, "loginType");
        r.e(data, "data");
        LoginListener loginListener = b;
        if (loginListener != null) {
            loginListener.f(data);
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).i(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.jiakaoyi.uilib.login.f
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InterruptedException, InternalException, HttpException {
                LoginManager.k(loginType, data, activity);
            }
        }, k0.a(R.string.uilib_logging_in), k0.a(R.string.uilib_logging_fail), bVar);
    }

    public static /* synthetic */ void j(Activity activity, LoginType loginType, LoginData loginData, cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, Object obj) {
        if ((i & 8) != 0) {
            bVar = null;
        }
        i(activity, loginType, loginData, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(LoginType loginType, LoginData data, Activity activity) throws ApiException, InterruptedException, InternalException, HttpException {
        r.e(loginType, "$loginType");
        r.e(data, "$data");
        r.e(activity, "$activity");
        XyUserModel xyUserModelY = y(loginType, data);
        if (xyUserModelY != null) {
            D(activity, xyUserModelY, loginType, data, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(final Activity activity, final LoginType loginType, final XyUserModel xyUserModel, final LoginData loginData, final CountDownLatch countDownLatch) {
        List<PrivacyAgreementDialog.a> listD;
        LoginListener loginListener = b;
        boolean z = true;
        final ArrayList arrayList = null;
        if (loginListener != null && (listD = loginListener.d(loginType)) != null) {
            arrayList = new ArrayList();
            for (Object obj : listD) {
                if (!((PrivacyAgreementDialog.a) obj).e()) {
                    arrayList.add(obj);
                }
            }
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            z = false;
        }
        if (!z) {
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.c
                @Override // java.lang.Runnable
                public final void run() {
                    LoginManager.m(activity, arrayList, loginType, xyUserModel, loginData, countDownLatch);
                }
            });
            return;
        }
        if (loginType == LoginType.QR_CODE) {
            e(false);
        }
        g(activity, xyUserModel, loginData, countDownLatch);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog] */
    public static final void m(final Activity activity, List list, final LoginType loginType, final XyUserModel user, final LoginData data, final CountDownLatch countDownLatch) {
        r.e(activity, "$activity");
        r.e(loginType, "$loginType");
        r.e(user, "$user");
        r.e(data, "$data");
        if (activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? privacyAgreementDialog = new PrivacyAgreementDialog(activity, list, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.login.LoginManager$handleReadState$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (loginType == LoginType.QR_CODE) {
                    LoginManager.f9357a.e(false);
                }
                LoginManager.f9357a.g(activity, user, data, countDownLatch);
            }
        }, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.login.LoginManager$handleReadState$1$closeListener$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (LoginManager.b == null) {
                    PrivacyAgreementDialog privacyAgreementDialog2 = ref$ObjectRef.element;
                    if (privacyAgreementDialog2 == null) {
                        return;
                    }
                    privacyAgreementDialog2.r();
                    return;
                }
                LoginListener loginListener = LoginManager.b;
                if (loginListener == null) {
                    return;
                }
                loginListener.b();
            }
        });
        ref$ObjectRef.element = privacyAgreementDialog;
        ((PrivacyAgreementDialog) privacyAgreementDialog).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.jiakaoyi.uilib.login.h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                LoginManager.n(ref$ObjectRef, dialogInterface);
            }
        });
        PrivacyAgreementDialog privacyAgreementDialog2 = (PrivacyAgreementDialog) ref$ObjectRef.element;
        if (privacyAgreementDialog2 == null) {
            return;
        }
        privacyAgreementDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Ref$ObjectRef privacyAgreementDialog, DialogInterface dialogInterface) {
        r.e(privacyAgreementDialog, "$privacyAgreementDialog");
        privacyAgreementDialog.element = null;
    }

    public static final void o(LoginListener listener) {
        r.e(listener, "listener");
        b = listener;
    }

    public static final XyUserModel y(LoginType loginType, LoginData data) throws ApiException, InternalException, HttpException {
        r.e(loginType, "loginType");
        r.e(data, "data");
        cn.mucang.android.jiakaoyi.framework.log.f.o("用户登录：" + loginType + (char) 65292 + ((Object) JSON.toJSONString(data)));
        XyLoginApi xyLoginApi = new XyLoginApi();
        LoginListener loginListener = b;
        XyUserModel xyUserModelM = xyLoginApi.m(loginType, loginListener == null ? null : loginListener.e(), data);
        LoginListener loginListener2 = b;
        boolean z = false;
        if (loginListener2 != null && loginListener2.h(xyUserModelM, loginType)) {
            z = true;
        }
        if (z) {
            return xyUserModelM;
        }
        return null;
    }

    public static final void z() {
        AccountManager.h().m();
        XyToken.c().l(null);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.g
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager.A();
            }
        });
    }

    public final void B(final Activity activity) {
        r.e(activity, "activity");
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.e
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager.C(activity);
            }
        });
    }
}
