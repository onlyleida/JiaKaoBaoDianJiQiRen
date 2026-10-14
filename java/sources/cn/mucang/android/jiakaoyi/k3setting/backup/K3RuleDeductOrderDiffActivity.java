package cn.mucang.android.jiakaoyi.k3setting.backup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.backup.binder.LightAssembleDiffBinder;
import cn.mucang.android.jiakaoyi.k3setting.backup.binder.LightOrderDiffBinder;
import cn.mucang.android.jiakaoyi.k3setting.backup.binder.RouteMyBackupItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityK3RuleDeductOrderDiffBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.LightApi;
import cn.mucang.android.jiakaoyi.k3setting.teach.binder.TeachVoiceItemBinder;
import cn.mucang.jiakaoyi.uilib.deduct.DeductItemBinder;
import cn.mucang.jiakaoyi.uilib.diff.BackupStepItemBinder;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffViewModel;
import cn.mucang.jiakaoyi.uilib.diff.TabCount;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import cn.mucang.jiakaoyi.uilib.rule.FloatItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.IntegerItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.OptionItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.RangeItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.SwitchItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.TextItemBinder;
import cn.mucang.jiakaoyi.uilib.siterule.SiteApi;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0005¢\u0006\u0002\u0010\u0004J%\u0010\u0014\u001a\u0002H\u0015\"\b\b\u0000\u0010\u0015*\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00150\u0018H\u0016¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0014J\"\u0010\u001e\u001a\u00020\u001d2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u001d0 H\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020!H\u0002J \u0010$\u001a\u00020\u001d2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u0006\u0010(\u001a\u00020)H\u0002R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3RuleDeductOrderDiffBinding;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "backupOrReset", "", "Ljava/lang/Integer;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "loadingObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "ruleDeductViewModel", "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;", "tabCountObserver", "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;", "tabType", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getStatName", "", "init", "", "initTabListener", "callback", "Lkotlin/Function2;", "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;", "selectTab", "tabItem", "updateDataAdapter", "it", "", "", "dataAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3RuleDeductOrderDiffActivity extends BaseViewBindingActivity<ActivityK3RuleDeductOrderDiffBinding> implements m0.b {
    public static final Companion i = new Companion(null);
    private BackupDiffViewModel b;
    private RuleDeductDiffViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f4192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4193f = DataType.RULE.getType();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a0<TabCount> f4194g = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.n
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            K3RuleDeductOrderDiffActivity.V(this.f4216a, (TabCount) obj);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<LoadingState> f4195h = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.m
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            K3RuleDeductOrderDiffActivity.T(this.f4215a, (LoadingState) obj);
        }
    };

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J \u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;", "", "()V", "BACKUP", "", "KEY_BACKUP_OR_RESET", "", "KEY_EXAM_SITE", "KEY_LAST_TIME", "RESET", "doLaunch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "isBackup", "", "lastTimeStr", "launch", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(Context context, ExamSiteModel examSiteModel, boolean z, String str) {
            Intent intent = new Intent(context, (Class<?>) K3RuleDeductOrderDiffActivity.class);
            intent.putExtra("key_exam_site", examSiteModel);
            intent.putExtra("key_backup_or_reset", z ? 100 : 101);
            intent.putExtra("key_last_time", str);
            ActivityUtils.c(context, intent);
        }

        public final void c(Context context, ExamSiteModel examSite, boolean z) {
            r.e(context, "context");
            r.e(examSite, "examSite");
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
            jLoadingDialog.b("加载中");
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3RuleDeductOrderDiffActivity$Companion$launch$1(z, examSite, jLoadingDialog, context, null), 3, null);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4196a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f4196a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$init$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            FragmentManager supportFragmentManager = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager, "supportFragmentManager");
            g(IntegerValue.class, new IntegerItemBinder(supportFragmentManager, false, false, 2, null));
            FragmentManager supportFragmentManager2 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager2, "supportFragmentManager");
            g(OptionsValue.class, new OptionItemBinder(supportFragmentManager2, false, false, 2, null));
            FragmentManager supportFragmentManager3 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager3, "supportFragmentManager");
            g(RangeValue.class, new RangeItemBinder(supportFragmentManager3, false, false, 2, null));
            FragmentManager supportFragmentManager4 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager4, "supportFragmentManager");
            g(BooleanValue.class, new SwitchItemBinder(supportFragmentManager4, false, false, 2, null));
            FragmentManager supportFragmentManager5 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager5, "supportFragmentManager");
            g(StringValue.class, new TextItemBinder(supportFragmentManager5, false, false, 2, null));
            FragmentManager supportFragmentManager6 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager6, "supportFragmentManager");
            g(FloatValue.class, new FloatItemBinder(supportFragmentManager6, false, false, 2, null));
            FragmentManager supportFragmentManager7 = K3RuleDeductOrderDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager7, "supportFragmentManager");
            g(DeductEntity.class, new DeductItemBinder(supportFragmentManager7, KeMu.K3, false));
            g(LightExamModel.class, new LightOrderDiffBinder());
            g(LightExamModel.class, new LightOrderDiffBinder());
            g(LightAssembleModel.class, new LightAssembleDiffBinder());
            g(LocalRoute.class, new RouteMyBackupItemBinder());
            g(TeachData.class, new TeachVoiceItemBinder(true, null, 2, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(Function2 callback, K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(callback, "$callback");
        r.e(this$0, "this$0");
        Integer numValueOf = Integer.valueOf(DataType.LIGHT_MODEL.getType());
        TabItem tabItem = this$0.g().tabLight;
        r.d(tabItem, "viewBinding.tabLight");
        callback.invoke(numValueOf, tabItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(Function2 callback, K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(callback, "$callback");
        r.e(this$0, "this$0");
        Integer numValueOf = Integer.valueOf(DataType.LIGHT_GROUP.getType());
        TabItem tabItem = this$0.g().tabLightGroup;
        r.d(tabItem, "viewBinding.tabLightGroup");
        callback.invoke(numValueOf, tabItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(Function2 callback, K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(callback, "$callback");
        r.e(this$0, "this$0");
        Integer numValueOf = Integer.valueOf(DataType.ROUTE.getType());
        TabItem tabItem = this$0.g().tabRoute;
        r.d(tabItem, "viewBinding.tabRoute");
        callback.invoke(numValueOf, tabItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(K3RuleDeductOrderDiffActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i2 = loadingState == null ? -1 : a.f4196a[loadingState.ordinal()];
        if (i2 == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4192e = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i2 != 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4192e;
            if (jLoadingDialog2 == null) {
                return;
            }
            jLoadingDialog2.dismiss();
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4192e;
        if (jLoadingDialog3 == null) {
            return;
        }
        jLoadingDialog3.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(TabItem tabItem) {
        g().tabRule.setSelectEnable(tabItem.getId() == g().tabRule.getId());
        g().tabDeduct.setSelectEnable(tabItem.getId() == g().tabDeduct.getId());
        g().tabLight.setSelectEnable(tabItem.getId() == g().tabLight.getId());
        g().tabLightGroup.setSelectEnable(tabItem.getId() == g().tabLightGroup.getId());
        g().tabRoute.setSelectEnable(tabItem.getId() == g().tabRoute.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(K3RuleDeductOrderDiffActivity this$0, TabCount tabCount) {
        r.e(this$0, "this$0");
        Integer num = this$0.f4191d;
        String str = (num != null && num.intValue() == 100) ? "备注：请检查报备内容，报备后，将覆盖上一次的报备内容，且无法测回，请谨慎操作。" : "重置后，你修改过的规则参数将恢复到默认值，且无法撤回，请谨慎操作。下列为将要被修改的规则，请确认是否更改。";
        if (r.a(str, this$0.g().tvHint.getText().toString())) {
            return;
        }
        this$0.g().tvHint.setText(str);
    }

    private final void W(List<? extends Object> list, com.drakeet.multitype.f fVar) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            g().stateLayout.d();
            return;
        }
        g().stateLayout.c();
        r.c(list);
        fVar.i(list);
        fVar.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(K3RuleDeductOrderDiffActivity this$0, b dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.W(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final K3RuleDeductOrderDiffActivity this$0, final String operationName, final ExamSiteModel examSite, View view) {
        r.e(this$0, "this$0");
        r.e(operationName, "$operationName");
        r.e(examSite, "$examSite");
        new u(this$0).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.e
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                K3RuleDeductOrderDiffActivity.q(this.f4207a, examSite, operationName);
            }
        }, r.m("正在", operationName), r.m(operationName, ResultCode.MSG_FAILED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3RuleDeductOrderDiffActivity this$0, ExamSiteModel examSite, String operationName) throws ApiException, InternalException, HttpException {
        boolean zA;
        r.e(this$0, "this$0");
        r.e(examSite, "$examSite");
        r.e(operationName, "$operationName");
        Integer num = this$0.f4191d;
        if (num == null || num.intValue() != 100) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始重置：examSiteId " + examSite.examSiteId + " 重置灯光和灯光组合数据");
            zA = new LightApi().A();
        } else {
            if (!this$0.g().checkBox1Rule.isChecked() && !this$0.g().checkBox2Deduct.isChecked() && !this$0.g().checkBox3Light.isChecked() && !this$0.g().checkBox6Route.isChecked()) {
                cn.mucang.android.core.utils.u.h("请勾选你想要报备的内容");
                return;
            }
            String str = "";
            if (this$0.g().checkBox1Rule.isChecked()) {
                str = "" + DataType.RULE.getType() + ',';
            }
            if (this$0.g().checkBox2Deduct.isChecked()) {
                str = str + DataType.DEDUCT.getType() + ',';
            }
            if (this$0.g().checkBox3Light.isChecked()) {
                str = str + DataType.LIGHT_MODEL.getType() + ',' + DataType.LIGHT_GROUP.getType() + ',';
            }
            if (this$0.g().checkBox6Route.isChecked()) {
                str = str + DataType.ROUTE.getType() + ',';
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始报备：examSiteId " + examSite.examSiteId + " types " + str + " (1扣分 2规则 3科三指令 4线路 6灯光指令 7灯光组合 8教学规则 9科三教学)");
            zA = new SiteApi().m(examSite.examSiteId, str);
        }
        if (!zA) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m(operationName, ResultCode.MSG_FAILED));
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m(operationName, ResultCode.MSG_SUCCESS));
        cn.mucang.android.core.utils.u.h(r.m(operationName, ResultCode.MSG_SUCCESS));
        this$0.setResult(-1);
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(K3RuleDeductOrderDiffActivity this$0, K3RuleDeductOrderDiffActivity$init$stepAdapter$1 stepAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(stepAdapter, "$stepAdapter");
        this$0.g().stepRecyclerView.setVisibility((list == null || list.isEmpty()) ? 8 : 0);
        this$0.W(list, stepAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3RuleDeductOrderDiffActivity this$0, b dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.W(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K3RuleDeductOrderDiffActivity this$0, b dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.W(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(K3RuleDeductOrderDiffActivity this$0, b dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.W(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(K3RuleDeductOrderDiffActivity this$0, b dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.W(list, dataAdapter);
    }

    private final void x(final Function2<? super Integer, ? super TabItem, v> function2) {
        g().tabRule.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.y(function2, this, view);
            }
        });
        g().tabDeduct.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.z(function2, this, view);
            }
        });
        g().tabLight.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.A(function2, this, view);
            }
        });
        g().tabLightGroup.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.B(function2, this, view);
            }
        });
        g().tabRoute.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.C(function2, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(Function2 callback, K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(callback, "$callback");
        r.e(this$0, "this$0");
        Integer numValueOf = Integer.valueOf(DataType.RULE.getType());
        TabItem tabItem = this$0.g().tabRule;
        r.d(tabItem, "viewBinding.tabRule");
        callback.invoke(numValueOf, tabItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(Function2 callback, K3RuleDeductOrderDiffActivity this$0, View view) {
        r.e(callback, "$callback");
        r.e(this$0, "this$0");
        Integer numValueOf = Integer.valueOf(DataType.DEDUCT.getType());
        TabItem tabItem = this$0.g().tabDeduct;
        r.d(tabItem, "viewBinding.tabDeduct");
        callback.invoke(numValueOf, tabItem);
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends androidx.lifecycle.j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        r.e(modelClass, "modelClass");
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        T tNewInstance = modelClass.getConstructor(Long.TYPE).newInstance(Long.valueOf(((ExamSiteModel) serializableExtra).examSiteId));
        r.d(tNewInstance, "modelClass.getConstructo…ance(examSite.examSiteId)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "K3报备内容";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$init$stepAdapter$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        final ExamSiteModel examSiteModel = (ExamSiteModel) serializableExtra;
        String stringExtra = getIntent().getStringExtra("key_last_time");
        this.f4191d = Integer.valueOf(getIntent().getIntExtra("key_backup_or_reset", 100));
        androidx.lifecycle.j0 j0VarA = new m0(this, this).a(BackupDiffViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this, …iffViewModel::class.java)");
        this.b = (BackupDiffViewModel) j0VarA;
        androidx.lifecycle.j0 j0VarA2 = new m0(this, this).a(RuleDeductDiffViewModel.class);
        r.d(j0VarA2, "ViewModelProvider(this, …iffViewModel::class.java)");
        this.c = (RuleDeductDiffViewModel) j0VarA2;
        Integer num = this.f4191d;
        final String str = (num != null && num.intValue() == 100) ? "报备" : "重置";
        g().tvLastTime.setText("上次" + str + (char) 65306 + ((Object) stringExtra));
        g().tvExamSite.setText(str + "考场：" + ((Object) examSiteModel.examSiteName));
        g().titleLayout.titleTv.setText(r.m(str, "内容"));
        g().titleLayout.actionTv.setVisibility(0);
        g().titleLayout.actionTv.setText(r.m("全部", str));
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.p(this.f4206a, str, examSiteModel, view);
            }
        });
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RuleDeductOrderDiffActivity.r(this.f4203a, view);
            }
        });
        g().stateLayout.setEmptyText("此分类与上次报备内容无任何变化");
        x(new Function2<Integer, TabItem, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity.init.3
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(Integer num2, TabItem tabItem) {
                invoke(num2.intValue(), tabItem);
                return v.f15822a;
            }

            public final void invoke(int i2, TabItem tabItem) {
                r.e(tabItem, "tabItem");
                K3RuleDeductOrderDiffActivity.this.f4193f = i2;
                RecyclerView recyclerView = K3RuleDeductOrderDiffActivity.this.g().stepRecyclerView;
                DataType dataType = DataType.RULE;
                recyclerView.setVisibility((i2 == dataType.getType() || i2 == DataType.DEDUCT.getType()) ? 0 : 8);
                if (i2 == dataType.getType()) {
                    RuleDeductDiffViewModel ruleDeductDiffViewModel = K3RuleDeductOrderDiffActivity.this.c;
                    if (ruleDeductDiffViewModel == null) {
                        r.u("ruleDeductViewModel");
                        throw null;
                    }
                    ruleDeductDiffViewModel.u(false);
                } else if (i2 == DataType.DEDUCT.getType()) {
                    RuleDeductDiffViewModel ruleDeductDiffViewModel2 = K3RuleDeductOrderDiffActivity.this.c;
                    if (ruleDeductDiffViewModel2 == null) {
                        r.u("ruleDeductViewModel");
                        throw null;
                    }
                    ruleDeductDiffViewModel2.r();
                } else if (i2 == DataType.LIGHT_MODEL.getType()) {
                    BackupDiffViewModel backupDiffViewModel = K3RuleDeductOrderDiffActivity.this.b;
                    if (backupDiffViewModel == null) {
                        r.u("viewModel");
                        throw null;
                    }
                    backupDiffViewModel.v();
                } else if (i2 == DataType.LIGHT_GROUP.getType()) {
                    BackupDiffViewModel backupDiffViewModel2 = K3RuleDeductOrderDiffActivity.this.b;
                    if (backupDiffViewModel2 == null) {
                        r.u("viewModel");
                        throw null;
                    }
                    backupDiffViewModel2.u();
                } else if (i2 == DataType.ROUTE.getType()) {
                    BackupDiffViewModel backupDiffViewModel3 = K3RuleDeductOrderDiffActivity.this.b;
                    if (backupDiffViewModel3 == null) {
                        r.u("viewModel");
                        throw null;
                    }
                    backupDiffViewModel3.w();
                }
                K3RuleDeductOrderDiffActivity.this.U(tabItem);
            }
        });
        final ?? r0 = new com.drakeet.multitype.f() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$init$stepAdapter$1
            {
                super(null, 0, null, 7, null);
                g(StepItem.class, new BackupStepItemBinder(new Function1<Step, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$init$stepAdapter$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(Step step) {
                        invoke2(step);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Step it) {
                        r.e(it, "it");
                        if (k3RuleDeductOrderDiffActivity.f4193f == DataType.RULE.getType()) {
                            RuleDeductDiffViewModel ruleDeductDiffViewModel = k3RuleDeductOrderDiffActivity.c;
                            if (ruleDeductDiffViewModel != null) {
                                ruleDeductDiffViewModel.s(it, false);
                                return;
                            } else {
                                r.u("ruleDeductViewModel");
                                throw null;
                            }
                        }
                        RuleDeductDiffViewModel ruleDeductDiffViewModel2 = k3RuleDeductOrderDiffActivity.c;
                        if (ruleDeductDiffViewModel2 != null) {
                            ruleDeductDiffViewModel2.q(it);
                        } else {
                            r.u("ruleDeductViewModel");
                            throw null;
                        }
                    }
                }));
            }
        };
        final b bVar = new b();
        g().stepRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().stepRecyclerView.setAdapter(r0);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(bVar);
        RuleDeductDiffViewModel ruleDeductDiffViewModel = this.c;
        if (ruleDeductDiffViewModel == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel.p().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.s(this.f4209a, r0, (List) obj);
            }
        });
        RuleDeductDiffViewModel ruleDeductDiffViewModel2 = this.c;
        if (ruleDeductDiffViewModel2 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel2.o().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.t(this.f4214a, bVar, (List) obj);
            }
        });
        RuleDeductDiffViewModel ruleDeductDiffViewModel3 = this.c;
        if (ruleDeductDiffViewModel3 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel3.l().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.u(this.f4213a, bVar, (List) obj);
            }
        });
        BackupDiffViewModel backupDiffViewModel = this.b;
        if (backupDiffViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        backupDiffViewModel.r().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.v(this.f4204a, bVar, (List) obj);
            }
        });
        BackupDiffViewModel backupDiffViewModel2 = this.b;
        if (backupDiffViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        backupDiffViewModel2.s().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.w(this.f4208a, bVar, (List) obj);
            }
        });
        BackupDiffViewModel backupDiffViewModel3 = this.b;
        if (backupDiffViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        backupDiffViewModel3.t().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.backup.p
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RuleDeductOrderDiffActivity.o(this.f4218a, bVar, (List) obj);
            }
        });
        BackupDiffViewModel backupDiffViewModel4 = this.b;
        if (backupDiffViewModel4 == null) {
            r.u("viewModel");
            throw null;
        }
        backupDiffViewModel4.p().h(this, this.f4194g);
        RuleDeductDiffViewModel ruleDeductDiffViewModel4 = this.c;
        if (ruleDeductDiffViewModel4 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel4.m().h(this, this.f4194g);
        BackupDiffViewModel backupDiffViewModel5 = this.b;
        if (backupDiffViewModel5 == null) {
            r.u("viewModel");
            throw null;
        }
        backupDiffViewModel5.a().h(this, this.f4195h);
        RuleDeductDiffViewModel ruleDeductDiffViewModel5 = this.c;
        if (ruleDeductDiffViewModel5 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel5.a().h(this, this.f4195h);
        Integer num2 = this.f4191d;
        if (num2 != null && num2.intValue() == 100) {
            g().checkLayout1.setVisibility(0);
            g().checkLayout2.setVisibility(0);
            g().checkLayout3.setVisibility(0);
            g().checkLayout6.setVisibility(0);
            g().tabRule.setVisibility(0);
            g().tabRule.setSelectEnable(true);
            g().tabDeduct.setVisibility(0);
            g().tabLight.setVisibility(0);
            g().tabLightGroup.setVisibility(0);
            g().tabRoute.setVisibility(0);
            RuleDeductDiffViewModel ruleDeductDiffViewModel6 = this.c;
            if (ruleDeductDiffViewModel6 != null) {
                ruleDeductDiffViewModel6.u(false);
                return;
            } else {
                r.u("ruleDeductViewModel");
                throw null;
            }
        }
        Integer num3 = this.f4191d;
        if (num3 != null && num3.intValue() == 101) {
            g().tabRule.setVisibility(8);
            g().tabDeduct.setVisibility(8);
            g().tabLight.setVisibility(0);
            g().tabLight.setSelectEnable(true);
            g().tabLightGroup.setVisibility(0);
            g().tabRoute.setVisibility(8);
            g().stepRecyclerView.setVisibility(8);
            BackupDiffViewModel backupDiffViewModel6 = this.b;
            if (backupDiffViewModel6 != null) {
                backupDiffViewModel6.v();
            } else {
                r.u("viewModel");
                throw null;
            }
        }
    }
}
