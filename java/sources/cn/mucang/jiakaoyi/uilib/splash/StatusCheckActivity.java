package cn.mucang.jiakaoyi.uilib.splash;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity;
import cn.mucang.jiakaoyi.uilib.utils.MainPageUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityStatusCheckBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\t\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0014J\b\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\b\u0010\u0017\u001a\u00020\u000fH\u0002J\b\u0010\u0018\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityStatusCheckBinding;", "()V", "MAX_RETRY_TIME", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;", "requestDeviceTask", "cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1", "Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1;", "retryTime", "getStatName", "", "init", "", "initViewModel", "viewModel", "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;", "onDestroy", "removeCallbacks", "requestDevice", "retry", "sendTask", "showErrorDialog", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StatusCheckActivity extends BaseViewBindingActivity<ActivityStatusCheckBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9710f = new a(null);
    private int b;
    private final int c = 15;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f9711d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ComStateListener f9712e = new ComStateListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.t
        @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
        public final void a(ComStateListener.State state, Throwable th) {
            StatusCheckActivity.D(this.f9734a, state, th);
        }
    };

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$Companion;", "", "()V", "GearCalibrateHintDay", "", "getGearCalibrateHintDay", "()Ljava/lang/String;", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) StatusCheckActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDevice$1", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "onChanged", "", "t", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements a0<HardwareInfo> {
        final /* synthetic */ CheckViewModel b;

        b(CheckViewModel checkViewModel) {
            this.b = checkViewModel;
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(HardwareInfo t) {
            kotlin.jvm.internal.r.e(t, "t");
            if (n0.g(t.hardwareNumber)) {
                LiveBus.d(HardwareInfo.class).m(this);
                StatusCheckActivity.this.E();
                this.b.m(t.hardwareNumber);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1", "Ljava/lang/Runnable;", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StatusCheckActivity.this.isFinishing() || StatusCheckActivity.this.isDestroyed()) {
                return;
            }
            StatusCheckActivity.this.b++;
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("发送给底层信息无响应，设备无法识别,重试次数:", Integer.valueOf(StatusCheckActivity.this.b)));
            if (StatusCheckActivity.this.b > StatusCheckActivity.this.c) {
                cn.mucang.android.core.utils.u.e(this);
                StatusCheckActivity.this.I();
            } else if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().m()) {
                McCommandManager.f5380a.f();
                cn.mucang.android.core.utils.u.d(this, 1000L);
            } else if (StatusCheckActivity.this.b % 4 == 0) {
                StatusCheckActivity.this.G();
            } else {
                cn.mucang.android.core.utils.u.d(this, 500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(StatusCheckActivity this$0, ComStateListener.State state, Throwable th) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (state == ComStateListener.State.Valid) {
            McCommandManager.f5380a.f();
            cn.mucang.android.core.utils.u.d(this$0.f9711d, 1000L);
        } else if (state == ComStateListener.State.Error) {
            this$0.I();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        cn.mucang.android.core.utils.u.e(this.f9711d);
    }

    private final void F(CheckViewModel checkViewModel) {
        String strC = DeviceUtils.c();
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a() && n0.g(strC)) {
            checkViewModel.m(DeviceUtils.e());
        } else {
            LiveBus.d(HardwareInfo.class).h(this, new b(checkViewModel));
            H();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().m()) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().a(this.f9712e);
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().J();
    }

    private final void H() {
        cn.mucang.android.core.utils.u.c(this.f9711d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        new CommonAlertDialog(this, new CommonAlertDialog.DialogParams("设备无法识别，请联系当地经销商解决", kotlin.jvm.internal.r.m("如仍有问题，请联系官方客服 ", n0.c(R.string.mc_contact_number)), "重试", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StatusCheckActivity.J(this.f9731a, view);
            }
        }, new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StatusCheckActivity.K(this.f9730a, view);
            }
        })).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(StatusCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.b = 0;
        this$0.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(StatusCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void p(final CheckViewModel checkViewModel) {
        checkViewModel.k().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.splash.r
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                StatusCheckActivity.q(this.f9732a, (Integer) obj);
            }
        });
        checkViewModel.b().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.splash.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                StatusCheckActivity.r(this.f9735a, checkViewModel, (LoadingState) obj);
            }
        });
        checkViewModel.l().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.splash.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                StatusCheckActivity.u(this.f9736a, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final StatusCheckActivity this$0, Integer num) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (num != null && num.intValue() == 0) {
            BindDeviceActivity.f9181e.a(this$0);
            this$0.finish();
        } else if (num != null && num.intValue() == 1) {
            CarSelectActivity.l.b(this$0);
            this$0.finish();
        } else if (num != null && num.intValue() == 2) {
            SundialClient.f9111a.x(this$0, new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.splash.StatusCheckActivity$initViewModel$1$1
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
                    MainPageUtils.a(this.this$0);
                    this.this$0.finish();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(final StatusCheckActivity this$0, final CheckViewModel viewModel, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        if (loadingState == LoadingState.Fail) {
            new CommonAlertDialog(this$0, new CommonAlertDialog.DialogParams("设备未联网，请检查网络后重试", kotlin.jvm.internal.r.m("如仍有问题，请联系官方客服 ", n0.c(R.string.mc_contact_number)), "重试", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StatusCheckActivity.s(viewModel, view);
                }
            }, new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.splash.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StatusCheckActivity.t(this.f9737a, view);
                }
            })).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(CheckViewModel viewModel, View view) {
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        viewModel.m(DeviceUtils.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(StatusCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(StatusCheckActivity this$0, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().tipTv.setText(str);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "状态监测页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this).a(CheckViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…eckViewModel::class.java)");
        CheckViewModel checkViewModel = (CheckViewModel) j0VarA;
        F(checkViewModel);
        p(checkViewModel);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        E();
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().N(this.f9712e);
    }
}
