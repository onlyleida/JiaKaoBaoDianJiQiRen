package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.p002e.SsoBaseApi;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityLoginBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutExitAppBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.login.logic.LoginTabLogic;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityPageModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.sso.SsoLoginActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\b\u0010\u0017\u001a\u00020\u000fH\u0003J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u000fH\u0014J\b\u0010\u001b\u001a\u00020\u0013H\u0002J\b\u0010\u001c\u001a\u00020\u000fH\u0016J\b\u0010\u001d\u001a\u00020\u000fH\u0014J\b\u0010\u001e\u001a\u00020\u000fH\u0014J\b\u0010\u001f\u001a\u00020\u000fH\u0014J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "alertDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;", "lastSpeed", "", "loginTabLogic", "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;", "page", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;", "playCount", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "exit", "exitCountDown", "getStatName", "", "init", "isSoftShowing", "onBackPressed", "onDestroy", "onPause", "onResume", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginActivity extends BaseViewBindingActivity<ActivityLoginBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f7362g = new a(null);
    private final UnityPageModel b;
    private LoginTabLogic c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CommonAlertDialog f7363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7365f;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$Companion;", "", "()V", "LoginActionNone", "", "LoginActionShowKick", "LoginActionShowSwitch", "LoginActionShowTimeOver", "keyLoginAction", "", "launch", "", "context", "Landroid/content/Context;", "actionType", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            aVar.a(context, i);
        }

        public final void a(Context context, int i) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intentPutExtra = new Intent(context, (Class<?>) LoginActivity.class).putExtra("key.LoginAction", i);
            kotlin.jvm.internal.r.d(intentPutExtra, "Intent(context, LoginAct…yLoginAction, actionType)");
            ActivityUtils.c(context, intentPutExtra);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity$init$6, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    static final class AnonymousClass6 extends Lambda implements Function1<View, kotlin.v> {
        AnonymousClass6() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m49invoke$lambda0(LoginActivity this$0, String str) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            LoginManager.F(this$0, str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
            invoke2(view);
            return kotlin.v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(View it) {
            kotlin.jvm.internal.r.e(it, "it");
            FaceLoginManager.f3000a.O();
            SsoLoginActivity.a aVar = SsoLoginActivity.c;
            final LoginActivity loginActivity = LoginActivity.this;
            aVar.d(loginActivity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.s
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    LoginActivity.AnonymousClass6.m49invoke$lambda0(loginActivity, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity$init$8, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity$init$8", f = "LoginActivity.kt", l = {189}, m = "invokeSuspend")
    static final class AnonymousClass8 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass8(Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass8(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass8) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReceiveSenorInfo receiveSenorInfo;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            if (MucangConfig.v() && !cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                CarModel carModelD = cn.mucang.android.jiakaoyi.signal.c.d.t().d();
                CarBrakeState carBrakeState = null;
                if (carModelD != null && (receiveSenorInfo = carModelD.G) != null) {
                    carBrakeState = receiveSenorInfo.safeBoardBrakeState;
                }
                if (carBrakeState != CarBrakeState.STATE_BRAKE) {
                    Safer.d(false, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity.init.8.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return kotlin.v.f15822a;
                        }

                        public final void invoke(boolean z) {
                            cn.mucang.android.core.utils.u.h("安全系统已关闭");
                        }
                    });
                }
            }
            return kotlin.v.f15822a;
        }
    }

    public LoginActivity() {
        UnityPageModel unityPageModel = new UnityPageModel();
        unityPageModel.state = getStatName();
        unityPageModel.action = 1;
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = unityPageModel;
        this.f7364e = -1;
        this.f7365f = 2;
    }

    private final boolean isSoftShowing() {
        int height = getWindow().getDecorView().getHeight();
        Rect rect = new Rect();
        getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return (height * 2) / 3 > rect.bottom;
    }

    public static final /* synthetic */ void j(LoginActivity loginActivity) {
        loginActivity.k();
        throw null;
    }

    private final void k() {
        finishAffinity();
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    @SuppressLint({"RestrictedApi", "SetTextI18n"})
    private final void l() {
        LoginTabLogic loginTabLogic = this.c;
        if (loginTabLogic != null) {
            loginTabLogic.g();
        }
        LayoutExitAppBinding layoutExitAppBinding = g().countDownCl;
        kotlin.jvm.internal.r.d(layoutExitAppBinding, "viewBinding.countDownCl");
        AppTeachExtensionsKt.a(this, layoutExitAppBinding, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity$exitCountDown$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                LoginActivity.j(this.this$0);
                throw null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CoachLoginActivity.c.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final View view) {
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        String strA = k0.a(R.string.teachbase_enter_admin_password);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_enter_admin_password)");
        ManagerPasswordDialog managerPasswordDialog = new ManagerPasswordDialog(context, strA, null, 4, null);
        managerPasswordDialog.k(new Function1<XyUserModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity$init$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(XyUserModel xyUserModel) {
                invoke2(xyUserModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(XyUserModel user) {
                kotlin.jvm.internal.r.e(user, "user");
                SsoBaseApi.f3442e.a().l(null);
                AuthUser authUser = new AuthUser();
                authUser.setMucangId(user.getMucangId());
                authUser.setAuthToken(user.getAuthToken());
                authUser.setNickname(user.getName());
                authUser.setAvatar(user.getAvatar());
                kotlin.v vVar = kotlin.v.f15822a;
                user.setAuthUser(authUser);
                AccountManager.h().y(user.getAuthUser());
                SettingActivity.a aVar = SettingActivity.f9892f;
                Context context2 = view.getContext();
                kotlin.jvm.internal.r.d(context2, "it.context");
                aVar.a(context2, 2);
            }
        });
        managerPasswordDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        UserSwitcher.y(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        UserSwitcher.y(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(LoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
            return;
        }
        UserSwitcher.y(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LoginActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().switchTv.setSelected(cn.mucang.android.core.utils.g.b(list));
        this$0.g().switchIv.setSelected(cn.mucang.android.core.utils.g.b(list));
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        cn.mucang.android.jiakaoyi.framework.utils.f0.a(newBase);
        super.attachBaseContext(newBase);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        InputMethodManager inputMethodManager;
        kotlin.jvm.internal.r.e(ev, "ev");
        if (ev.getAction() == 0 && isSoftShowing() && (inputMethodManager = (InputMethodManager) androidx.core.a.a.i(this, InputMethodManager.class)) != null) {
            inputMethodManager.hideSoftInputFromWindow(g().getRoot().getWindowToken(), 0);
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "Login";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.f7365f = 2;
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AppTeachExtensionsKt.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        TextView textView = g().closeIv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.closeIv");
        int i = R.drawable.check_ic_close;
        Resources resources = getResources();
        int i2 = R.dimen.rpx_38;
        AppTeachExtensionsKt.h(textView, i, (int) resources.getDimension(i2));
        TextView textView2 = g().settingIv;
        kotlin.jvm.internal.r.d(textView2, "viewBinding.settingIv");
        AppTeachExtensionsKt.h(textView2, R.drawable.login_ic_setting, (int) getResources().getDimension(i2));
        TextView textView3 = g().coachIv;
        kotlin.jvm.internal.r.d(textView3, "viewBinding.coachIv");
        AppTeachExtensionsKt.h(textView3, R.drawable.login_ic_coach, (int) getResources().getDimension(i2));
        g().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.m(this.f7390a, view);
            }
        });
        g().coachIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.n(this.f7391a, view);
            }
        });
        g().settingIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.o(view);
            }
        });
        g().switchTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.p(this.f7395a, view);
            }
        });
        g().switchIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.q(this.f7394a, view);
            }
        });
        g().impLoginTv.setOnClickListener(new MultiClickListener(0, 0L, new AnonymousClass6(), 3, null));
        LoginTabLogic loginTabLogic = new LoginTabLogic(this, g());
        this.c = loginTabLogic;
        loginTabLogic.f(LoginHelper.e());
        Intent intent = getIntent();
        Integer numValueOf = intent == null ? null : Integer.valueOf(intent.getIntExtra("key.LoginAction", 0));
        if (numValueOf != null && numValueOf.intValue() == 1) {
            if (!LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
                UserSwitcher.y(this);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            String strA = k0.a(R.string.teachbase_logout_notice);
            String string = getString(R.string.multi_device_hint);
            kotlin.jvm.internal.r.d(string, "getString(R.string.multi_device_hint)");
            String strA2 = k0.a(R.string.teachbase_dialog_button_confirm);
            kotlin.jvm.internal.r.d(strA2, "getString(R.string.teach…se_dialog_button_confirm)");
            CommonAlertDialog.DialogParams dialogParams = new CommonAlertDialog.DialogParams(strA, string, strA2, null, null);
            CommonAlertDialog commonAlertDialog = this.f7363d;
            if (commonAlertDialog != null) {
                DialogExtensionKt.b(commonAlertDialog);
            }
            CommonAlertDialog commonAlertDialog2 = new CommonAlertDialog(this, dialogParams);
            this.f7363d = commonAlertDialog2;
            commonAlertDialog2.show();
        } else if (numValueOf != null && numValueOf.intValue() == 3) {
            String strA3 = k0.a(R.string.teachbase_time_over);
            String string2 = getString(R.string.teachbase_time_over_desc);
            kotlin.jvm.internal.r.d(string2, "getString(R.string.teachbase_time_over_desc)");
            String strA4 = k0.a(R.string.teachbase_knew);
            kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_knew)");
            CommonAlertDialog.DialogParams dialogParams2 = new CommonAlertDialog.DialogParams(strA3, string2, strA4, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginActivity.r(this.f7393a, view);
                }
            }, null);
            CommonAlertDialog commonAlertDialog3 = this.f7363d;
            if (commonAlertDialog3 != null) {
                DialogExtensionKt.b(commonAlertDialog3);
            }
            CommonAlertDialog commonAlertDialog4 = new CommonAlertDialog(this, dialogParams2);
            this.f7363d = commonAlertDialog4;
            commonAlertDialog4.show();
            TtsManager.r(strA3, TtsGrade.SuperLevel);
        }
        g().switchTv.setSelected(cn.mucang.android.core.utils.g.b((Collection) UserSwitcher.l().e()));
        g().switchIv.setSelected(cn.mucang.android.core.utils.g.b((Collection) UserSwitcher.l().e()));
        UserSwitcher.l().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LoginActivity.s(this.f7392a, (List) obj);
            }
        });
        UserSwitcher.g();
        UserSwitcher.f7303a.h();
        if (LocalConfigManager.f(LocalConfig.EnableSundial)) {
            SundialClient.f9111a.I();
        }
        if (LocalConfigManager.f(LocalConfig.EnableNonPerceiveLogin)) {
            ImageView imageView = g().switchIv;
            kotlin.jvm.internal.r.d(imageView, "viewBinding.switchIv");
            imageView.setVisibility(8);
            TextView textView4 = g().switchTv;
            kotlin.jvm.internal.r.d(textView4, "viewBinding.switchTv");
            textView4.setVisibility(8);
        }
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass8(null), 3, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (g().countDownCl.getRoot().getVisibility() == 0) {
            return;
        }
        l();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LoginTabLogic loginTabLogic = this.c;
        if (loginTabLogic == null) {
            return;
        }
        loginTabLogic.g();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        LoginTabLogic loginTabLogic = this.c;
        if (loginTabLogic != null) {
            loginTabLogic.h();
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        LoginTabLogic loginTabLogic = this.c;
        if (loginTabLogic != null) {
            loginTabLogic.i();
        }
        cn.mucang.jiakaoyi.uilib.socket.u.q(JSON.toJSONString(this.b));
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        int i;
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        int i2 = (int) signalGetter.d().b;
        if (this.f7364e < 1 && i2 >= 1 && (i = this.f7365f) > 0) {
            this.f7365f = i - 1;
            TtsManager.r(k0.a(R.string.teachbase_login_ai_teach_car), TtsGrade.GlobalTip);
        }
        this.f7364e = i2;
    }
}
