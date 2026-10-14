package cn.mucang.jiakaoyi.uilib.ui.check;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.CheckSignal;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.HardwareInfoManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.handle.gps.DefaultLocationListener;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback;
import cn.mucang.android.jiakaoyi.signal.k.e0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.TestOTAUpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.api.OnlyJkyApi;
import cn.mucang.jiakaoyi.uilib.splash.StatusCheckActivity;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.ui.dialog.GyroUnstableDialog;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.iflytek.cloud.SpeechUtility;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivitySelfCheckBinding;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n*\u0003\n\r\u0010\u0018\u0000 C2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001CB\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u0015H\u0002J\b\u0010\u001c\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u001aH\u0016J\b\u0010\u001e\u001a\u00020\u0015H\u0002J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020\u0015H\u0003J\b\u0010#\u001a\u00020\u0015H\u0002J\b\u0010$\u001a\u00020\u0015H\u0016J\b\u0010%\u001a\u00020\u0006H\u0002J\u0012\u0010&\u001a\u00020\u00152\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\b\u0010)\u001a\u00020\u0015H\u0014J\u0010\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u000202H\u0016J\b\u00103\u001a\u00020\u0015H\u0002J.\u00104\u001a\u00020\u00152\b\u00105\u001a\u0004\u0018\u00010!2\b\b\u0002\u00106\u001a\u00020\u001a2\b\b\u0002\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\b\u0010;\u001a\u00020\u0015H\u0003J\u0010\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020\u001aH\u0002J\u0010\u0010>\u001a\u00020\u00152\u0006\u0010?\u001a\u00020\u0006H\u0002J\b\u0010@\u001a\u00020\u0015H\u0002J\b\u0010A\u001a\u00020\u0015H\u0002J\b\u0010B\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000¨\u0006D"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;", "()V", "checkEnd", "", "forceObd", "forceOta", "onResult", "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult$1", "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult$1;", "onResult1", "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1", "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1;", "otaStateCallback", "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1", "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;", "checkSignal", "", "model", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;", "debugInfo", "text", "", "doStartCheckSignal", "getErrorTip", "getStatName", "getUpgradeInfo", "handleUpdateInfo", "updateInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "initHardwareInfo", "initObdExceptionObserver", "onBackPressed", "onClose", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onFirmwareUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "onLocationChanged", "location", "Landroid/location/Location;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "refreshObdInfoFromDevice", "reportUpgradeInfo", "info", "uuid", "updateProgress", "", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "setFirstLaunch", "showFinishEntry", SpeechUtility.TAG_RESOURCE_RESULT, "showSignalCheckUI", "show", "startCheckSignal", "startCheckSignalOperation", "stop", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelfCheckActivity extends BaseActivity implements cn.mucang.android.jiakaoyi.signal.c.f.a, DefaultLocationListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f9767h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ActivitySelfCheckBinding f9768a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f9770e = new e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f9771f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f9772g = new d();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$Companion;", "", "()V", "KEY_FORCE_OBD", "", "KEY_FORCE_OTA", "launch", "", "context", "Landroid/content/Context;", "forceOta", "forceObd", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ boolean c(a aVar, Context context, boolean z, boolean z2, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                z2 = false;
            }
            return aVar.b(context, z, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(Context context, Intent i, Activity activity, Boolean bool) {
            kotlin.jvm.internal.r.e(context, "$context");
            kotlin.jvm.internal.r.e(i, "$i");
            ActivityUtils.c(context, i);
            activity.finish();
        }

        public final boolean b(final Context context, boolean z, boolean z2) {
            kotlin.jvm.internal.r.e(context, "context");
            final Intent intent = new Intent(context, (Class<?>) SelfCheckActivity.class);
            intent.putExtra("__key_force_ota__", z);
            intent.putExtra("__key_force_obd__", z2);
            if (!z2 || !n0.e(SelectCarManager.g())) {
                ActivityUtils.c(context, intent);
                return true;
            }
            final Activity activityA = ActivityUtils.a(context);
            if (activityA != null) {
                CarSelectActivity.l.c(activityA, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.f
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        SelfCheckActivity.a.d(context, intent, activityA, (Boolean) obj);
                    }
                });
            }
            return false;
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0016\u0010\n\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0017J\b\u0010\u000e\u001a\u00020\u0003H\u0016¨\u0006\u000f"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$getUpgradeInfo$1", "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;", "onFetchError", "", "e", "", "onFetchFirmwareInfo", "models", "", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "onFirmwareDownload", "onFirmwareEmpty", "onMustUpgradeApk", "model", "onStart", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements FirmwareFetcher.a {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(SelfCheckActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(List models, SelfCheckActivity this$0) {
            kotlin.jvm.internal.r.e(models, "$models");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            e0.j().Y(models, this$0.f9770e);
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void a() {
            SelfCheckActivity.this.t("没有新的固件");
            cn.mucang.android.jiakaoyi.framework.log.f.f("没有新的固件");
            SelfCheckActivity.this.h0();
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        @SuppressLint({"RestrictedApi"})
        public void b(UpgradeInfoModel model) {
            kotlin.jvm.internal.r.e(model, "model");
            SelfCheckActivity.this.t("升级固件前必须升级App");
            cn.mucang.android.jiakaoyi.framework.log.f.f("升级固件前必须升级App");
            if (n0.e(model.getVersionName())) {
                u.h("请求Apk版本为空，不支持升级");
                cn.mucang.android.jiakaoyi.framework.log.f.f("请求Apk版本为空，不支持升级");
                SelfCheckActivity.this.v();
            } else if (model.getVersion() > o0.t()) {
                SelfCheckActivity.this.z(model);
            } else {
                SelfCheckActivity.this.v();
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void c(final List<UpgradeInfoModel> models) {
            kotlin.jvm.internal.r.e(models, "models");
            if (cn.mucang.android.core.utils.g.b(models)) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("下载到固件数为空");
                SelfCheckActivity.this.h0();
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.f("固件文件下载完成，开始更新");
                SelfCheckActivity.this.t("固件文件下载完成，开始更新");
                final SelfCheckActivity selfCheckActivity = SelfCheckActivity.this;
                u.c(new SafeRunnable(selfCheckActivity, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfCheckActivity.b.i(models, selfCheckActivity);
                    }
                }));
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void d(Throwable e2) {
            kotlin.jvm.internal.r.e(e2, "e");
            u.h("网络异常");
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("更新异常:", q0.d(e2)));
            final SelfCheckActivity selfCheckActivity = SelfCheckActivity.this;
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.l
                @Override // java.lang.Runnable
                public final void run() {
                    SelfCheckActivity.b.h(selfCheckActivity);
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void e(List<UpgradeInfoModel> models) {
            kotlin.jvm.internal.r.e(models, "models");
            t.h("DebugOta", kotlin.jvm.internal.r.m("固件更新个数:", Integer.valueOf(models.size())));
            SelfCheckActivity.this.t(kotlin.jvm.internal.r.m("拉取到固件信息个数", Integer.valueOf(models.size())));
            StringBuilder sb = new StringBuilder();
            for (UpgradeInfoModel upgradeInfoModel : models) {
                sb.append("version=");
                sb.append(upgradeInfoModel.getVersion());
                sb.append(",type=");
                sb.append(upgradeInfoModel.getType());
                sb.append(",hardType=");
                sb.append(upgradeInfoModel.getHardwareVer());
                sb.append(",force=");
                sb.append(upgradeInfoModel.getForce());
                sb.append("\n");
            }
            cn.mucang.android.jiakaoyi.framework.log.f.f("拉取到固件信息个数" + models.size() + ':' + ((Object) sb));
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void onStart() {
            SelfCheckActivity.this.t("开始拉取固件信息");
            cn.mucang.android.jiakaoyi.framework.log.f.f("开始ota升级");
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult$1", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "onResult", "", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements HardwareInfoManager.a {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.HardwareInfoManager.a
        @SuppressLint({"SetTextI18n"})
        public void a(HardwareInfo info) {
            kotlin.jvm.internal.r.e(info, "info");
            ActivitySelfCheckBinding activitySelfCheckBinding = SelfCheckActivity.this.f9768a;
            if (activitySelfCheckBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding.obdWareDebugInfo.setText("串口读取的固件信息:" + info + ", 设置的车型:" + ((Object) SelectCarManager.g()));
            SelfCheckActivity.this.y();
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1", "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;", "onResult", "", "info", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements HardwareInfoManager.a {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.HardwareInfoManager.a
        @SuppressLint({"SetTextI18n"})
        public void a(HardwareInfo info) {
            kotlin.jvm.internal.r.e(info, "info");
            t.h("DebugOta", kotlin.jvm.internal.r.m("固件处理完成:得到的obd版本信息", JSON.toJSONString(info)));
            ActivitySelfCheckBinding activitySelfCheckBinding = SelfCheckActivity.this.f9768a;
            if (activitySelfCheckBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding.obdWareDebugInfo.setText("更新后的缓存的固件信息:" + info + ", 设置的车型:" + ((Object) SelectCarManager.g()));
        }
    }

    @Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¨\u0006\u0014"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1", "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;", "onReportUpgradeState", "", "uuid", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onUpgradeProgress", "progress", "", "curIndex", "total", "onUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements FirmwareUpgradeStateCallback {
        e() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void a(String uuid, UpgradeInfoModel info, UpgradeState state, UpgradeUploadModel extraInfo) {
            kotlin.jvm.internal.r.e(uuid, "uuid");
            kotlin.jvm.internal.r.e(info, "info");
            kotlin.jvm.internal.r.e(state, "state");
            kotlin.jvm.internal.r.e(extraInfo, "extraInfo");
            SelfCheckActivity.this.Z(info, uuid, state.getState(), extraInfo);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void b(UpgradeInfoModel upgradeInfoModel, j0 j0Var) {
            FirmwareUpgradeStateCallback.a.a(this, upgradeInfoModel, j0Var);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void c(UpgradeStateModel stateModel) {
            kotlin.jvm.internal.r.e(stateModel, "stateModel");
            t.h("DebugOta", kotlin.jvm.internal.r.m("收到更新结果", stateModel.getB()));
            SelfCheckActivity.this.W(stateModel);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void d(int i, int i2, int i3) {
            ActivitySelfCheckBinding activitySelfCheckBinding = SelfCheckActivity.this.f9768a;
            if (activitySelfCheckBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding.upgradeBar.setProgress(i);
            if (i == 1) {
                SelfCheckActivity.this.F();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(UpgradeInfoModel updateInfo, final SelfCheckActivity this$0) {
        kotlin.jvm.internal.r.e(updateInfo, "$updateInfo");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (updateInfo.getForce()) {
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.x(updateInfo, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.d
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    SelfCheckActivity.B((Boolean) obj);
                }
            });
        } else {
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.y(updateInfo, true, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.m
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    SelfCheckActivity.C(this.f9790a, (Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(Boolean bool) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(SelfCheckActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.v();
    }

    @SuppressLint({"SetTextI18n"})
    private final void D() {
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding.debugContainer.setVisibility(MucangConfig.v() ? 0 : 8);
        HardwareInfo hardwareInfoD = DeviceUtils.d();
        if (hardwareInfoD != null || this.f9769d || this.c) {
            ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
            if (activitySelfCheckBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding2.obdWareDebugInfo.setText("缓存的固件信息:" + hardwareInfoD + ", 设置的车型:" + ((Object) SelectCarManager.g()));
            t.h("SingleUpgradeHandler", kotlin.jvm.internal.r.m("缓存的硬件信息:", JSON.toJSONString(hardwareInfoD)));
            y();
        } else {
            t.h("SingleUpgradeHandler", "缓存的硬件信息为空");
            HardwareInfoManager.b(this.f9771f);
        }
        LiveBus.d(TestOTAUpgradeState.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SelfCheckActivity.E(this.f9782a, (TestOTAUpgradeState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(SelfCheckActivity this$0, TestOTAUpgradeState testOTAUpgradeState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.t(testOTAUpgradeState.getState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
    }

    private final boolean T() {
        Boolean boolP = e0.j().p();
        kotlin.jvm.internal.r.d(boolP, "getInstance().isWorking");
        boolean z = false;
        if (boolP.booleanValue()) {
            u.h("固件升级中..");
            return false;
        }
        if (!this.b) {
            u.h("信号检测中..");
            return false;
        }
        SelfCheckProvider selfCheckProvider = (SelfCheckProvider) DataProviderRegister.b(DataProviderRegister.f3433a, SelfCheckProvider.class, null, 2, null);
        if (selfCheckProvider != null && selfCheckProvider.finishDirect()) {
            z = true;
        }
        if (this.f9769d || this.c) {
            StatusCheckActivity.f9710f.a(this);
        } else if (!z) {
            AppUtils.s(this);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(SelfCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(View view) {
        SignalCheckActivity.b bVar = SignalCheckActivity.f10203h;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        bVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(UpgradeStateModel upgradeStateModel) {
        boolean z = false;
        if (upgradeStateModel.getB() == UpgradeState.START) {
            ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
            if (activitySelfCheckBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding.upgradeTv.setVisibility(0);
            ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
            if (activitySelfCheckBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding2.upgradeBar.setVisibility(0);
            ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
            if (activitySelfCheckBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding3.upgradeTv.setText(upgradeStateModel.getC());
            ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
            if (activitySelfCheckBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding4.upgradeBar.setProgress(0);
            t.h("DebugOta", "收到固件更新开始");
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("收到固件更新开始:", upgradeStateModel.getC()));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.FAIL) {
            t.h("DebugOta", "收到固件更新失败");
            u.h("固件更新失败,请退出应用重试");
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("固件更新失败,请退出应用重试:", upgradeStateModel.getC()));
            UpgradeInfoModel f5826a = upgradeStateModel.getF5826a();
            if (f5826a != null && f5826a.getType() == cn.mucang.jiakaoyi.uilib.unityres.a.f10310a) {
                z = true;
            }
            if (z) {
                finish();
                return;
            } else {
                g0();
                return;
            }
        }
        if (upgradeStateModel.getB() == UpgradeState.SUCCESS) {
            t.h("DebugOta", "收到固件更新成功");
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("收到固件更新成功:", upgradeStateModel.getC()));
            g0();
            UpgradeInfoModel f5826a2 = upgradeStateModel.getF5826a();
            if (f5826a2 != null && f5826a2.getType() == 2) {
                z = true;
            }
            if (z) {
                Y();
                return;
            }
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_START) {
            ActivitySelfCheckBinding activitySelfCheckBinding5 = this.f9768a;
            if (activitySelfCheckBinding5 != null) {
                activitySelfCheckBinding5.upgradeTv.setText(upgradeStateModel.getC());
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_PACK_FINISH) {
            ActivitySelfCheckBinding activitySelfCheckBinding6 = this.f9768a;
            if (activitySelfCheckBinding6 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding6.upgradeTv.setText(upgradeStateModel.getC());
            t.h("DebugOta", "收到单个固件发包完成回调");
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("收到单个固件发包完成回调:", upgradeStateModel.getC()));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_SUCCESS) {
            t.h("DebugOta", "收到单个固件更新成功回调");
            ActivitySelfCheckBinding activitySelfCheckBinding7 = this.f9768a;
            if (activitySelfCheckBinding7 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding7.upgradeTv.setText(upgradeStateModel.getC());
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("收到单个固件更新成功回调:", upgradeStateModel.getC()));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_FAIL) {
            t.h("DebugOta", "收到单个固件更新失败回调");
            ActivitySelfCheckBinding activitySelfCheckBinding8 = this.f9768a;
            if (activitySelfCheckBinding8 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            activitySelfCheckBinding8.upgradeTv.setText(upgradeStateModel.getC());
            cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("收到单个固件更新失败回调:", upgradeStateModel.getC()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(SelfCheckActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CheckSignal checkSignal = CheckSignal.GPS;
        if (checkSignal.getState() == 0) {
            checkSignal.setState(1);
            ActivitySelfCheckBinding activitySelfCheckBinding = this$0.f9768a;
            if (activitySelfCheckBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            RecyclerView.Adapter adapter = activitySelfCheckBinding.recyclerView.getAdapter();
            if (adapter == null) {
                return;
            }
            adapter.notifyItemChanged(0);
        }
    }

    private final void Y() {
        HardwareInfoManager.b(this.f9772g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z(final UpgradeInfoModel upgradeInfoModel, final String str, final int i, final UpgradeUploadModel upgradeUploadModel) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.b
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.a0(upgradeInfoModel, upgradeUploadModel, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(UpgradeInfoModel upgradeInfoModel, UpgradeUploadModel extraInfo, String uuid, int i) {
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

    @SuppressLint({"SimpleDateFormat"})
    private final void b0() {
        String strG = i0.g("keyFirstLaunch", "");
        String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        if (kotlin.jvm.internal.r.a(strG, str)) {
            return;
        }
        i0.m("keyFirstLaunch", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(String str) {
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding.descTv.setVisibility(8);
        ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
        if (activitySelfCheckBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding2.progressBar.setVisibility(8);
        ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
        if (activitySelfCheckBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding3.resultGroup.setVisibility(0);
        ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
        if (activitySelfCheckBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding4.errorTv.setText(str);
        ActivitySelfCheckBinding activitySelfCheckBinding5 = this.f9768a;
        if (activitySelfCheckBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding5.mainTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelfCheckActivity.d0(this.f9793a, view);
            }
        });
        ActivitySelfCheckBinding activitySelfCheckBinding6 = this.f9768a;
        if (activitySelfCheckBinding6 != null) {
            activitySelfCheckBinding6.retryTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelfCheckActivity.e0(this.f9794a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(SelfCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(SelfCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g0();
    }

    private final void f0(boolean z) {
        int i = z ? 0 : 8;
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding.recyclerView.setVisibility(i);
        ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
        if (activitySelfCheckBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding2.progressBar.setVisibility(i);
        ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
        if (activitySelfCheckBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding3.descTv.setVisibility(i);
        int i2 = z ? 8 : 0;
        ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
        if (activitySelfCheckBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding4.upgradeBar.setVisibility(i2);
        ActivitySelfCheckBinding activitySelfCheckBinding5 = this.f9768a;
        if (activitySelfCheckBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding5.upgradeTv.setVisibility(i2);
        ActivitySelfCheckBinding activitySelfCheckBinding6 = this.f9768a;
        if (activitySelfCheckBinding6 != null) {
            activitySelfCheckBinding6.upgradeBar.setVisibility(i2);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding.resultGroup.setVisibility(8);
        ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
        if (activitySelfCheckBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding2.progressBar.setVisibility(0);
        ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
        if (activitySelfCheckBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding3.descTv.setVisibility(0);
        ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
        if (activitySelfCheckBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding4.progressBar.setProgress(0);
        f0(true);
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.n(this);
        dVar.b(this);
        JLocationManager jLocationManager = JLocationManager.f5733a;
        jLocationManager.k(this);
        jLocationManager.d(this);
        for (CheckSignal checkSignal : ArraysKt___ArraysKt.h0(CheckSignal.values())) {
            checkSignal.setState(0);
            checkSignal.setHasPlayErrTip(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0() {
        u.h("已经是最新版本");
        v();
    }

    private final void i0() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        JLocationManager.f5733a.k(this);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.c
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.j0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0() {
        try {
            List listH0 = ArraysKt___ArraysKt.h0(CheckSignal.values());
            SerializeConfig serializeConfig = new SerializeConfig();
            serializeConfig.configEnumAsJavaBean(CheckSignal.class);
            v vVar = v.f15822a;
            String value = JSON.toJSONString(listH0, serializeConfig, new SerializerFeature[0]);
            DeviceApi deviceApi = new DeviceApi();
            kotlin.jvm.internal.r.d(value, "value");
            deviceApi.o(value);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0053  */
    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:25:0x0089  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00db  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0026  */
    /* JADX WARN: Code duplicated, block: B:9:0x002e  */
    private final void s(CarModel carModel) {
        CheckSignal checkSignal;
        CheckSignal checkSignal2;
        CheckSignal checkSignal3;
        CheckSignal checkSignal4;
        CheckSignal checkSignal5;
        if (carModel.p == KeyState.Invalid) {
            CheckSignal checkSignal6 = CheckSignal.KEY;
            if (checkSignal6.getHasPlayErrTip()) {
                checkSignal = CheckSignal.KEY;
                if (checkSignal.getState() == 0) {
                    checkSignal.setState(1);
                }
            } else {
                checkSignal6.setHasPlayErrTip(true);
                checkSignal6.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal6.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
        } else {
            checkSignal = CheckSignal.KEY;
            if (checkSignal.getState() == 0) {
                checkSignal.setState(1);
            }
        }
        if (carModel.t == Gear.Invalid) {
            CheckSignal checkSignal7 = CheckSignal.GEAR;
            if (checkSignal7.getHasPlayErrTip()) {
                checkSignal2 = CheckSignal.GEAR;
                if (checkSignal2.getState() == 0) {
                    checkSignal2.setState(1);
                }
            } else {
                checkSignal7.setHasPlayErrTip(true);
                checkSignal7.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal7.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
        } else {
            checkSignal2 = CheckSignal.GEAR;
            if (checkSignal2.getState() == 0) {
                checkSignal2.setState(1);
            }
        }
        if (((int) carModel.b) == cn.mucang.android.jiakaoyi.signal.communicate.receive.e0.r0) {
            CheckSignal checkSignal8 = CheckSignal.SPEED;
            if (checkSignal8.getHasPlayErrTip()) {
                checkSignal3 = CheckSignal.SPEED;
                if (checkSignal3.getState() == 0) {
                    checkSignal3.setState(1);
                }
            } else {
                checkSignal8.setHasPlayErrTip(true);
                checkSignal8.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal8.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
        } else {
            checkSignal3 = CheckSignal.SPEED;
            if (checkSignal3.getState() == 0) {
                checkSignal3.setState(1);
            }
        }
        if (carModel.f5265a == cn.mucang.android.jiakaoyi.signal.communicate.receive.e0.r0) {
            CheckSignal checkSignal9 = CheckSignal.RPM;
            if (checkSignal9.getHasPlayErrTip()) {
                checkSignal4 = CheckSignal.RPM;
                if (checkSignal4.getState() == 0) {
                    checkSignal4.setState(1);
                }
            } else {
                checkSignal9.setHasPlayErrTip(true);
                checkSignal9.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal9.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
        } else {
            checkSignal4 = CheckSignal.RPM;
            if (checkSignal4.getState() == 0) {
                checkSignal4.setState(1);
            }
        }
        if (carModel.i == cn.mucang.android.jiakaoyi.signal.communicate.receive.e0.r0) {
            CheckSignal checkSignal10 = CheckSignal.THROTTLE;
            if (checkSignal10.getHasPlayErrTip()) {
                checkSignal5 = CheckSignal.THROTTLE;
                if (checkSignal5.getState() == 0) {
                    checkSignal5.setState(1);
                }
            } else {
                checkSignal10.setHasPlayErrTip(true);
                checkSignal10.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal10.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
        } else {
            checkSignal5 = CheckSignal.THROTTLE;
            if (checkSignal5.getState() == 0) {
                checkSignal5.setState(1);
            }
        }
        if (((int) carModel.w) == cn.mucang.android.jiakaoyi.signal.communicate.receive.e0.r0) {
            CheckSignal checkSignal11 = CheckSignal.GYRO;
            if (!checkSignal11.getHasPlayErrTip()) {
                checkSignal11.setHasPlayErrTip(true);
                checkSignal11.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal11.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
                return;
            }
        }
        CheckSignal checkSignal12 = CheckSignal.GYRO;
        if (checkSignal12.getState() == 0) {
            checkSignal12.setState(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(final String str) {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.h
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.u(this.f9785a, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(SelfCheckActivity this$0, String text) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(text, "$text");
        ActivitySelfCheckBinding activitySelfCheckBinding = this$0.f9768a;
        if (activitySelfCheckBinding != null) {
            activitySelfCheckBinding.upgradeDebugInfo.setText(text);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.j
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.w(this.f9787a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SelfCheckActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g0();
    }

    private final String x() {
        String strM = "";
        int i = 0;
        for (CheckSignal checkSignal : ArraysKt___ArraysKt.h0(CheckSignal.values())) {
            if (checkSignal.getState() != 1) {
                i++;
                if (i > 1) {
                    strM = kotlin.jvm.internal.r.m(strM, "\n");
                }
                strM = strM + i + (char) 12289 + checkSignal.getSignalName() + "未检测到信号：" + checkSignal.getTip();
            }
        }
        return strM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        new FirmwareFetcher(this.c, this.f9769d, new b()).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(final UpgradeInfoModel upgradeInfoModel) {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.o
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.A(upgradeInfoModel, this);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "系统自检";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (T()) {
            finish();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        b0();
        ActivitySelfCheckBinding activitySelfCheckBindingInflate = ActivitySelfCheckBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(activitySelfCheckBindingInflate, "inflate(layoutInflater)");
        this.f9768a = activitySelfCheckBindingInflate;
        if (activitySelfCheckBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(activitySelfCheckBindingInflate.getRoot());
        this.c = getIntent().getBooleanExtra("__key_force_ota__", false);
        this.f9769d = getIntent().getBooleanExtra("__key_force_obd__", false);
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelfCheckActivity.U(this.f9791a, view);
            }
        });
        ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
        if (activitySelfCheckBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding2.titleLayout.titleTv.setText("系统自检");
        f0(false);
        ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
        if (activitySelfCheckBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding3.recyclerView.setLayoutManager(new GridLayoutManager(this, 7));
        ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
        if (activitySelfCheckBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = activitySelfCheckBinding4.recyclerView;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(ArraysKt___ArraysKt.h0(CheckSignal.values()), 0, null, 6, null);
        fVar.g(CheckSignal.class, new SelfCheckItemBinder());
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        D();
        ActivitySelfCheckBinding activitySelfCheckBinding5 = this.f9768a;
        if (activitySelfCheckBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding5.titleLayout.titleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelfCheckActivity.V(view);
            }
        });
        ActivitySelfCheckBinding activitySelfCheckBinding6 = this.f9768a;
        if (activitySelfCheckBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        activitySelfCheckBinding6.tvVersion.setText(DeviceUtils.c() + ' ' + ((Object) o0.u()));
        ActivitySelfCheckBinding activitySelfCheckBinding7 = this.f9768a;
        if (activitySelfCheckBinding7 != null) {
            activitySelfCheckBinding7.tvApkTime.setText("2023/10/12 17:54:03");
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        JLocationManager.f5733a.k(this);
        e0.j().S();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.handle.gps.DefaultLocationListener
    public void onLocationChanged(Location location) {
        kotlin.jvm.internal.r.e(location, "location");
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.g
            @Override // java.lang.Runnable
            public final void run() {
                SelfCheckActivity.X(this.f9784a);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        CarModel model = signalGetter.d();
        kotlin.jvm.internal.r.d(model, "model");
        s(model);
        ActivitySelfCheckBinding activitySelfCheckBinding = this.f9768a;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        ProgressBar progressBar = activitySelfCheckBinding.progressBar;
        if (activitySelfCheckBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        progressBar.setProgress(progressBar.getProgress() + 5);
        ActivitySelfCheckBinding activitySelfCheckBinding2 = this.f9768a;
        if (activitySelfCheckBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (activitySelfCheckBinding2.progressBar.getProgress() == 100) {
            CheckSignal checkSignal = CheckSignal.GPS;
            if (checkSignal.getState() == 0) {
                checkSignal.setState(2);
                TtsManager.r(kotlin.jvm.internal.r.m(checkSignal.getSignalName(), "无信号"), TtsGrade.ExamDeduct);
            }
            i0();
            this.b = true;
            final String strX = x();
            if (n0.e(strX)) {
                onBackPressed();
            } else if (model.o) {
                c0(strX);
            } else {
                new GyroUnstableDialog(this, new Function0<v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.SelfCheckActivity.onSignalChanged.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        SelfCheckActivity.this.c0(strX);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }
                }).show();
            }
        }
        ActivitySelfCheckBinding activitySelfCheckBinding3 = this.f9768a;
        if (activitySelfCheckBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        RecyclerView.Adapter adapter = activitySelfCheckBinding3.recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        String strB = p0.b(System.currentTimeMillis());
        ActivitySelfCheckBinding activitySelfCheckBinding4 = this.f9768a;
        if (activitySelfCheckBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (kotlin.jvm.internal.r.a(activitySelfCheckBinding4.tvTime.getText(), strB)) {
            return;
        }
        ActivitySelfCheckBinding activitySelfCheckBinding5 = this.f9768a;
        if (activitySelfCheckBinding5 != null) {
            activitySelfCheckBinding5.tvTime.setText(strB);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
