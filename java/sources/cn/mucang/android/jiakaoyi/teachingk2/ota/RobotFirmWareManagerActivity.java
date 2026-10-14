package cn.mucang.android.jiakaoyi.teachingk2.ota;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.android.jiakaoyi.signal.communicate.AiCommandAdapter;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback;
import cn.mucang.android.jiakaoyi.signal.k.e0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityRobotFirmwareManagerBinding;
import cn.mucang.jiakaoyi.uilib.api.OnlyJkyApi;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.o0;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0014\b\u0007\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\bH\u0002J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\rH\u0002J\u001a\u0010!\u001a\u00020\u001a2\b\u0010\"\u001a\u0004\u0018\u00010\b2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u001aH\u0002J\b\u0010&\u001a\u00020\u001aH\u0002J\b\u0010'\u001a\u00020\bH\u0016J\b\u0010(\u001a\u00020\u001aH\u0015J\u0012\u0010)\u001a\u00020\u001a2\b\u0010*\u001a\u0004\u0018\u00010+H\u0002J\b\u0010,\u001a\u00020\u001aH\u0002J\"\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u000100H\u0014J\u0010\u00101\u001a\u00020\u001a2\u0006\u00102\u001a\u000203H\u0003J\b\u00104\u001a\u00020\u001aH\u0002J\u0010\u00105\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotFirmwareManagerBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "aiVersionCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "checkMap", "", "", "curModel", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;", "data", "", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;", "downloadList", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "firmwareUpgradeStateCallback", "cn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$firmwareUpgradeStateCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$firmwareUpgradeStateCallback$1;", "observable", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "buildData", "", "hardwareInfo", "checkFileNameForError", "", Constant.PROTOCOL_WEBVIEW_NAME, "checkModule", "it", "download", "url", "file", "Ljava/io/File;", "fetchAIFirmware", "fetchRemoteFirmware", "getStatName", "init", "loadFile", "uri", "Landroid/net/Uri;", "loadFirmwareData", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "Landroid/content/Intent;", "onFirmwareUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "openFileSelector", "upgradeModule", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class RobotFirmWareManagerActivity extends BaseViewBindingActivity<ActivityRobotFirmwareManagerBinding> {
    public static final a j = new a(null);
    private final List<FirmwareModel> b = new ArrayList();
    private List<UpgradeInfoModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Integer, String> f7434d = o0.k(kotlin.l.a(1, "MST"), kotlin.l.a(3, "SCC"), kotlin.l.a(4, "FRT_UTS"), kotlin.l.a(5, "BAK_UTS"), kotlin.l.a(6, "SFT"), kotlin.l.a(7, "THR"), kotlin.l.a(8, "GER"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f7435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<String> f7436f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a0<HardwareInfo> f7437g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RobotFirmwareModel f7438h;
    private final b i;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) RobotFirmWareManagerActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0017J(\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0017J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J.\u0010\u0017\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u0019"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$firmwareUpgradeStateCallback$1", "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;", "onHardwareUpgrading", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "receiveUpgradingInfo", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;", "onReportUpgradeState", "uuid", "", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onUpgradeProgress", "progress", "", "curIndex", "total", "onUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "reportUpgradeInfo", "updateProgress", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements FirmwareUpgradeStateCallback {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(RobotFirmWareManagerActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g().arcProgress.setProgress(0);
            this$0.g().clLayout.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m() {
            McCommandManager.f5380a.f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(final RobotFirmWareManagerActivity this$0, UpgradeInfoModel info) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(info, "$info");
            if (this$0.isFinishing() || this$0.isDestroyed()) {
                return;
            }
            new JCommonDialog(this$0, new JCommonDialog.DialogParams(kotlin.jvm.internal.r.m(info.getTypeName(), "更新失败"), "固件更新失败，请检查网络、硬件后重试", "取消", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RobotFirmWareManagerActivity.b.o(this$0, view);
                }
            }, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RobotFirmWareManagerActivity.b.p(this$0, view);
                }
            }, false)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(RobotFirmWareManagerActivity this$0, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g().clLayout.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(RobotFirmWareManagerActivity this$0, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g().clLayout.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(RobotFirmWareManagerActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.g().arcProgress.setProgress(0);
            this$0.g().clLayout.setVisibility(8);
        }

        private final void r(final UpgradeInfoModel upgradeInfoModel, final String str, final int i, final UpgradeUploadModel upgradeUploadModel) {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.p
                @Override // java.lang.Runnable
                public final void run() {
                    RobotFirmWareManagerActivity.b.s(upgradeInfoModel, upgradeUploadModel, str, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(UpgradeInfoModel upgradeInfoModel, UpgradeUploadModel extraInfo, String uuid, int i) {
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

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void a(String uuid, final UpgradeInfoModel info, UpgradeState state, UpgradeUploadModel extraInfo) {
            kotlin.jvm.internal.r.e(uuid, "uuid");
            kotlin.jvm.internal.r.e(info, "info");
            kotlin.jvm.internal.r.e(state, "state");
            kotlin.jvm.internal.r.e(extraInfo, "extraInfo");
            if (state == UpgradeState.SINGLE_MODEL_FAIL) {
                final RobotFirmWareManagerActivity robotFirmWareManagerActivity = RobotFirmWareManagerActivity.this;
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        RobotFirmWareManagerActivity.b.n(robotFirmWareManagerActivity, info);
                    }
                });
            }
            r(info, uuid, state.getState(), extraInfo);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        @SuppressLint({"SetTextI18n"})
        public void b(UpgradeInfoModel info, j0 receiveUpgradingInfo) {
            kotlin.jvm.internal.r.e(info, "info");
            kotlin.jvm.internal.r.e(receiveUpgradingInfo, "receiveUpgradingInfo");
            RobotFirmWareManagerActivity.this.g().packIndex.setText(kotlin.jvm.internal.r.m("平台内部模块正在升级:", Integer.valueOf(receiveUpgradingInfo.f5426a)));
            int i = (receiveUpgradingInfo.f5426a / 2) + 50;
            RobotFirmWareManagerActivity.this.g().arcProgress.setProgress(i);
            if (i >= 100) {
                final RobotFirmWareManagerActivity robotFirmWareManagerActivity = RobotFirmWareManagerActivity.this;
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        RobotFirmWareManagerActivity.b.l(robotFirmWareManagerActivity);
                    }
                }, 10000L);
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        RobotFirmWareManagerActivity.b.m();
                    }
                }, 15000L);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void c(UpgradeStateModel stateModel) {
            kotlin.jvm.internal.r.e(stateModel, "stateModel");
            RobotFirmWareManagerActivity.this.S(stateModel);
            if (stateModel.getB().equals(UpgradeState.START)) {
                RobotFirmWareManagerActivity.this.g().clLayout.setVisibility(0);
                RobotFirmWareManagerActivity.this.g().arcProgress.setProgress(0);
            } else if (stateModel.getB().equals(UpgradeState.FAIL)) {
                RobotFirmWareManagerActivity.this.g().clLayout.setVisibility(8);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        @SuppressLint({"SetTextI18n"})
        public void d(int i, int i2, int i3) {
            Integer type;
            RobotFirmWareManagerActivity.this.g().packIndex.setText("正在分包:" + i + ", " + i2 + '/' + i3);
            RobotFirmwareModel robotFirmwareModel = RobotFirmWareManagerActivity.this.f7438h;
            boolean z = false;
            if (robotFirmwareModel != null && (type = robotFirmwareModel.getType()) != null && type.intValue() == 1) {
                z = true;
            }
            if (!z) {
                if (i3 != 0) {
                    RobotFirmWareManagerActivity.this.g().arcProgress.setProgress(i);
                }
            } else {
                RobotFirmWareManagerActivity.this.g().arcProgress.setProgress(i);
                if (i >= 100) {
                    final RobotFirmWareManagerActivity robotFirmWareManagerActivity = RobotFirmWareManagerActivity.this;
                    cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            RobotFirmWareManagerActivity.b.q(robotFirmWareManagerActivity);
                        }
                    }, 10000L);
                }
            }
        }
    }

    public RobotFirmWareManagerActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(RobotFirmwareModel.class, new RobotFirmWareItemBinder(new Function1<RobotFirmwareModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.RobotFirmWareManagerActivity$adapter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(RobotFirmwareModel robotFirmwareModel) {
                invoke2(robotFirmwareModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RobotFirmwareModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                this.this$0.q(it);
            }
        }, new Function1<RobotFirmwareModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.RobotFirmWareManagerActivity$adapter$1$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(RobotFirmwareModel robotFirmwareModel) {
                invoke2(robotFirmwareModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(RobotFirmwareModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                this.this$0.U(it);
            }
        }));
        fVar.g(AIFirmwareModel.class, new AIFirmwareItemBinder(new Function1<AIFirmwareModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.RobotFirmWareManagerActivity$adapter$1$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(AIFirmwareModel aIFirmwareModel) {
                invoke2(aIFirmwareModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AIFirmwareModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                AiCommandAdapter.p();
            }
        }));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f7435e = fVar;
        this.f7436f = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.k
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                RobotFirmWareManagerActivity.n(this.f7450a, (String) obj);
            }
        };
        this.f7437g = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RobotFirmWareManagerActivity.R(this.f7449a, (HardwareInfo) obj);
            }
        };
        this.i = new b();
    }

    private final void M(final Uri uri) {
        RobotFirmwareModel robotFirmwareModel = this.f7438h;
        if (robotFirmwareModel == null || uri == null) {
            cn.mucang.android.core.utils.u.h("请选择一个固件");
        } else {
            cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("选择了固件类型", robotFirmwareModel == null ? null : robotFirmwareModel.getType()));
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.s
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    RobotFirmWareManagerActivity.N(uri, this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.String] */
    public static final void N(Uri uri, final RobotFirmWareManagerActivity this$0) throws Throwable {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.h
            @Override // java.lang.Runnable
            public final void run() {
                RobotFirmWareManagerActivity.O(this.f7447a);
            }
        });
        String scheme = uri.getScheme();
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        if (this$0.p(path)) {
            cn.mucang.android.core.utils.u.h("烧写文件错误！！！");
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (TextUtils.equals(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, scheme)) {
            InputStream inputStreamOpenInputStream = this$0.getContentResolver().openInputStream(uri);
            File file = new File(this$0.getCacheDir(), "x.bin");
            cn.mucang.android.core.utils.o.f(inputStreamOpenInputStream, file);
            ref$ObjectRef.element = file.getAbsolutePath();
        } else if (TextUtils.equals("file", scheme)) {
            ref$ObjectRef.element = uri.getPath();
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.f
            @Override // java.lang.Runnable
            public final void run() {
                RobotFirmWareManagerActivity.P(this.f7445a, ref$ObjectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(RobotFirmWareManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().state.setText("开始拷贝文件...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void P(RobotFirmWareManagerActivity this$0, Ref$ObjectRef path) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(path, "$path");
        this$0.g().state.setText("拷贝文件完成,开始升级");
        UpgradeInfoModel upgradeInfoModel = new UpgradeInfoModel();
        RobotFirmwareModel robotFirmwareModel = this$0.f7438h;
        Integer type = robotFirmwareModel == null ? null : robotFirmwareModel.getType();
        kotlin.jvm.internal.r.c(type);
        upgradeInfoModel.setType(type.intValue());
        upgradeInfoModel.setDownloadFilePath((String) path.element);
        e0.j().Y(kotlin.collections.u.p(upgradeInfoModel), this$0.i);
    }

    private final void Q() {
        HardwareInfo hardwareInfoD = DeviceUtils.d();
        if (hardwareInfoD != null) {
            o(hardwareInfoD);
        }
        LiveBus.d(HardwareInfo.class).h(this, this.f7437g);
        if (hardwareInfoD == null) {
            McCommandManager.f5380a.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(RobotFirmWareManagerActivity this$0, HardwareInfo it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.o(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void S(UpgradeStateModel upgradeStateModel) {
        if (upgradeStateModel.getB() == UpgradeState.START) {
            cn.mucang.android.core.utils.t.h("DebugOta", "收到固件更新开始");
            g().state.setText("收到固件更新开始");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.FAIL) {
            cn.mucang.android.core.utils.t.h("DebugOta", "收到固件更新失败");
            g().state.setText("收到固件更新失败");
            cn.mucang.android.core.utils.u.h("固件更新失败,请退出应用重试");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SUCCESS) {
            cn.mucang.android.core.utils.t.h("DebugOta", "收到固件更新成功");
            g().state.setText("收到固件更新成功");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_START) {
            UpgradeInfoModel f5826a = upgradeStateModel.getF5826a();
            cn.mucang.android.core.utils.t.h("DebugOta", kotlin.jvm.internal.r.m("收到固件更新开始,固件类型：", f5826a == null ? null : Integer.valueOf(f5826a.getType())));
            TextView textView = g().state;
            UpgradeInfoModel f5826a2 = upgradeStateModel.getF5826a();
            textView.setText(kotlin.jvm.internal.r.m("收到固件更新开始,固件类型：", f5826a2 != null ? Integer.valueOf(f5826a2.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_PACK_FINISH) {
            cn.mucang.android.core.utils.t.h("DebugOta", "收到单个固件发包完成回调");
            TextView textView2 = g().state;
            UpgradeInfoModel f5826a3 = upgradeStateModel.getF5826a();
            textView2.setText(kotlin.jvm.internal.r.m("收到固件发包完成,固件类型：", f5826a3 != null ? Integer.valueOf(f5826a3.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_SUCCESS) {
            UpgradeInfoModel f5826a4 = upgradeStateModel.getF5826a();
            cn.mucang.android.core.utils.t.h("DebugOta", kotlin.jvm.internal.r.m("收到单个固件更新成功回调,固件类型：", f5826a4 == null ? null : Integer.valueOf(f5826a4.getType())));
            TextView textView3 = g().state;
            UpgradeInfoModel f5826a5 = upgradeStateModel.getF5826a();
            textView3.setText(kotlin.jvm.internal.r.m("收到单个固件更新成功回调,固件类型：", f5826a5 != null ? Integer.valueOf(f5826a5.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_FAIL) {
            UpgradeInfoModel f5826a6 = upgradeStateModel.getF5826a();
            cn.mucang.android.core.utils.t.h("DebugOta", kotlin.jvm.internal.r.m("收到单个固件更新失败回调,固件类型：", f5826a6 == null ? null : Integer.valueOf(f5826a6.getType())));
            TextView textView4 = g().state;
            UpgradeInfoModel f5826a7 = upgradeStateModel.getF5826a();
            textView4.setText(kotlin.jvm.internal.r.m("收到单个固件更新失败回调,固件类型：", f5826a7 != null ? Integer.valueOf(f5826a7.getType()) : null));
        }
    }

    private final void T() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.addCategory("android.intent.category.OPENABLE");
        startActivityForResult(intent, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(final RobotFirmwareModel robotFirmwareModel) {
        Integer localVersion = robotFirmwareModel.getLocalVersion();
        kotlin.jvm.internal.r.c(localVersion);
        int iIntValue = localVersion.intValue();
        Integer onlineVersion = robotFirmwareModel.getOnlineVersion();
        kotlin.jvm.internal.r.c(onlineVersion);
        if (iIntValue >= onlineVersion.intValue()) {
            cn.mucang.android.core.utils.u.h("没有新版本");
        } else {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.u
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    RobotFirmWareManagerActivity.V(this.f7461a, robotFirmwareModel);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(RobotFirmWareManagerActivity this$0, RobotFirmwareModel it) throws Throwable {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "$it");
        for (UpgradeInfoModel upgradeInfoModel : this$0.c) {
            int type = upgradeInfoModel.getType();
            Integer type2 = it.getType();
            if (type2 != null && type == type2.intValue()) {
                File file = new File(MucangConfig.getContext().getFilesDir(), h0.d(upgradeInfoModel.getFilePath()));
                upgradeInfoModel.setDownloadFilePath(file.getAbsolutePath());
                if (file.exists()) {
                    file.delete();
                }
                cn.mucang.android.core.utils.u.h("开始下载...");
                this$0.r(upgradeInfoModel.getFilePath(), file);
                cn.mucang.android.core.utils.u.h("下载完成");
                byte[] bArrB = FilesKt__FileReadWriteKt.b(file);
                byte[] bytes = "412de641678~~4de^^3e470@#088b&&24f".getBytes(Charsets.f15811a);
                kotlin.jvm.internal.r.d(bytes, "(this as java.lang.String).getBytes(charset)");
                upgradeInfoModel.setFileAvailable(TextUtils.equals(cn.mucang.android.core.encode.a.e(Digests.md5(bArrB, bytes)), upgradeInfoModel.getUid()));
                UpgradeInfoModel upgradeInfoModel2 = new UpgradeInfoModel();
                Integer type3 = it.getType();
                kotlin.jvm.internal.r.c(type3);
                upgradeInfoModel2.setType(type3.intValue());
                upgradeInfoModel2.setDownloadFilePath(upgradeInfoModel.getDownloadFilePath());
                e0.j().Y(kotlin.collections.u.p(upgradeInfoModel2), this$0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RobotFirmWareManagerActivity this$0, String str) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        for (FirmwareModel firmwareModel : this$0.b) {
            if (firmwareModel instanceof AIFirmwareModel) {
                ((AIFirmwareModel) firmwareModel).setOnlineVersion(str);
            }
            this$0.f7435e.i(this$0.b);
            this$0.f7435e.notifyDataSetChanged();
        }
    }

    private final void o(HardwareInfo hardwareInfo) {
        this.b.clear();
        List<FirmwareModel> list = this.b;
        RobotFirmwareModel robotFirmwareModel = new RobotFirmwareModel();
        robotFirmwareModel.setType(1);
        robotFirmwareModel.setName("主控模块");
        robotFirmwareModel.setHardwareVersion(Integer.valueOf(hardwareInfo.hardwareVersion));
        robotFirmwareModel.setLocalVersion(Integer.valueOf(hardwareInfo.otaVersion));
        kotlin.v vVar = kotlin.v.f15822a;
        list.add(robotFirmwareModel);
        if (AppUtils.n()) {
            List<FirmwareModel> list2 = this.b;
            RobotFirmwareModel robotFirmwareModel2 = new RobotFirmwareModel();
            robotFirmwareModel2.setType(3);
            robotFirmwareModel2.setName("采集板模块");
            robotFirmwareModel2.setHardwareVersion(Integer.valueOf(hardwareInfo.signalHardwareVersion));
            robotFirmwareModel2.setLocalVersion(Integer.valueOf(hardwareInfo.signalFirmwareVersion));
            list2.add(robotFirmwareModel2);
            List<FirmwareModel> list3 = this.b;
            RobotFirmwareModel robotFirmwareModel3 = new RobotFirmwareModel();
            robotFirmwareModel3.setType(4);
            robotFirmwareModel3.setName("超声1模块");
            robotFirmwareModel3.setHardwareVersion(Integer.valueOf(hardwareInfo.ultrasonic1HardwareVersion));
            robotFirmwareModel3.setLocalVersion(Integer.valueOf(hardwareInfo.ultrasonic1FirmwareVersion));
            list3.add(robotFirmwareModel3);
            List<FirmwareModel> list4 = this.b;
            RobotFirmwareModel robotFirmwareModel4 = new RobotFirmwareModel();
            robotFirmwareModel4.setType(5);
            robotFirmwareModel4.setName("超声2模块");
            robotFirmwareModel4.setHardwareVersion(Integer.valueOf(hardwareInfo.ultrasonic2HardwareVersion));
            robotFirmwareModel4.setLocalVersion(Integer.valueOf(hardwareInfo.ultrasonic2FirmwareVersion));
            list4.add(robotFirmwareModel4);
            List<FirmwareModel> list5 = this.b;
            RobotFirmwareModel robotFirmwareModel5 = new RobotFirmwareModel();
            robotFirmwareModel5.setType(6);
            robotFirmwareModel5.setName("安全模块");
            robotFirmwareModel5.setHardwareVersion(Integer.valueOf(hardwareInfo.micSafeHardwareVersion));
            robotFirmwareModel5.setLocalVersion(Integer.valueOf(hardwareInfo.micSafeFirmwareVersion));
            list5.add(robotFirmwareModel5);
            List<FirmwareModel> list6 = this.b;
            RobotFirmwareModel robotFirmwareModel6 = new RobotFirmwareModel();
            robotFirmwareModel6.setType(7);
            robotFirmwareModel6.setName("油门模块");
            robotFirmwareModel6.setHardwareVersion(Integer.valueOf(hardwareInfo.throttleHardwareVersion));
            robotFirmwareModel6.setLocalVersion(Integer.valueOf(hardwareInfo.throttleFirmwareVersion));
            list6.add(robotFirmwareModel6);
            List<FirmwareModel> list7 = this.b;
            RobotFirmwareModel robotFirmwareModel7 = new RobotFirmwareModel();
            robotFirmwareModel7.setType(8);
            robotFirmwareModel7.setName("档位模块");
            robotFirmwareModel7.setHardwareVersion(Integer.valueOf(hardwareInfo.gearHardwareVersion));
            robotFirmwareModel7.setLocalVersion(Integer.valueOf(hardwareInfo.gearFirmwareVersion));
            list7.add(robotFirmwareModel7);
            List<FirmwareModel> list8 = this.b;
            AIFirmwareModel aIFirmwareModel = new AIFirmwareModel();
            aIFirmwareModel.setType(99);
            aIFirmwareModel.setName("AI模块");
            aIFirmwareModel.setHardwareVersion("0");
            aIFirmwareModel.setLocalVersion("0");
            aIFirmwareModel.setOnlineVersion("0");
            list8.add(aIFirmwareModel);
        } else {
            List<FirmwareModel> list9 = this.b;
            RobotFirmwareModel robotFirmwareModel8 = new RobotFirmwareModel();
            robotFirmwareModel8.setType(7);
            robotFirmwareModel8.setName("油门模块");
            robotFirmwareModel8.setHardwareVersion(Integer.valueOf(hardwareInfo.throttleHardwareVersion));
            robotFirmwareModel8.setLocalVersion(Integer.valueOf(hardwareInfo.throttleFirmwareVersion));
            list9.add(robotFirmwareModel8);
        }
        this.f7435e.i(this.b);
        this.f7435e.notifyDataSetChanged();
    }

    private final boolean p(String str) {
        Map<Integer, String> map = this.f7434d;
        RobotFirmwareModel robotFirmwareModel = this.f7438h;
        Integer type = robotFirmwareModel == null ? null : robotFirmwareModel.getType();
        kotlin.jvm.internal.r.c(type);
        String str2 = map.get(type);
        if (str2 == null) {
            str2 = "NULL";
        }
        return StringsKt__StringsKt.T(str, str2, 0, false, 6, null) <= -1 || StringsKt__StringsKt.T(str, ".bin", 0, false, 6, null) <= -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(RobotFirmwareModel robotFirmwareModel) {
        this.f7438h = robotFirmwareModel;
        T();
    }

    private final void r(String str, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            try {
                if (file.getParentFile() != null && !file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
                try {
                    InputStream inputStreamOpenStream = new URL(str).openStream();
                    try {
                        kotlin.io.a.b(inputStreamOpenStream, fileOutputStream, 0, 2, null);
                        cn.mucang.android.core.utils.o.a(inputStreamOpenStream);
                        cn.mucang.android.core.utils.o.a(fileOutputStream);
                    } catch (Exception e2) {
                        inputStream = inputStreamOpenStream;
                        throw e2;
                    } catch (Throwable th) {
                        inputStream = inputStreamOpenStream;
                        th = th;
                        cn.mucang.android.core.utils.o.a(inputStream);
                        cn.mucang.android.core.utils.o.a(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private final void s() {
        if (AppUtils.c() || AppUtils.b()) {
            return;
        }
        AiCommandAdapter.i(this.f7436f);
    }

    private final void t() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.g
            @Override // java.lang.Runnable
            public final void run() {
                RobotFirmWareManagerActivity.u(this.f7446a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final RobotFirmWareManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            List<UpgradeInfoModel> listA = cn.mucang.jiakaoyi.uilib.unityres.a.a(false, false);
            kotlin.jvm.internal.r.d(listA, "fetchFirmware(false, false)");
            this$0.c = listA;
            for (UpgradeInfoModel upgradeInfoModel : listA) {
                for (FirmwareModel firmwareModel : this$0.b) {
                    int type = upgradeInfoModel.getType();
                    Integer type2 = firmwareModel.getType();
                    if (type2 != null && type == type2.intValue()) {
                        ((RobotFirmwareModel) firmwareModel).setOnlineVersion(Integer.valueOf(upgradeInfoModel.getVersion()));
                    }
                }
            }
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.t
                @Override // java.lang.Runnable
                public final void run() {
                    RobotFirmWareManagerActivity.v(this.f7460a);
                }
            });
        } catch (Exception e2) {
            cn.mucang.android.core.utils.u.h("获取固件版本失败");
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(RobotFirmWareManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f7435e.i(this$0.b);
        this$0.f7435e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RobotFirmWareManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(AIOtaMsgResult aIOtaMsgResult) {
        cn.mucang.android.core.utils.u.h(aIOtaMsgResult.getMsgDesc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(RobotFirmWareManagerActivity this$0, cn.mucang.android.jiakaoyi.signal.g.a.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().state.setText(aVar.f5591a);
        TextView textView = this$0.g().packIndex;
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.b);
        sb.append('/');
        sb.append(aVar.c);
        textView.setText(sb.toString());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "机器人固件管理页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        g().title.titleTv.setText("固件版本");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotFirmWareManagerActivity.w(this.f7444a, view);
            }
        });
        g().clLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotFirmWareManagerActivity.x(view);
            }
        });
        g().clLayout.setVisibility(8);
        g().firmwares.setLayoutManager(new LinearLayoutManager(this));
        g().firmwares.setAdapter(this.f7435e);
        g().title.title.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.RobotFirmWareManagerActivity.init.3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
                invoke2(view);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                kotlin.jvm.internal.r.e(it, "it");
                i0.i("__key_use_local_ota__", !i0.b("__key_use_local_ota__", false));
            }
        }, 3, null));
        Q();
        t();
        s();
        LiveBus.d(AIOtaMsgResult.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RobotFirmWareManagerActivity.y((AIOtaMsgResult) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.g.a.a.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ota.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RobotFirmWareManagerActivity.z(this.f7448a, (cn.mucang.android.jiakaoyi.signal.g.a.a) obj);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 && resultCode == -1) {
            kotlin.jvm.internal.r.c(data);
            M(data.getData());
        }
    }
}
