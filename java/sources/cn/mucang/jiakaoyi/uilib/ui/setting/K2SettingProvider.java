package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity;
import cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity;
import cn.mucang.jiakaoyi.uilib.ui.check.SelfCheckActivity;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PasswordDialog;
import cn.mucang.jiakaoyi.uilib.ui.login.CoachLoginFragment;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.GearGyroLearningPage;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.GearLearnActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.tts.TtsSettingActivity;
import cn.mucang.jiakaoyi.uilib.utils.DownloadUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u000bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getSetting", "", "", "loadType", "", "itemList", "Landroidx/lifecycle/MutableLiveData;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K2SettingProvider extends AbsSettingProvider {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$11", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements SettingItemClick {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/motoLightSetting");
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$14", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SettingItemClick {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(String str) {
            if (cn.mucang.android.core.utils.n0.g(str)) {
                f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/k2_coach_setting");
            } else {
                cn.mucang.android.core.utils.u.h("登录失败");
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            Activity activityI = MucangConfig.i();
            Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            CoachLoginFragment.a aVar = CoachLoginFragment.f9866d;
            FragmentManager supportFragmentManager = ((androidx.fragment.app.d) activityI).getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "activity.supportFragmentManager");
            aVar.a(supportFragmentManager, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.e0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    K2SettingProvider.b.c((String) obj);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$15", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements SettingItemClick {
        c() {
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

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$16", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements SettingItemClick {
        d() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            cn.mucang.jiakaoyi.uilib.upgrade.update.q.d(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$17", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements SettingItemClick {
        e() {
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

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$18", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class f implements SettingItemClick {
        f() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            DownloadUtils.f();
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class g implements SettingItemClick {
        g() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SignalCheckActivity.b bVar = SignalCheckActivity.f10203h;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            bVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$2", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class h implements SettingItemClick {
        h() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            GearLearnActivity.a aVar = GearLearnActivity.f9970g;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$3", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class i implements SettingItemClick {
        i() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            GearGyroLearningPage.o0(view.getContext());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$4", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class j implements SettingItemClick {
        j() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            SelfCheckActivity.a aVar = SelfCheckActivity.f9767h;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            SelfCheckActivity.a.c(aVar, context, false, false, 6, null);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$5", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class k implements SettingItemClick {
        k() {
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

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$6", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class l implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ KeMu f9889a;
        final /* synthetic */ androidx.lifecycle.z<List<Object>> b;

        l(KeMu keMu, androidx.lifecycle.z<List<Object>> zVar) {
            this.f9889a = keMu;
            this.b = zVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SettingItem settingItem, KeMu keMu, androidx.lifecycle.z itemList, int i, int i2, Intent intent) {
            String str;
            kotlin.jvm.internal.r.e(settingItem, "$settingItem");
            kotlin.jvm.internal.r.e(keMu, "$keMu");
            kotlin.jvm.internal.r.e(itemList, "$itemList");
            if (i == 1001 && i2 == -1) {
                ExamSiteModel examSiteModelM = ExamSiteUtil.m(keMu);
                String str2 = "默认考场";
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
            Intent intentA = aVar.a(context, true, this.f9889a);
            Context context2 = view.getContext();
            Objects.requireNonNull(context2, "null cannot be cast to non-null type android.app.Activity");
            f.a.a.a.j.a aVarA = f.a.a.a.j.a.a((Activity) context2);
            final KeMu keMu = this.f9889a;
            final androidx.lifecycle.z<List<Object>> zVar = this.b;
            aVarA.c(intentA, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.f0
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    K2SettingProvider.l.c(settingItem, keMu, zVar, i, i2, intent);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$7", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class m implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ KeMu f9890a;

        m(KeMu keMu) {
            this.f9890a = keMu;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            if (!settingItem.getHavePermission()) {
                cn.mucang.android.core.utils.u.h("您没有权限!");
                return;
            }
            ExamSiteModel examSiteModelM = ExamSiteUtil.m(this.f9890a);
            if (examSiteModelM == null) {
                examSiteModelM = new ExamSiteModel();
                examSiteModelM.examSiteId = 0L;
                examSiteModelM.examSiteName = "默认考场";
                examSiteModelM.cityCode = CityCodeManager.d();
            }
            DeductSettingActivity.a aVar = DeductSettingActivity.f9225d;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            aVar.a(context, examSiteModelM, this.f9890a);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$9", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class n implements SettingItemClick {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ KeMu f9891a;

        n(KeMu keMu) {
            this.f9891a = keMu;
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            kotlin.jvm.internal.r.e(view, "view");
            kotlin.jvm.internal.r.e(settingItem, "settingItem");
            if (!settingItem.getHavePermission()) {
                cn.mucang.android.core.utils.u.h("您没有权限!");
                return;
            }
            ExamSiteModel examSiteModelM = ExamSiteUtil.m(this.f9891a);
            if (examSiteModelM == null) {
                examSiteModelM = new ExamSiteModel();
                examSiteModelM.examSiteId = 0L;
                examSiteModelM.examSiteName = "默认考场";
                examSiteModelM.cityCode = CityCodeManager.d();
            }
            RuleSettingActivity.a aVar = RuleSettingActivity.f9496e;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "view.context");
            RuleSettingActivity.a.b(aVar, context, examSiteModelM, this.f9891a, false, 8, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K2SettingProvider(Bundle args) {
        super(args);
        kotlin.jvm.internal.r.e(args, "args");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getSetting$lambda-0, reason: not valid java name */
    public static final void m115getSetting$lambda0(KeMu keMu, Context it) {
        kotlin.jvm.internal.r.e(keMu, "$keMu");
        RuleDeductDiffActivity.Companion companion = RuleDeductDiffActivity.f9287e;
        kotlin.jvm.internal.r.d(it, "it");
        ExamSiteModel examSiteModelM = ExamSiteUtil.m(keMu);
        companion.c(it, examSiteModelM == null ? 0L : examSiteModelM.examSiteId, false, keMu, (96 & 16) != 0 ? DataType.RULE.getType() : DataType.DEDUCT.getType(), (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? null : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getSetting$lambda-1, reason: not valid java name */
    public static final void m116getSetting$lambda1(KeMu keMu, Context it) {
        kotlin.jvm.internal.r.e(keMu, "$keMu");
        RuleDeductDiffActivity.Companion companion = RuleDeductDiffActivity.f9287e;
        kotlin.jvm.internal.r.d(it, "it");
        ExamSiteModel examSiteModelM = ExamSiteUtil.m(keMu);
        companion.c(it, examSiteModelM == null ? 0L : examSiteModelM.examSiteId, false, keMu, (96 & 16) != 0 ? DataType.RULE.getType() : DataType.RULE.getType(), (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? null : null);
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.setting.AbsSettingProvider
    public List<Object> getSetting(int i2, androidx.lifecycle.z<List<Object>> itemList) {
        final KeMu keMu;
        String str;
        kotlin.jvm.internal.r.e(itemList, "itemList");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingSubTitleItem("检测调试"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_signal, "车辆信号检测", null, true, new g(), false, false, null, 224, null));
        int i3 = R.drawable.setting_ic_gear;
        arrayList.add(new SettingItem(i3, "挡位学习", null, true, new h(), false, false, null, 224, null));
        arrayList.add(new SettingItem(i3, "姿态挡位学习", null, true, new i(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_check, "系统自检", null, true, new j(), false, false, null, 224, null));
        if (MucangConfig.v() || cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            arrayList.add(new SettingItem(0, "调试页面", null, false, new k(), false, false, null, 224, null));
        }
        arrayList.add(new SettingSubTitleItem("规则设置"));
        if (AppUtils.l()) {
            keMu = KeMu.B2;
        } else {
            keMu = AppUtils.i() ? KeMu.Moto : KeMu.K2;
        }
        int i4 = R.drawable.ic_switch_exam_rule;
        ExamSiteModel examSiteModelM = ExamSiteUtil.m(keMu);
        arrayList.add(new SettingItem(i4, "评判规则考场设置", (examSiteModelM == null || (str = examSiteModelM.examSiteName) == null) ? "默认考场" : str, true, new l(keMu, itemList), true, false, null, 192, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_deduct, "扣分设置", null, true, new m(keMu), true, false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.g0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K2SettingProvider.m115getSetting$lambda0(keMu, (Context) obj);
            }
        }, 64, null));
        int i5 = R.drawable.setting_ic_rule;
        arrayList.add(new SettingItem(i5, "评判规则", null, true, new n(keMu), true, false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.d0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K2SettingProvider.m116getSetting$lambda1(keMu, (Context) obj);
            }
        }, 64, null));
        if (AppUtils.i()) {
            arrayList.add(new SettingItem(i5, "灯光设置", null, true, new a(), true, false, null, 192, null));
        }
        arrayList.add(new SettingSubTitleItem("设备管理"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_admin, "管理员设置", null, true, new SettingItemClick() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.K2SettingProvider.getSetting.12
            @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
            public void a(View view, SettingItem settingItem) {
                kotlin.jvm.internal.r.e(view, "view");
                kotlin.jvm.internal.r.e(settingItem, "settingItem");
                Context context = view.getContext();
                kotlin.jvm.internal.r.d(context, "view.context");
                PasswordDialog passwordDialog = new PasswordDialog(context, PasswordDialog.PasswordType.Admin);
                passwordDialog.i(new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.K2SettingProvider$getSetting$12$onClick$1$1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/adminCar");
                    }
                });
                passwordDialog.show();
            }
        }, true, false, null, 192, null));
        int i6 = R.drawable.setting_ic_service;
        arrayList.add(new SettingItem(i6, "服务商设置", null, true, new SettingItemClick() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.K2SettingProvider.getSetting.13
            @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
            public void a(View view, SettingItem settingItem) {
                kotlin.jvm.internal.r.e(view, "view");
                kotlin.jvm.internal.r.e(settingItem, "settingItem");
                Context context = view.getContext();
                kotlin.jvm.internal.r.d(context, "view.context");
                PasswordDialog passwordDialog = new PasswordDialog(context, PasswordDialog.PasswordType.Service);
                passwordDialog.i(new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.K2SettingProvider$getSetting$13$onClick$1$1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        f.a.a.a.activity.h.e("http://jiakaoyi.nav.mucang.cn/agentManage");
                    }
                });
                passwordDialog.show();
            }
        }, true, false, null, 192, null));
        arrayList.add(new SettingItem(i6, "教练设置", null, true, new b(), true, false, null, 192, null));
        arrayList.add(new SettingSubTitleItem("发音设置"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_voice, "发音设置", null, true, new c(), false, false, null, 224, null));
        arrayList.add(new SettingSubTitleItem("关于场考仪"));
        arrayList.add(new SettingItem(R.drawable.setting_ic_upgrade, "更新升级", null, true, new d(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_kefu, "联系我们", null, false, new e(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_app, "安装" + MucangConfig.getContext().getString(R.string.k3_app_name) + "App", null, false, new f(), false, false, null, 224, null));
        return arrayList;
    }
}
