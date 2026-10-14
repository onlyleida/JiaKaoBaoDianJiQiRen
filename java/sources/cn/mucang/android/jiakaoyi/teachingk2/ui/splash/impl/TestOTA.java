package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.BusLiveData;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.HardwareInfoManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.TestOTAUpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.api.OnlyJkyApi;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0003\u0019\u001c\u001f\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0002\u0010\bJ\b\u0010%\u001a\u00020&H\u0003J\u0010\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0006H\u0002J\b\u0010)\u001a\u00020&H\u0002J\u0010\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020/H\u0002J\b\u00100\u001a\u00020&H\u0002J.\u00101\u001a\u00020&2\b\u00102\u001a\u0004\u0018\u00010,2\b\b\u0002\u00103\u001a\u00020\u00062\b\b\u0002\u00104\u001a\u00020\n2\u0006\u00105\u001a\u000206H\u0002J\b\u00107\u001a\u00020&H\u0002J\b\u00108\u001a\u00020&H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0014\u0010\u0010R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010 R\u000e\u0010!\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u00020#8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "nextEvent", "(Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;)V", "current", "", "debugContainer", "Landroid/view/View;", "forceObd", "", "getForceObd", "()Z", "forceObd$delegate", "Lkotlin/Lazy;", "forceOta", "getForceOta", "forceOta$delegate", "obdWareDebugInfo", "Landroid/widget/TextView;", "onResult", "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult$1", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult$1;", "onResult1", "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult1$1", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult1$1;", "otaStateCallback", "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$otaStateCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$otaStateCallback$1;", "size", "timeoutTask", "Ljava/lang/Runnable;", "upgradeDebugInfo", "checkInfo", "", "debugInfo", "text", "getUpgradeInfo", "handleUpdateInfo", "model", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "onFirmwareUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "refreshObdInfoFromDevice", "reportUpgradeInfo", "info", "uuid", "updateProgress", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "showErrorDialog", "test", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TestOTA extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private final View i;
    private final TextView j;
    private final TextView k;
    private int l;
    private int m;
    private final Lazy n;
    private final Lazy o;
    private final d p;
    private final b q;

    @SuppressLint({"SetTextI18n"})
    private final Runnable r;
    private final c s;

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0016\u0010\n\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016¨\u0006\u000f"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$getUpgradeInfo$1", "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;", "onFetchError", "", "e", "", "onFetchFirmwareInfo", "models", "", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "onFirmwareDownload", "onFirmwareEmpty", "onMustUpgradeApk", "model", "onStart", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements FirmwareFetcher.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(TestOTA this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(TestOTA this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(TestOTA this$0, List models) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(models, "$models");
            this$0.l = models.size();
            cn.mucang.android.jiakaoyi.signal.k.e0.j().Y(models, this$0.p);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(TestOTA this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(TestOTA this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(TestOTA this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g();
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void a() {
            TestOTA.this.x("没有新的固件");
            final TestOTA testOTA = TestOTA.this;
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.k0
                @Override // java.lang.Runnable
                public final void run() {
                    TestOTA.a.o(testOTA);
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void b(UpgradeInfoModel model) {
            kotlin.jvm.internal.r.e(model, "model");
            TestOTA.this.x("升级固件前必须升级App");
            if (cn.mucang.android.core.utils.n0.e(model.getVersionName())) {
                cn.mucang.android.core.utils.u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_apk_version_empty));
                final TestOTA testOTA = TestOTA.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestOTA.a.p(testOTA);
                    }
                });
            } else if (model.getVersion() > cn.mucang.android.core.utils.o0.t() && model.getForce()) {
                TestOTA.this.C(model);
            } else {
                final TestOTA testOTA2 = TestOTA.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestOTA.a.q(testOTA2);
                    }
                });
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void c(final List<UpgradeInfoModel> models) {
            kotlin.jvm.internal.r.e(models, "models");
            if (cn.mucang.android.core.utils.g.b(models)) {
                final TestOTA testOTA = TestOTA.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestOTA.a.m(testOTA);
                    }
                });
            } else {
                TestOTA.this.x("固件文件下载完成，开始更新");
                BaseActivity baseActivity = ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) TestOTA.this).b;
                final TestOTA testOTA2 = TestOTA.this;
                cn.mucang.android.core.utils.u.c(new SafeRunnable(baseActivity, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.l0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestOTA.a.n(testOTA2, models);
                    }
                }));
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void d(Throwable e2) {
            kotlin.jvm.internal.r.e(e2, "e");
            if (TestOTA.this.A() || TestOTA.this.z()) {
                TestOTA.this.T();
            } else {
                final TestOTA testOTA = TestOTA.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.m0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestOTA.a.l(testOTA);
                    }
                });
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void e(List<UpgradeInfoModel> models) {
            kotlin.jvm.internal.r.e(models, "models");
            TestOTA.this.x(kotlin.jvm.internal.r.m("拉取到固件信息个数", Integer.valueOf(models.size())));
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void onStart() {
            TestOTA.this.x("开始拉取固件信息");
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult$1", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "onResult", "", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements HardwareInfoManager.a {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.HardwareInfoManager.a
        @SuppressLint({"SetTextI18n"})
        public void a(HardwareInfo info) {
            kotlin.jvm.internal.r.e(info, "info");
            cn.mucang.android.core.utils.u.e(TestOTA.this.r);
            TestOTA.this.k.setText("串口读取的固件信息:" + info + ", 设置的车型:" + ((Object) SelectCarManager.g()));
            TestOTA.this.B();
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$onResult1$1", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "onResult", "", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements HardwareInfoManager.a {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.HardwareInfoManager.a
        @SuppressLint({"SetTextI18n"})
        public void a(HardwareInfo info) {
            kotlin.jvm.internal.r.e(info, "info");
            TestOTA.this.k.setText("更新后的缓存的固件信息:" + info + ", 设置的车型:" + ((Object) SelectCarManager.g()));
        }
    }

    @Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¨\u0006\u0014"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$otaStateCallback$1", "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;", "onReportUpgradeState", "", "uuid", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onUpgradeProgress", "progress", "", "curIndex", "total", "onUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements FirmwareUpgradeStateCallback {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void a(String uuid, UpgradeInfoModel info, UpgradeState state, UpgradeUploadModel extraInfo) {
            kotlin.jvm.internal.r.e(uuid, "uuid");
            kotlin.jvm.internal.r.e(info, "info");
            kotlin.jvm.internal.r.e(state, "state");
            kotlin.jvm.internal.r.e(extraInfo, "extraInfo");
            TestOTA.this.R(info, uuid, state.getState(), extraInfo);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void b(UpgradeInfoModel upgradeInfoModel, cn.mucang.android.jiakaoyi.signal.communicate.receive.j0 j0Var) {
            FirmwareUpgradeStateCallback.a.a(this, upgradeInfoModel, j0Var);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void c(UpgradeStateModel stateModel) {
            kotlin.jvm.internal.r.e(stateModel, "stateModel");
            TestOTA.this.P(stateModel);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void d(int i, int i2, int i3) {
            LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l((float) (((double) 40) + (((double) (20 / TestOTA.this.l)) * (((double) (TestOTA.this.m - 1)) + (((double) i) * 0.01d))))));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestOTA(BaseActivity activity, cn.mucang.android.jiakaoyi.framework.h.b<String> message, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k nextEvent) {
        super(activity, message, nextEvent, "固件升级");
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(message, "message");
        kotlin.jvm.internal.r.e(nextEvent, "nextEvent");
        View viewFindViewById = activity.findViewById(R.id.debugContainer);
        kotlin.jvm.internal.r.d(viewFindViewById, "activity.findViewById(R.id.debugContainer)");
        this.i = viewFindViewById;
        View viewFindViewById2 = activity.findViewById(R.id.upgradeDebugInfo);
        kotlin.jvm.internal.r.d(viewFindViewById2, "activity.findViewById(R.id.upgradeDebugInfo)");
        this.j = (TextView) viewFindViewById2;
        View viewFindViewById3 = activity.findViewById(R.id.obdWareDebugInfo);
        kotlin.jvm.internal.r.d(viewFindViewById3, "activity.findViewById(R.id.obdWareDebugInfo)");
        this.k = (TextView) viewFindViewById3;
        if (MucangConfig.v()) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
        this.n = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestOTA$forceOta$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Object objB = this.this$0.b();
                cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j jVar = objB instanceof cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j ? (cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j) objB : null;
                return Boolean.valueOf(jVar == null ? false : jVar.f8340a);
            }
        });
        this.o = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestOTA$forceObd$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Object objB = this.this$0.b();
                cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j jVar = objB instanceof cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j ? (cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j) objB : null;
                return Boolean.valueOf(jVar == null ? false : jVar.b);
            }
        });
        this.p = new d();
        this.q = new b();
        this.r = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.b0
            @Override // java.lang.Runnable
            public final void run() {
                TestOTA.Z(this.f8283a);
            }
        };
        this.s = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A() {
        return ((Boolean) this.n.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        this.l = 0;
        this.m = 0;
        new FirmwareFetcher(A(), z(), new a()).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(final UpgradeInfoModel upgradeInfoModel) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.p0
            @Override // java.lang.Runnable
            public final void run() {
                TestOTA.D(upgradeInfoModel, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(UpgradeInfoModel model, final TestOTA this$0) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.jiakaoyi.uilib.upgrade.update.q.x(model, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.o0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TestOTA.E(this.f8316a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(TestOTA this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(UpgradeStateModel upgradeStateModel) {
        this.c.callback(upgradeStateModel.getC());
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_START) {
            this.m++;
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.FAIL) {
            T();
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SUCCESS) {
            g();
            UpgradeInfoModel f5826a = upgradeStateModel.getF5826a();
            if (f5826a != null && f5826a.getType() == 2) {
                Q();
            }
        }
    }

    private final void Q() {
        HardwareInfoManager.b(this.s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(final UpgradeInfoModel upgradeInfoModel, final String str, final int i, final UpgradeUploadModel upgradeUploadModel) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.q0
            @Override // java.lang.Runnable
            public final void run() {
                TestOTA.S(upgradeInfoModel, upgradeUploadModel, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(UpgradeInfoModel upgradeInfoModel, UpgradeUploadModel extraInfo, String uuid, int i) {
        kotlin.jvm.internal.r.e(extraInfo, "$extraInfo");
        kotlin.jvm.internal.r.e(uuid, "$uuid");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(new OnlyJkyApi().m(upgradeInfoModel, extraInfo, uuid, i));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.g0
            @Override // java.lang.Runnable
            public final void run() {
                TestOTA.U(this.f8296a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(final TestOTA this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.c()) {
            return;
        }
        BaseActivity activity = this$0.b;
        kotlin.jvm.internal.r.d(activity, "activity");
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_hard_update_fail);
        String strA2 = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_hard_update_fail_tip);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_hard_update_fail_tip)");
        new JCommonDialog(activity, new JCommonDialog.DialogParams(strA, strA2, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_dialog_button_cancel), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestOTA.V(this.f8286a, view);
            }
        }, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestOTA.W(this.f8294a, view);
            }
        }, false)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(TestOTA this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.b.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(TestOTA this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(TestOTA this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(TestOTA this$0, TestOTAUpgradeState testOTAUpgradeState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.x(testOTAUpgradeState.getState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(TestOTA this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.f("获取硬件信息超时10s，执行超时任务");
        HardwareInfo hardwareInfoD = DeviceUtils.d();
        if (hardwareInfoD == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("未获取到缓存硬件信息，跳过OTA检测");
            this$0.g();
            return;
        }
        this$0.k.setText("串口读取的固件信息:" + hardwareInfoD + ", 设置的车型:" + ((Object) SelectCarManager.g()));
        this$0.B();
    }

    @SuppressLint({"SetTextI18n"})
    private final void w() {
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            g();
        } else {
            HardwareInfoManager.b(this.q);
            cn.mucang.android.core.utils.u.d(this.r, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(final String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("升级信息:", str));
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.n0
            @Override // java.lang.Runnable
            public final void run() {
                TestOTA.y(this.f8314a, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(TestOTA this$0, String text) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(text, "$text");
        this$0.j.setText(text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean z() {
        return ((Boolean) this.o.getValue()).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_check_hard_upgrade));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(40.0f));
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            g();
            return;
        }
        if (cn.mucang.android.core.utils.n0.e(SelectCarManager.g())) {
            CarSelectActivity.a aVar = CarSelectActivity.l;
            BaseActivity activity = this.b;
            kotlin.jvm.internal.r.d(activity, "activity");
            aVar.c(activity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.e0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    TestOTA.X(this.f8292a, (Boolean) obj);
                }
            });
        } else {
            w();
        }
        BusLiveData busLiveDataD = LiveBus.d(TestOTAUpgradeState.class);
        BaseActivity activity2 = this.b;
        kotlin.jvm.internal.r.d(activity2, "activity");
        busLiveDataD.h(activity2, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.d0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TestOTA.Y(this.f8288a, (TestOTAUpgradeState) obj);
            }
        });
    }
}
