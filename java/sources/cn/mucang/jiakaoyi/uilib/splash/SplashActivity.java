package cn.mucang.jiakaoyi.uilib.splash;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.d0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveWaitOta;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.k0;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.jiakaoyi.uilib.helper.SimUploadHelper;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.ui.check.SelfCheckActivity;
import cn.mucang.jiakaoyi.uilib.ui.dialog.DefaultPrivacyView;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PermissionDialog;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.mobile.auth.gatewayauth.Constant;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivitySplashBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000_\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u000eH\u0003J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u000eH\u0002J\b\u0010\u001b\u001a\u00020\u000eH\u0002J\u0012\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\b\u0010\u001f\u001a\u00020\u000eH\u0014J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "signalCount", "", "signalTask", "cn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1", "Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1;", Constant.START_TIME, "", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySplashBinding;", "doNext", "", "getStatName", "", "handleSignal", "handleUpdateInfo", "updateInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "initAfterRequestPermission", "launchSelfCheck", "forceOta", "", "forceObd", "launchStatusCheck", "observeInfo", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "requestPermission", "activity", "Landroid/app/Activity;", "showPrivacyDialog", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SplashActivity extends BaseActivity implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9707a;
    private long b;
    private ActivitySplashBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f9708d = new a();

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1", "Ljava/lang/Runnable;", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(final SplashActivity this$0, final a this$1, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.m
                @Override // java.lang.Runnable
                public final void run() {
                    SplashActivity.a.e(this$0, this$1);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(SplashActivity this$0, a this$1) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().J();
            this$0.f9707a = 0;
            if (cn.mucang.android.core.utils.d.d(this$0)) {
                return;
            }
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this$0);
            cn.mucang.android.core.utils.u.d(this$1, 3000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(SplashActivity this$0, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.finish();
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(SplashActivity.this);
            if (SplashActivity.this.isFinishing() || SplashActivity.this.isDestroyed()) {
                return;
            }
            if (SplashActivity.this.f9707a > 2 || cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                SplashActivity.this.G();
                return;
            }
            SplashActivity splashActivity = SplashActivity.this;
            String strM = kotlin.jvm.internal.r.m("如仍有问题，请联系官方客服 ", n0.c(R.string.mc_contact_number));
            final SplashActivity splashActivity2 = SplashActivity.this;
            new CommonAlertDialog(splashActivity, new CommonAlertDialog.DialogParams("无法检测到信号盒，请确认信号盒是否打开", strM, "重试", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.a.d(splashActivity2, this, view);
                }
            }, new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SplashActivity.a.f(splashActivity2, view);
                }
            })).show();
            cn.mucang.android.jiakaoyi.framework.log.f.f("SplashActivity:无法检测到信号盒");
        }
    }

    private final void E(final boolean z, final boolean z2) {
        LiveBus.d(ReceiveWaitOta.class).n(this);
        LiveBus.d(k0.class).n(this);
        cn.mucang.android.core.utils.u.e(this.f9708d);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        cn.mucang.android.core.utils.u.d(new SafeRunnable(this, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.i
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.F(this.f9723a, z, z2);
            }
        }), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(SplashActivity this$0, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (SelfCheckActivity.f9767h.b(this$0, z, z2)) {
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        cn.mucang.android.core.utils.u.e(this.f9708d);
        LiveBus.d(ReceiveWaitOta.class).n(this);
        LiveBus.d(k0.class).n(this);
        StatusCheckActivity.f9710f.a(this);
        finish();
    }

    private final void H() {
        LiveBus.d(ReceiveWaitOta.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.splash.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SplashActivity.I(this.f9720a, (ReceiveWaitOta) obj);
            }
        });
        LiveBus.d(k0.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.splash.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SplashActivity.J(this.f9729a, (k0) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(SplashActivity this$0, ReceiveWaitOta receiveWaitOta) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.E(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(SplashActivity this$0, k0 k0Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.E(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K() {
        try {
            cn.mucang.android.jiakaoyi.signal.gearsensor.h.t();
        } catch (Throwable unused) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("初始化档位传感器信号");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(final Activity activity) {
        boolean zB = z.b("android.permission.ACCESS_FINE_LOCATION", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE");
        boolean zB2 = i0.b("keyPermissionDialog", false);
        if (cn.mucang.android.jiakaoyi.framework.utils.q.a("EVB3561SV") && zB && !zB2) {
            new PermissionDialog(activity, kotlin.collections.u.f("android.permission.ACCESS_FINE_LOCATION", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"), new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.splash.SplashActivity$requestPermission$1
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    i0.i("keyPermissionDialog", true);
                    this.this$0.s();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }, new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.splash.SplashActivity$requestPermission$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.L(activity);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }).show();
        } else {
            d0.d(activity, new f.a.a.a.p009n.c.a() { // from class: cn.mucang.jiakaoyi.uilib.splash.g
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    SplashActivity.M(this.f9721a, activity, permissionsResult);
                }
            }, "android.permission.ACCESS_FINE_LOCATION", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(SplashActivity this$0, Activity activity, PermissionsResult permissionsResult) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(activity, "$activity");
        if (!permissionsResult.getGrantedAll()) {
            this$0.L(activity);
        } else {
            i0.i("keyPermissionDialog", true);
            this$0.s();
        }
    }

    private final void N(Activity activity) {
        DefaultPrivacyView defaultPrivacyView = new DefaultPrivacyView("keyAppPrivacy", DeviceType.LUKAOYI.getType(), "lukaoyi_1");
        if (defaultPrivacyView.e()) {
            L(this);
        } else {
            new PrivacyAgreementDialog(activity, kotlin.collections.t.d(defaultPrivacyView), new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.splash.SplashActivity$showPrivacyDialog$1
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SplashActivity splashActivity = this.this$0;
                    splashActivity.L(splashActivity);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }, null, 8, null).show();
        }
    }

    private final void l() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.j
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.m(this.f9724a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(SplashActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        JLocationManager jLocationManager = JLocationManager.f5733a;
        Application context = MucangConfig.getContext();
        kotlin.jvm.internal.r.d(context, "getContext()");
        jLocationManager.l(context);
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().R();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this$0);
        this$0.n();
        this$0.H();
    }

    private final void n() {
        cn.mucang.android.core.utils.u.d(this.f9708d, 3000L);
    }

    private final void o(final UpgradeInfoModel upgradeInfoModel) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.h
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.p(upgradeInfoModel, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(UpgradeInfoModel updateInfo, final SplashActivity this$0) {
        kotlin.jvm.internal.r.e(updateInfo, "$updateInfo");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (updateInfo.getForce()) {
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.x(updateInfo, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.splash.e
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    SplashActivity.q(this.f9719a, (Boolean) obj);
                }
            });
        } else {
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.x(updateInfo, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.splash.c
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    SplashActivity.r(this.f9717a, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SplashActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(SplashActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"RestrictedApi"})
    public final void s() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.k
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.t(this.f9725a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(SplashActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            UpgradeInfoModel upgradeInfoModelH = cn.mucang.jiakaoyi.uilib.upgrade.update.q.h();
            if (upgradeInfoModelH != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("updateApk ", JSON.toJSONString(upgradeInfoModelH)));
                if (upgradeInfoModelH.getVersion() > o0.t()) {
                    this$0.o(upgradeInfoModelH);
                } else {
                    this$0.l();
                }
            } else {
                this$0.l();
            }
        } catch (Exception unused) {
            this$0.l();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "启屏";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivitySplashBinding activitySplashBindingInflate = ActivitySplashBinding.inflate(LayoutInflater.from(this));
        kotlin.jvm.internal.r.d(activitySplashBindingInflate, "inflate(LayoutInflater.from(this))");
        this.c = activitySplashBindingInflate;
        if (activitySplashBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(activitySplashBindingInflate.getRoot());
        N(this);
        cn.mucang.android.jiakaoyi.framework.log.f.o("打开app");
        ActivitySplashBinding activitySplashBinding = this.c;
        if (activitySplashBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySplashBinding.tvVersion.setText(DeviceUtils.c() + ' ' + ((Object) o0.u()));
        ActivitySplashBinding activitySplashBinding2 = this.c;
        if (activitySplashBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySplashBinding2.tvApkTime.setText("2023/10/12 17:54:03");
        String strB = p0.b(System.currentTimeMillis());
        ActivitySplashBinding activitySplashBinding3 = this.c;
        if (activitySplashBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (!kotlin.jvm.internal.r.a(activitySplashBinding3.tvTime.getText(), strB)) {
            ActivitySplashBinding activitySplashBinding4 = this.c;
            if (activitySplashBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySplashBinding4.tvTime.setText(strB);
        }
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.splash.d
            @Override // java.lang.Runnable
            public final void run() {
                SplashActivity.K();
            }
        });
        SimUploadHelper.f9458a.c();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        cn.mucang.android.core.utils.u.e(this.f9708d);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (this.b == 0) {
            this.b = signalGetter.d().L;
        }
        int i = this.f9707a + 1;
        this.f9707a = i;
        if (i > 7 && signalGetter.d().L - this.b > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            G();
        }
        String strB = p0.b(System.currentTimeMillis());
        ActivitySplashBinding activitySplashBinding = this.c;
        if (activitySplashBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (kotlin.jvm.internal.r.a(activitySplashBinding.tvTime.getText(), strB)) {
            return;
        }
        ActivitySplashBinding activitySplashBinding2 = this.c;
        if (activitySplashBinding2 != null) {
            activitySplashBinding2.tvTime.setText(strB);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
