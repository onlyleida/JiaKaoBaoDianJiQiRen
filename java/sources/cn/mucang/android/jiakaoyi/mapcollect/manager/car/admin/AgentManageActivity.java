package cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityAgentManageBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.ExamModeSettingActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.model.DeviceSettingInfo;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.siterule.SwitchExamSiteRuleActivity;
import cn.mucang.jiakaoyi.uilib.ui.backup.BackupActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingDividerItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemBinder;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemDividerBinder;
import cn.mucang.jiakaoyi.uilib.utils.DeviceSettingUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0015J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0016J\b\u0010\u0017\u001a\u00020\u0012H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;", "()V", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "Lkotlin/Lazy;", "paymentModeViewModel", "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingViewModel;", "getPaymentModeViewModel", "()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingViewModel;", "paymentModeViewModel$delegate", "getStatName", "", "init", "", "loadItems", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "onBackPressed", "savePayMode", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AgentManageActivity extends BaseViewBindingActivity<ActivityAgentManageBinding> {
    private final Lazy b = kotlin.i.b(new Function0<KeMu>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.AgentManageActivity$keMu$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final KeMu invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("keMu");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
            return (KeMu) serializableExtra;
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<cn.mucang.jiakaoyi.uilib.model.e>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.AgentManageActivity$paymentModeViewModel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final cn.mucang.jiakaoyi.uilib.model.e invoke() {
            return (cn.mucang.jiakaoyi.uilib.model.e) new m0(this.this$0).a(cn.mucang.jiakaoyi.uilib.model.e.class);
        }
    });

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends com.drakeet.multitype.f {
        a() {
            super(null, 0, null, 7, null);
            g(SettingItem.class, new SettingItemBinder());
            g(SettingDividerItem.class, new SettingItemDividerBinder());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$loadItems$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SettingItemClick {
        b() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            r.e(view, "view");
            r.e(settingItem, "settingItem");
            CarDataManagerActivity.a aVar = CarDataManagerActivity.f4993d;
            Context context = view.getContext();
            r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$loadItems$2", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements SettingItemClick {
        c() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            r.e(view, "view");
            r.e(settingItem, "settingItem");
            MapManagerActivity.a aVar = MapManagerActivity.f5067f;
            Context context = view.getContext();
            r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$loadItems$3", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements SettingItemClick {
        d() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            r.e(view, "view");
            r.e(settingItem, "settingItem");
            BackupActivity.a aVar = BackupActivity.f9763d;
            Context context = view.getContext();
            r.d(context, "view.context");
            aVar.b(context, AgentManageActivity.this.k());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$loadItems$4", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e implements SettingItemClick {
        e() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            r.e(view, "view");
            r.e(settingItem, "settingItem");
            ExamModeSettingActivity.a aVar = ExamModeSettingActivity.i;
            Context context = view.getContext();
            r.d(context, "view.context");
            aVar.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$loadItems$5", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;", "onClick", "", "view", "Landroid/view/View;", "settingItem", "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class f implements SettingItemClick {
        f() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.SettingItemClick
        public void a(View view, SettingItem settingItem) {
            r.e(view, "view");
            r.e(settingItem, "settingItem");
            SwitchExamSiteRuleActivity.a aVar = SwitchExamSiteRuleActivity.f9592d;
            Context context = view.getContext();
            r.d(context, "view.context");
            aVar.b(context, true, true, AgentManageActivity.this.k());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(AgentManageActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(AgentManageActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KeMu k() {
        return (KeMu) this.b.getValue();
    }

    private final cn.mucang.jiakaoyi.uilib.model.e l() {
        return (cn.mucang.jiakaoyi.uilib.model.e) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AgentManageActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AgentManageActivity this$0, DeviceSettingInfo deviceSettingInfo) {
        r.e(this$0, "this$0");
        if (deviceSettingInfo == null) {
            return;
        }
        this$0.g().llPayMode.setVisibility(deviceSettingInfo.charge ? 0 : 8);
        this$0.g().checkBox3.setChecked(deviceSettingInfo.payFirst);
        this$0.g().cbForcedEnd.setChecked(deviceSettingInfo.forceEnd);
    }

    private final List<SettingItem> v() {
        String str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingItem(R.drawable.ic_car, "车身数据管理", null, true, new b(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.ic_site, "考场地图管理", null, true, new c(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_backup, "考场数据报备", null, true, new d(), false, false, null, 224, null));
        arrayList.add(new SettingItem(R.drawable.setting_ic_exam_model, "考试模式设置", null, true, new e(), false, false, null, 224, null));
        int i = com.mucang.android.jiakaoyi.uilib.R.drawable.ic_switch_exam_rule;
        ExamSiteModel examSiteModelM = ExamSiteUtil.m(k());
        arrayList.add(new SettingItem(i, "评判规则考场设置", (examSiteModelM == null || (str = examSiteModelM.examSiteName) == null) ? "默认考场" : str, true, new f(), true, false, null, 192, null));
        return arrayList;
    }

    private final void w() {
        final DeviceSettingInfo deviceSettingInfoA = DeviceSettingUtils.f9578a.a();
        if (deviceSettingInfoA != null) {
            boolean z = deviceSettingInfoA.payFirst;
            boolean z2 = deviceSettingInfoA.forceEnd;
            if (z == g().checkBox3.isChecked() && z2 == g().cbForcedEnd.isChecked()) {
                finish();
            } else {
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AgentManageActivity.x(this.f4998a, deviceSettingInfoA);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final AgentManageActivity this$0, DeviceSettingInfo deviceSettingInfo) {
        boolean zQ;
        r.e(this$0, "this$0");
        try {
            zQ = new DeviceApi().q(this$0.g().checkBox3.isChecked(), this$0.g().cbForcedEnd.isChecked());
        } catch (Exception e2) {
            e2.printStackTrace();
            zQ = false;
        }
        if (!zQ) {
            u.h("设置失败");
            u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.c
                @Override // java.lang.Runnable
                public final void run() {
                    AgentManageActivity.z(this.f5000a);
                }
            });
            return;
        }
        deviceSettingInfo.forceEnd = this$0.g().cbForcedEnd.isChecked();
        deviceSettingInfo.payFirst = this$0.g().checkBox3.isChecked();
        DeviceSettingUtils.f9578a.d(deviceSettingInfo);
        u.h("设置成功");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.d
            @Override // java.lang.Runnable
            public final void run() {
                AgentManageActivity.y(this.f5001a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(AgentManageActivity this$0) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final AgentManageActivity this$0) {
        r.e(this$0, "this$0");
        AlertDialog alertDialogCreate = new AlertDialog.Builder(MucangConfig.i()).setTitle("保存失败").setMessage("保存付费模式失败,是否退出？").setPositiveButton("退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AgentManageActivity.A(this.f5004a, dialogInterface, i);
            }
        }).setNegativeButton("重试", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                AgentManageActivity.B(this.f5002a, dialogInterface, i);
            }
        }).create();
        r.d(alertDialogCreate, "Builder(MucangConfig.get…                .create()");
        alertDialogCreate.show();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "服务商设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"NotifyDataSetChanged"})
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("服务商设置");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AgentManageActivity.m(this.f4999a, view);
            }
        });
        a aVar = new a();
        g().recyclerView.setAdapter(aVar);
        aVar.i(v());
        aVar.notifyDataSetChanged();
        l().f9451a.h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.admin.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AgentManageActivity.n(this.f5003a, (DeviceSettingInfo) obj);
            }
        });
        l().h();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (g().llPayMode.getVisibility() == 0) {
            w();
        } else {
            finish();
        }
    }
}
