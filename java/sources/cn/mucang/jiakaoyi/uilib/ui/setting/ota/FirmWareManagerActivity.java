package cn.mucang.jiakaoyi.uilib.ui.setting.ota;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback;
import cn.mucang.android.jiakaoyi.signal.k.e0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import cn.mucang.jiakaoyi.uilib.api.OnlyJkyApi;
import com.mobile.auth.gatewayauth.Constant;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityFirmwareManagerBinding;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0013\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\rH\u0002J\b\u0010 \u001a\u00020\u0007H\u0016J\b\u0010!\u001a\u00020\u0019H\u0014J\u0012\u0010\"\u001a\u00020\u00192\b\u0010#\u001a\u0004\u0018\u00010$H\u0002J\b\u0010%\u001a\u00020\u0019H\u0002J\"\u0010&\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010)H\u0014J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020\u0019H\u0002R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;", "()V", "CHECK_NAME_MAP", "", "", "", "getCHECK_NAME_MAP", "()Ljava/util/Map;", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "curModel", "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;", "data", "", "getData", "()Ljava/util/List;", "firmwareUpgradeStateCallback", "cn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1;", "observable", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;", "buildData", "", "hardwareInfo", "checkFileNameForError", "", Constant.PROTOCOL_WEBVIEW_NAME, "checkModule", "it", "getStatName", "init", "loadFile", "uri", "Landroid/net/Uri;", "loadFirmwareData", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "Landroid/content/Intent;", "onFirmwareUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "openFileSelector", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FirmWareManagerActivity extends BaseViewBindingActivity<ActivityFirmwareManagerBinding> {
    private final List<FirmwareModel> b = new ArrayList();
    private final Map<Integer, String> c = o0.k(kotlin.l.a(1, "MST"), kotlin.l.a(3, "SCC"), kotlin.l.a(4, "FRT_UTS"), kotlin.l.a(5, "BAK_UTS"), kotlin.l.a(6, "SFT"), kotlin.l.a(7, "THR"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f10175d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0<HardwareInfo> f10176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FirmwareModel f10177f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f10178g;

    @Metadata(d1 = {"\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J.\u0010\u0017\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u0019"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1", "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;", "onHardwareUpgrading", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "receiveUpgradingInfo", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;", "onReportUpgradeState", "uuid", "", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onUpgradeProgress", "progress", "", "curIndex", "total", "onUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "reportUpgradeInfo", "updateProgress", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements FirmwareUpgradeStateCallback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(FirmWareManagerActivity this$0) {
            r.e(this$0, "this$0");
            this$0.g().arcProgress.setProgress(0);
            this$0.g().clLayout.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j() {
            McCommandManager.f5380a.f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(FirmWareManagerActivity this$0) {
            r.e(this$0, "this$0");
            this$0.g().arcProgress.setProgress(0);
            this$0.g().clLayout.setVisibility(8);
        }

        private final void l(final UpgradeInfoModel upgradeInfoModel, final String str, final int i, final UpgradeUploadModel upgradeUploadModel) {
            n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.i
                @Override // java.lang.Runnable
                public final void run() {
                    FirmWareManagerActivity.a.m(upgradeInfoModel, upgradeUploadModel, str, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(UpgradeInfoModel upgradeInfoModel, UpgradeUploadModel extraInfo, String uuid, int i) {
            r.e(extraInfo, "$extraInfo");
            r.e(uuid, "$uuid");
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m139constructorimpl(new OnlyJkyApi().m(upgradeInfoModel, extraInfo, uuid, i));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void a(String uuid, UpgradeInfoModel info, UpgradeState state, UpgradeUploadModel extraInfo) {
            r.e(uuid, "uuid");
            r.e(info, "info");
            r.e(state, "state");
            r.e(extraInfo, "extraInfo");
            l(info, uuid, state.getState(), extraInfo);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void b(UpgradeInfoModel info, j0 receiveUpgradingInfo) {
            r.e(info, "info");
            r.e(receiveUpgradingInfo, "receiveUpgradingInfo");
            FirmWareManagerActivity.this.g().packIndex.setText(r.m("平台内部模块正在升级:", Integer.valueOf(receiveUpgradingInfo.f5426a)));
            int i = (receiveUpgradingInfo.f5426a / 2) + 50;
            FirmWareManagerActivity.this.g().arcProgress.setProgress(i);
            if (i >= 100) {
                final FirmWareManagerActivity firmWareManagerActivity = FirmWareManagerActivity.this;
                u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        FirmWareManagerActivity.a.i(firmWareManagerActivity);
                    }
                }, 10000L);
                u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        FirmWareManagerActivity.a.j();
                    }
                }, 15000L);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void c(UpgradeStateModel stateModel) {
            r.e(stateModel, "stateModel");
            FirmWareManagerActivity.this.F(stateModel);
            if (stateModel.getB().equals(UpgradeState.START)) {
                FirmWareManagerActivity.this.g().clLayout.setVisibility(0);
                FirmWareManagerActivity.this.g().arcProgress.setProgress(0);
            } else if (stateModel.getB().equals(UpgradeState.FAIL)) {
                FirmWareManagerActivity.this.g().clLayout.setVisibility(8);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback
        public void d(int i, int i2, int i3) {
            FirmWareManagerActivity.this.g().packIndex.setText("正在分包:" + i + ", " + i2 + '/' + i3);
            FirmwareModel firmwareModel = FirmWareManagerActivity.this.f10177f;
            boolean z = false;
            if (firmwareModel != null && firmwareModel.type == 1) {
                z = true;
            }
            if (!z) {
                if (i3 != 0) {
                    FirmWareManagerActivity.this.g().arcProgress.setProgress(i / 2);
                }
            } else {
                FirmWareManagerActivity.this.g().arcProgress.setProgress(i);
                if (i >= 100) {
                    final FirmWareManagerActivity firmWareManagerActivity = FirmWareManagerActivity.this;
                    u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            FirmWareManagerActivity.a.k(firmWareManagerActivity);
                        }
                    }, 10000L);
                }
            }
        }
    }

    public FirmWareManagerActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(FirmwareModel.class, new FirmWareItemBinder(new Function1<FirmwareModel, v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.FirmWareManagerActivity$adapter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(FirmwareModel firmwareModel) {
                invoke2(firmwareModel);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FirmwareModel it) {
                r.e(it, "it");
                this.this$0.o(it);
            }
        }));
        v vVar = v.f15822a;
        this.f10175d = fVar;
        this.f10176e = new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                FirmWareManagerActivity.E(this.f10182a, (HardwareInfo) obj);
            }
        };
        this.f10178g = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.String] */
    public static final void A(Uri uri, final FirmWareManagerActivity this$0) throws Throwable {
        r.e(this$0, "this$0");
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.d
            @Override // java.lang.Runnable
            public final void run() {
                FirmWareManagerActivity.B(this.f10183a);
            }
        });
        String scheme = uri.getScheme();
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        if (this$0.n(path)) {
            u.h("烧写文件错误！！！");
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (TextUtils.equals(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, scheme)) {
            InputStream inputStreamOpenInputStream = this$0.getContentResolver().openInputStream(uri);
            File file = new File(this$0.getCacheDir(), "x.bin");
            o.f(inputStreamOpenInputStream, file);
            ref$ObjectRef.element = file.getAbsolutePath();
        } else if (TextUtils.equals("file", scheme)) {
            ref$ObjectRef.element = uri.getPath();
        }
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.l
            @Override // java.lang.Runnable
            public final void run() {
                FirmWareManagerActivity.C(this.f10192a, ref$ObjectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(FirmWareManagerActivity this$0) {
        r.e(this$0, "this$0");
        this$0.g().state.setText("开始拷贝文件...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void C(FirmWareManagerActivity this$0, Ref$ObjectRef path) {
        r.e(this$0, "this$0");
        r.e(path, "$path");
        this$0.g().state.setText("拷贝文件完成,开始升级");
        UpgradeInfoModel upgradeInfoModel = new UpgradeInfoModel();
        FirmwareModel firmwareModel = this$0.f10177f;
        Integer numValueOf = firmwareModel == null ? null : Integer.valueOf(firmwareModel.type);
        r.c(numValueOf);
        upgradeInfoModel.setType(numValueOf.intValue());
        upgradeInfoModel.setDownloadFilePath((String) path.element);
        e0.j().Y(kotlin.collections.u.p(upgradeInfoModel), this$0.f10178g);
    }

    private final void D() {
        HardwareInfo hardwareInfoD = DeviceUtils.d();
        if (hardwareInfoD != null) {
            m(hardwareInfoD);
        }
        LiveBus.d(HardwareInfo.class).h(this, this.f10176e);
        if (hardwareInfoD == null) {
            McCommandManager.f5380a.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(FirmWareManagerActivity this$0, HardwareInfo it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.m(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(UpgradeStateModel upgradeStateModel) {
        if (upgradeStateModel.getB() == UpgradeState.START) {
            t.h("DebugOta", "收到固件更新开始");
            g().state.setText("收到固件更新开始");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.FAIL) {
            t.h("DebugOta", "收到固件更新失败");
            g().state.setText("收到固件更新失败");
            u.h("固件更新失败,请退出应用重试");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SUCCESS) {
            t.h("DebugOta", "收到固件更新成功");
            g().state.setText("收到固件更新成功");
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_START) {
            UpgradeInfoModel f5826a = upgradeStateModel.getF5826a();
            t.h("DebugOta", r.m("收到固件更新开始,固件类型：", f5826a == null ? null : Integer.valueOf(f5826a.getType())));
            TextView textView = g().state;
            UpgradeInfoModel f5826a2 = upgradeStateModel.getF5826a();
            textView.setText(r.m("收到固件更新开始,固件类型：", f5826a2 != null ? Integer.valueOf(f5826a2.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_PACK_FINISH) {
            t.h("DebugOta", "收到单个固件发包完成回调");
            TextView textView2 = g().state;
            UpgradeInfoModel f5826a3 = upgradeStateModel.getF5826a();
            textView2.setText(r.m("收到固件发包完成,固件类型：", f5826a3 != null ? Integer.valueOf(f5826a3.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_SUCCESS) {
            UpgradeInfoModel f5826a4 = upgradeStateModel.getF5826a();
            t.h("DebugOta", r.m("收到单个固件更新成功回调,固件类型：", f5826a4 == null ? null : Integer.valueOf(f5826a4.getType())));
            TextView textView3 = g().state;
            UpgradeInfoModel f5826a5 = upgradeStateModel.getF5826a();
            textView3.setText(r.m("收到单个固件更新成功回调,固件类型：", f5826a5 != null ? Integer.valueOf(f5826a5.getType()) : null));
            return;
        }
        if (upgradeStateModel.getB() == UpgradeState.SINGLE_MODEL_FAIL) {
            UpgradeInfoModel f5826a6 = upgradeStateModel.getF5826a();
            t.h("DebugOta", r.m("收到单个固件更新失败回调,固件类型：", f5826a6 == null ? null : Integer.valueOf(f5826a6.getType())));
            TextView textView4 = g().state;
            UpgradeInfoModel f5826a7 = upgradeStateModel.getF5826a();
            textView4.setText(r.m("收到单个固件更新失败回调,固件类型：", f5826a7 != null ? Integer.valueOf(f5826a7.getType()) : null));
        }
    }

    private final void G() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.addCategory("android.intent.category.OPENABLE");
        startActivityForResult(intent, 1);
    }

    private final void m(HardwareInfo hardwareInfo) {
        this.b.clear();
        List<FirmwareModel> list = this.b;
        FirmwareModel firmwareModel = new FirmwareModel();
        firmwareModel.type = 1;
        firmwareModel.name = "主控模块";
        firmwareModel.localVersion = hardwareInfo.otaVersion;
        v vVar = v.f15822a;
        list.add(firmwareModel);
        List<FirmwareModel> list2 = this.b;
        FirmwareModel firmwareModel2 = new FirmwareModel();
        firmwareModel2.type = 2;
        firmwareModel2.name = "OBD模块";
        firmwareModel2.localVersion = hardwareInfo.obdVersion;
        list2.add(firmwareModel2);
        this.f10175d.i(this.b);
        this.f10175d.notifyDataSetChanged();
    }

    private final boolean n(String str) {
        Map<Integer, String> map = this.c;
        FirmwareModel firmwareModel = this.f10177f;
        Integer numValueOf = firmwareModel == null ? null : Integer.valueOf(firmwareModel.type);
        r.c(numValueOf);
        String str2 = map.get(numValueOf);
        if (str2 == null) {
            str2 = "NULL";
        }
        return StringsKt__StringsKt.T(str, str2, 0, false, 6, null) <= -1 || StringsKt__StringsKt.T(str, ".bin", 0, false, 6, null) <= -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(FirmwareModel firmwareModel) {
        this.f10177f = firmwareModel;
        G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(FirmWareManagerActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(FirmWareManagerActivity this$0, cn.mucang.android.jiakaoyi.signal.g.a.a aVar) {
        r.e(this$0, "this$0");
        this$0.g().state.setText(aVar.f5591a);
        TextView textView = this$0.g().packIndex;
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.b);
        sb.append('/');
        sb.append(aVar.c);
        textView.setText(sb.toString());
    }

    private final void z(final Uri uri) {
        FirmwareModel firmwareModel = this.f10177f;
        if (firmwareModel == null || uri == null) {
            u.h("请选择一个固件");
        } else {
            u.h(r.m("选择了固件类型", firmwareModel == null ? null : Integer.valueOf(firmwareModel.type)));
            n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.e
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    FirmWareManagerActivity.A(uri, this);
                }
            });
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "机器人固件管理页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("模块管理");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmWareManagerActivity.p(this.f10191a, view);
            }
        });
        g().clLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmWareManagerActivity.q(view);
            }
        });
        g().clLayout.setVisibility(8);
        g().firmwares.setLayoutManager(new LinearLayoutManager(this));
        g().firmwares.setAdapter(this.f10175d);
        D();
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.g.a.a.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.ota.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                FirmWareManagerActivity.r(this.f10181a, (cn.mucang.android.jiakaoyi.signal.g.a.a) obj);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 && resultCode == -1) {
            r.c(data);
            z(data.getData());
        }
    }
}
