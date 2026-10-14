package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceMainActivity;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.detector.fencepage.FenceDetectorPage;
import cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.TestStopPage;
import cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity;
import cn.mucang.android.jiakaoyi.teachingk2.setting.CameraManageActivity;
import cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.setting.FaceSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.setting.SundialCameraSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.TeachingSettingActivity;
import cn.mucang.android.jiakaoyi.teachingk2.ui.test.DebugProtocolActivity;
import cn.mucang.jiakaoyi.uilib.language.LanguageSelectDialog;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.AboutActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider;
import cn.mucang.jiakaoyi.uilib.ui.setting.BrakeStateDebugActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.DebugSettingActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingSubTitleItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.HardwareGearGyroLearningPage;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.tts.TtsSettingActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u000bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getSetting", "", "", "loadType", "", "itemList", "Landroidx/lifecycle/MutableLiveData;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class SettingProvider extends AbsSettingProvider {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$10", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements SettingItemClick {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/enableDBD");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$6", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a0 implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f7464a;

        a0(int i) {
            this.f7464a = i;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            TeachingSettingActivity.a aVar = TeachingSettingActivity.f8249d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context, this.f7464a);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$11", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SettingItemClick {
        b() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            CheckModuleSettingActivity.b bVar = CheckModuleSettingActivity.c;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            bVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$7", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b0 implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.lifecycle.z<List<Object>> f7465a;

        b0(androidx.lifecycle.z<List<Object>> zVar) {
            this.f7465a = zVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SettingItem settingItem, androidx.lifecycle.z itemList, int i, int i2, Intent intent) {
            String str;
            kotlin.jvm.internal.r.e(settingItem, "$settingItem");
            kotlin.jvm.internal.r.e(itemList, "$itemList");
            if (i == 1001 && i2 == -1) {
                ExamSiteModel examSiteModelM = ExamSiteUtil.m(KeMu.K2);
                String str2 = "默认规则组";
                if (examSiteModelM != null && (str = examSiteModelM.examSiteName) != null) {
                    str2 = str;
                }
                settingItem.i(str2);
                itemList.l(itemList.e());
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, final SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SwitchExamSiteRuleActivity.a aVar = SwitchExamSiteRuleActivity.f9592d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            Intent intentA = aVar.a(context, true, KeMu.K2);
            Context context2 = view.getContext();
            Objects.requireNonNull(context2, "null cannot be cast to non-null type android.app.Activity");
            f.a.a.a.j.a aVarA = f.a.a.a.j.a.a((Activity) context2);
            final androidx.lifecycle.z<List<Object>> zVar = this.f7465a;
            aVarA.c(intentA, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.provider.a
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    SettingProvider.b0.c(settingItem, zVar, i, i2, intent);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$12", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f7466a;

        c(int i) {
            this.f7466a = i;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SignalCheckActivity.b bVar = SignalCheckActivity.f10203h;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            bVar.b(context, this.f7466a);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$8", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c0 implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.lifecycle.z<List<Object>> f7467a;

        c0(androidx.lifecycle.z<List<Object>> zVar) {
            this.f7467a = zVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SettingItem settingItem, androidx.lifecycle.z itemList, int i, int i2, Intent intent) {
            String str;
            kotlin.jvm.internal.r.e(settingItem, "$settingItem");
            kotlin.jvm.internal.r.e(itemList, "$itemList");
            if (i == 1001 && i2 == -1) {
                ExamSiteModel examSiteModelM = ExamSiteUtil.m(KeMu.K3);
                String str2 = "默认规则组";
                if (examSiteModelM != null && (str = examSiteModelM.examSiteName) != null) {
                    str2 = str;
                }
                settingItem.i(str2);
                itemList.l(itemList.e());
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, final SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SwitchExamSiteRuleActivity.a aVar = SwitchExamSiteRuleActivity.f9592d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            Intent intentA = aVar.a(context, true, KeMu.K3);
            Context context2 = view.getContext();
            Objects.requireNonNull(context2, "null cannot be cast to non-null type android.app.Activity");
            f.a.a.a.j.a aVarA = f.a.a.a.j.a.a((Activity) context2);
            final androidx.lifecycle.z<List<Object>> zVar = this.f7467a;
            aVarA.c(intentA, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.provider.b
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    SettingProvider.c0.c(settingItem, zVar, i, i2, intent);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$13", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements SettingItemClick {
        d() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/radarCheck");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$9", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d0 implements SettingItemClick {
        d0() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/safeData");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$14", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements SettingItemClick {
        e() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/calibration");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$15", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class f implements SettingItemClick {
        f() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            if (!MucangConfig.v()) {
                HardwareInfo hardwareInfoD = DeviceUtils.d();
                if (hardwareInfoD == null) {
                    cn.mucang.android.core.utils.u.h("获取硬件信息失败");
                    return;
                } else if (hardwareInfoD.otaVersion < 47) {
                    cn.mucang.android.core.utils.u.h("请先升级主控");
                    return;
                } else if (hardwareInfoD.gearFirmwareVersion < 17) {
                    cn.mucang.android.core.utils.u.h("请先升级挡位模块");
                    return;
                }
            }
            HardwareGearGyroLearningPage.P(view.getContext());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$16", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class g implements SettingItemClick {
        g() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            BrakeStateDebugActivity.a aVar = BrakeStateDebugActivity.f9872f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$17", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class h implements SettingItemClick {
        h() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/AISignal");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$18", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class i implements SettingItemClick {
        i() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            CameraPushSettingActivity.a aVar = CameraPushSettingActivity.c;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$19", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class j implements SettingItemClick {
        j() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            FaceSettingActivity.a aVar = FaceSettingActivity.f7913g;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class k implements SettingItemClick {
        k() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/carInfo");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$20", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class l implements SettingItemClick {
        l() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SundialCameraSettingActivity.a aVar = SundialCameraSettingActivity.c;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$21", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class m implements SettingItemClick {
        m() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            CameraManageActivity.b bVar = CameraManageActivity.f7910d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            bVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$22", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class n implements SettingItemClick {
        n() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            FenceDetectorPage.v(view.getContext());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$23", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class o implements SettingItemClick {
        o() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            TestStopPage.A(view.getContext());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$24", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class p implements SettingItemClick {
        p() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            AutoTeachDebugActivity.a aVar = AutoTeachDebugActivity.f7907f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$25", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class q implements SettingItemClick {
        q() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            AcceptanceMainActivity.b bVar = AcceptanceMainActivity.f6002d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            bVar.d(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$26", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class r implements SettingItemClick {
        r() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            TtsSettingActivity.a aVar = TtsSettingActivity.f10254d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$27", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class s implements SettingItemClick {
        s() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            AboutActivity.a aVar = AboutActivity.f9871a;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$28", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class t implements SettingItemClick {
        t() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            new LanguageSelectDialog(context).show();
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$29", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class u implements SettingItemClick {
        u() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            DebugSettingActivity.a aVar = DebugSettingActivity.b;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$2", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class v implements SettingItemClick {
        v() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/carModel");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$30", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class w implements SettingItemClick {
        w() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            DebugProtocolActivity.a aVar = DebugProtocolActivity.b;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$3", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class x implements SettingItemClick {
        x() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/appUpgrade");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$4", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class y implements SettingItemClick {
        y() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/firmware");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$5", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class z implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f7468a;

        z(boolean z) {
            this.f7468a = z;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e(kotlin.jvm.internal.r.m("http://robot.nav.mucang.cn/training?role=", Integer.valueOf(this.f7468a ? 1 : 0)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingProvider(Bundle args) {
        super(args);
        kotlin.jvm.internal.r.e(args, "args");
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider
    public List<Object> getSetting(int i2, androidx.lifecycle.z<List<Object>> itemList) {
        String str;
        String str2;
        kotlin.jvm.internal.r.e(itemList, "itemList");
        boolean z2 = i2 == 3;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingSubTitleItem("基础设置"));
        arrayList.add(1, new SettingItem(R.drawable.ic_car_setting, "车辆信息设置", null, true, new k(), false, false, null, 224, null));
        if (z2) {
            arrayList.add(new SettingItem(R.drawable.setting_ic_car, "车身数据管理", null, true, new v(), false, false, null, 224, null));
        }
        arrayList.add(new SettingItem(R.drawable.setting_ic_upgrade, "检查更新", null, true, new x(), false, false, null, 224, null));
        if (z2) {
            arrayList.add(new SettingItem(R.drawable.setting_ic_ota, "固件版本", null, true, new y(), false, false, null, 224, null));
        }
        arrayList.add(new SettingSubTitleItem("参数配置"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_location, "训练场设置", "", true, new z(z2), false, false, null, 224, null));
        if (z2) {
            arrayList.add(new SettingItem(R.drawable.setting_ic_teaching, "教学设置", null, true, new a0(i2), false, false, null, 224, null));
            int i3 = R.drawable.ic_switch_exam_rule;
            ExamSiteModel examSiteModelM = ExamSiteUtil.m(KeMu.K2);
            arrayList.add(new SettingItem(i3, "科二考试评判规则设置", (examSiteModelM == null || (str = examSiteModelM.examSiteName) == null) ? "默认规则组" : str, true, new b0(itemList), false, false, null, 224, null));
            ExamSiteModel examSiteModelM2 = ExamSiteUtil.m(KeMu.K3);
            arrayList.add(new SettingItem(i3, "科三考试评判规则设置", (examSiteModelM2 == null || (str2 = examSiteModelM2.examSiteName) == null) ? "默认规则组" : str2, true, new c0(itemList), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.ic_data, "安全参数管理", null, true, new d0(), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.setting_ic_dbd, "驾驶行为检测设置", null, true, new a(), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.ic_check_module, "自检模块管理", null, true, new b(), false, false, null, 224, null));
        }
        arrayList.add(new SettingSubTitleItem("检测调试"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_signal, "车辆信号检测", null, true, new c(i2), false, false, null, 224, null));
        if (z2) {
            arrayList.add(new SettingItem(R.drawable.setting_ic_leida, "雷达信号调试", null, true, new d(), false, false, null, 224, null));
            int i4 = R.drawable.setting_ic_calibration;
            arrayList.add(new SettingItem(i4, "车机参数标定", null, true, new e(), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.setting_ic_gear, "区域法挡位标定", null, true, new f(), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.setting_ic_brake, "刹车状态历史记录", null, true, new g(), false, false, null, 224, null));
            arrayList.add(new SettingItem(R.drawable.setting_ic_ai, "AI调试", null, true, new h(), false, false, null, 224, null));
            int i5 = R.drawable.setting_ic_video;
            arrayList.add(new SettingItem(i5, "视频设置", null, true, new i(), false, false, null, 224, null));
            arrayList.add(new SettingItem(i5, "人脸登录设置", null, true, new j(), false, false, null, 224, null));
            if (LocalConfigManager.f(LocalConfig.EnableSundial)) {
                arrayList.add(new SettingItem(i5, "计时拍照设置", null, true, new l(), false, false, null, 224, null));
            }
            int i6 = R.drawable.setting_ic_camera;
            arrayList.add(new SettingItem(i6, "摄像头管理", null, true, new m(), false, false, null, 224, null));
            arrayList.add(new SettingItem(i6, "电子围栏调试", null, true, new n(), false, false, null, 224, null));
            arrayList.add(new SettingItem(i6, "定点刹车调试", null, true, new o(), false, false, null, 224, null));
            arrayList.add(new SettingItem(i4, "自动示教调试", null, true, new p(), false, false, null, 224, null));
            arrayList.add(new SettingItem(i4, "验收模式", null, true, new q(), false, false, null, 224, null));
        }
        arrayList.add(new SettingSubTitleItem("其他配置"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_voice, "语音设置", null, true, new r(), false, false, null, 224, null));
        int i7 = R.drawable.setting_ic_kefu;
        arrayList.add(new SettingItem(i7, "联系我们", null, true, new s(), false, false, null, 224, null));
        if (f0.c()) {
            arrayList.add(new SettingItem(i7, "语言切换", null, true, new t(), false, false, null, 224, null));
        }
        if (MucangConfig.v() || cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            arrayList.add(new SettingItem(0, "调试页面", null, false, new u(), false, false, null, 224, null));
            arrayList.add(new SettingItem(0, "硬件协议调试", null, false, new w(), false, false, null, 224, null));
        }
        return arrayList;
    }
}
