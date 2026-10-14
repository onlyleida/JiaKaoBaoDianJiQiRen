package cn.mucang.jiakaoyi.uilib.diff;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
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
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.jiakaoyi.uilib.api.n;
import cn.mucang.jiakaoyi.uilib.deduct.DeductItemBinder;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSyncManager;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import cn.mucang.jiakaoyi.uilib.rule.FloatItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.IntegerItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.K3TeachingRuleConfig;
import cn.mucang.jiakaoyi.uilib.rule.OptionItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.RangeItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.RuleSyncManager;
import cn.mucang.jiakaoyi.uilib.rule.SwitchItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.TextItemBinder;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityRuleDeductDiffBinding;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001 B\u0005¢\u0006\u0002\u0010\u0004J%\u0010\u0010\u001a\u0002H\u0011\"\b\b\u0000\u0010\u0011*\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0014H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0015J \u0010\u001a\u001a\u00020\u00192\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0003R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityRuleDeductDiffBinding;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "backupOrReset", "", "Ljava/lang/Integer;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "Lkotlin/Lazy;", "ruleDeductViewModel", "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getStatName", "", "init", "", "updateDataAdapter", "it", "", "", "dataAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleDeductDiffActivity extends BaseViewBindingActivity<ActivityRuleDeductDiffBinding> implements m0.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f9287e = new Companion(null);
    private RuleDeductDiffViewModel b;
    private Integer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f9288d = kotlin.i.b(new Function0<KeMu>() { // from class: cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$keMu$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final KeMu invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key_kemu");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
            return (KeMu) serializableExtra;
        }
    });

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JJ\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002JH\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001c2\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00152\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;", "", "()V", "BACKUP", "", "KEY_BACKUP_OR_RESET", "", "KEY_DIFF_DATA_JSON", "KEY_EXAM_SITE_ID", "KEY_KEMU", "KEY_LAST_TIME", "KEY_TEACHING", "KEY_TYPE", "RESET", "doLaunch", "", "context", "Landroid/content/Context;", "examSiteId", "", "isBackup", "", "lastTimeStr", "type", "teaching", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/core/activityresult/StartForResultListener;", "kemu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "launch", "keMu", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(Context context, long j, boolean z, String str, int i, boolean z2, f.a.a.a.j.c cVar, KeMu keMu) {
            Intent intent = new Intent(context, (Class<?>) RuleDeductDiffActivity.class);
            intent.putExtra("key_exam_site_id", j);
            intent.putExtra("key_backup_or_reset", z ? 100 : 101);
            intent.putExtra("key_last_time", str);
            intent.putExtra("key_type", i);
            intent.putExtra("key_teaching", z2);
            intent.putExtra("key_kemu", keMu);
            f.a.a.a.j.a.a(MucangConfig.i()).c(intent, 100, cVar);
        }

        public final void c(Context context, long j, boolean z, KeMu keMu, int i, boolean z2, f.a.a.a.j.c cVar) {
            r.e(context, "context");
            r.e(keMu, "keMu");
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
            jLoadingDialog.b("加载中");
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new RuleDeductDiffActivity$Companion$launch$1(keMu, j, i, z, z2, jLoadingDialog, context, cVar, null), 3, null);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends com.drakeet.multitype.f {
        a() {
            super(null, 0, null, 7, null);
            FragmentManager supportFragmentManager = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager, "supportFragmentManager");
            g(IntegerValue.class, new IntegerItemBinder(supportFragmentManager, false, false, 2, null));
            FragmentManager supportFragmentManager2 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager2, "supportFragmentManager");
            g(OptionsValue.class, new OptionItemBinder(supportFragmentManager2, false, false, 2, null));
            FragmentManager supportFragmentManager3 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager3, "supportFragmentManager");
            g(RangeValue.class, new RangeItemBinder(supportFragmentManager3, false, false, 2, null));
            FragmentManager supportFragmentManager4 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager4, "supportFragmentManager");
            g(BooleanValue.class, new SwitchItemBinder(supportFragmentManager4, false, false, 2, null));
            FragmentManager supportFragmentManager5 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager5, "supportFragmentManager");
            g(StringValue.class, new TextItemBinder(supportFragmentManager5, false, false, 2, null));
            FragmentManager supportFragmentManager6 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager6, "supportFragmentManager");
            g(FloatValue.class, new FloatItemBinder(supportFragmentManager6, false, false, 2, null));
            FragmentManager supportFragmentManager7 = RuleDeductDiffActivity.this.getSupportFragmentManager();
            r.d(supportFragmentManager7, "supportFragmentManager");
            g(DeductEntity.class, new DeductItemBinder(supportFragmentManager7, RuleDeductDiffActivity.this.l(), false));
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void A(List<? extends Object> list, com.drakeet.multitype.f fVar) {
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
    public final KeMu l() {
        return (KeMu) this.f9288d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(final RuleDeductDiffActivity this$0, final String operationName, final int i, final long j, final boolean z, View view) {
        r.e(this$0, "this$0");
        r.e(operationName, "$operationName");
        new u(this$0).h(new u.e() { // from class: cn.mucang.jiakaoyi.uilib.diff.d
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                RuleDeductDiffActivity.n(this.f9299a, i, j, z, operationName);
            }
        }, r.m("正在", operationName), r.m(operationName, ResultCode.MSG_FAILED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RuleDeductDiffActivity this$0, int i, long j, boolean z, String operationName) throws ApiException, InternalException, HttpException {
        boolean zBooleanValue;
        boolean zBooleanValue2;
        String str;
        r.e(this$0, "this$0");
        r.e(operationName, "$operationName");
        Integer num = this$0.c;
        boolean zBooleanValue3 = false;
        if (num != null && num.intValue() == 100) {
            if (this$0.l() != KeMu.K3) {
                if (i == DataType.RULE.getType()) {
                    n nVar = new n(this$0.l());
                    ExamSiteModel examSiteModelM = ExamSiteUtil.m(this$0.l());
                    Boolean boolM = nVar.m(examSiteModelM != null ? examSiteModelM.examSiteId : 0L);
                    r.d(boolM, "{\n                      …                        }");
                    zBooleanValue2 = boolM.booleanValue();
                    str = "规则";
                } else {
                    Boolean boolM2 = new cn.mucang.jiakaoyi.uilib.api.d(this$0.l()).m(ExamSiteUtil.o(this$0.l(), 0L, 2, null));
                    r.d(boolM2, "{\n                      …                        }");
                    zBooleanValue2 = boolM2.booleanValue();
                    str = "扣分";
                }
                zBooleanValue3 = zBooleanValue2;
                cn.mucang.android.jiakaoyi.framework.log.f.o(((Object) this$0.l().name) + str + "报备是否成功：" + zBooleanValue3);
            } else {
                cn.mucang.android.core.utils.u.h("此页面暂不支持k3的报备");
            }
        } else if (i == DataType.RULE.getType()) {
            if (this$0.l() == KeMu.K3) {
                Boolean boolO = new n(this$0.l()).o(j, z, K3TeachingRuleConfig.f9517a.a());
                r.d(boolO, "{\n                      …                        }");
                zBooleanValue = boolO.booleanValue();
            } else {
                Boolean boolO2 = new n(this$0.l()).o(j, false, null);
                r.d(boolO2, "{\n                      …                        }");
                zBooleanValue = boolO2.booleanValue();
            }
            zBooleanValue3 = zBooleanValue;
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("规则重置是否成功：", Boolean.valueOf(zBooleanValue3)));
            RuleSyncManager.f9550a.e(j, this$0.l(), true);
        } else {
            Boolean boolO3 = new cn.mucang.jiakaoyi.uilib.api.d(this$0.l()).o(j);
            r.d(boolO3, "DeductApi(keMu).resetDeduct(examSiteId)");
            zBooleanValue3 = boolO3.booleanValue();
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("扣分重置是否成功：", Boolean.valueOf(zBooleanValue3)));
            DeductSyncManager.f9236a.e(j, this$0.l(), true);
        }
        if (zBooleanValue3) {
            cn.mucang.android.core.utils.u.h(r.m(operationName, ResultCode.MSG_SUCCESS));
            this$0.setResult(-1);
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(RuleDeductDiffActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(RuleDeductDiffActivity this$0, RuleDeductDiffActivity$init$stepAdapter$1 stepAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(stepAdapter, "$stepAdapter");
        this$0.g().stepRecyclerView.setVisibility((list == null || list.isEmpty()) ? 8 : 0);
        this$0.A(list, stepAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(RuleDeductDiffActivity this$0, a dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.A(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(RuleDeductDiffActivity this$0, a dataAdapter, List list) {
        r.e(this$0, "this$0");
        r.e(dataAdapter, "$dataAdapter");
        this$0.A(list, dataAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(RuleDeductDiffActivity this$0, TabCount tabCount) {
        String str;
        String str2;
        r.e(this$0, "this$0");
        int type = tabCount.getType();
        if (type == DataType.RULE.getType()) {
            str = "评判规则";
        } else {
            str = type == DataType.DEDUCT.getType() ? "扣分设置" : "";
        }
        Integer num = this$0.c;
        if (num != null && num.intValue() == 100) {
            str2 = "备注：本次报备内容与上次报备内容" + str + (char) 26377 + tabCount.getCount() + "条差异，请再次确认，报备后，将覆盖上一次报备内容，且无法撤回，请谨慎操作。";
        } else {
            str2 = "重置后，你修改过的规则参数将恢复到默认值，且无法撤回，请谨慎操作。下列为将要被修改的规则，请确认是否更改。";
        }
        if (r.a(str2, this$0.g().tvHint.getText().toString())) {
            return;
        }
        this$0.g().tvHint.setText(str2);
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends androidx.lifecycle.j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        r.e(modelClass, "modelClass");
        T tNewInstance = modelClass.getConstructor(Long.TYPE).newInstance(Long.valueOf(getIntent().getLongExtra("key_exam_site_id", 0L)));
        r.d(tNewInstance, "modelClass.getConstructo…).newInstance(examSiteId)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "规则和扣分差异";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$init$stepAdapter$1] */
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
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        final long longExtra = getIntent().getLongExtra("key_exam_site_id", 0L);
        final boolean booleanExtra = getIntent().getBooleanExtra("key_teaching", false);
        Intent intent = getIntent();
        DataType dataType = DataType.RULE;
        final int intExtra = intent.getIntExtra("key_type", dataType.getType());
        this.c = Integer.valueOf(getIntent().getIntExtra("key_backup_or_reset", 100));
        androidx.lifecycle.j0 j0VarA = new m0(this, this).a(RuleDeductDiffViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this, …iffViewModel::class.java)");
        this.b = (RuleDeductDiffViewModel) j0VarA;
        Integer num = this.c;
        final String str = (num != null && num.intValue() == 100) ? "报备" : "重置";
        g().titleLayout.titleTv.setText(r.m(str, "内容"));
        g().titleLayout.actionTv.setVisibility(0);
        g().titleLayout.actionTv.setText(str);
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.diff.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleDeductDiffActivity.m(this.f9302a, str, intExtra, longExtra, booleanExtra, view);
            }
        });
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.diff.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleDeductDiffActivity.o(this.f9298a, view);
            }
        });
        final ?? r2 = new com.drakeet.multitype.f(intExtra, this, booleanExtra) { // from class: cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$init$stepAdapter$1
            final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RuleDeductDiffActivity f9289d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ boolean f9290e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null, 0, null, 7, null);
                this.c = intExtra;
                this.f9289d = this;
                this.f9290e = booleanExtra;
                g(StepItem.class, new BackupStepItemBinder(new Function1<Step, v>() { // from class: cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$init$stepAdapter$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        if (intExtra == DataType.RULE.getType()) {
                            RuleDeductDiffViewModel ruleDeductDiffViewModel = this.b;
                            if (ruleDeductDiffViewModel != null) {
                                ruleDeductDiffViewModel.s(it, booleanExtra);
                                return;
                            } else {
                                r.u("ruleDeductViewModel");
                                throw null;
                            }
                        }
                        RuleDeductDiffViewModel ruleDeductDiffViewModel2 = this.b;
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
        final a aVar = new a();
        g().stepRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().stepRecyclerView.setAdapter(r2);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(aVar);
        RuleDeductDiffViewModel ruleDeductDiffViewModel = this.b;
        if (ruleDeductDiffViewModel == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel.p().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.diff.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleDeductDiffActivity.p(this.f9305a, r2, (List) obj);
            }
        });
        RuleDeductDiffViewModel ruleDeductDiffViewModel2 = this.b;
        if (ruleDeductDiffViewModel2 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel2.o().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.diff.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleDeductDiffActivity.q(this.f9297a, aVar, (List) obj);
            }
        });
        RuleDeductDiffViewModel ruleDeductDiffViewModel3 = this.b;
        if (ruleDeductDiffViewModel3 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel3.l().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.diff.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleDeductDiffActivity.r(this.f9306a, aVar, (List) obj);
            }
        });
        RuleDeductDiffViewModel ruleDeductDiffViewModel4 = this.b;
        if (ruleDeductDiffViewModel4 == null) {
            r.u("ruleDeductViewModel");
            throw null;
        }
        ruleDeductDiffViewModel4.m().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.diff.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleDeductDiffActivity.s(this.f9307a, (TabCount) obj);
            }
        });
        if (intExtra == dataType.getType()) {
            RuleDeductDiffViewModel ruleDeductDiffViewModel5 = this.b;
            if (ruleDeductDiffViewModel5 != null) {
                ruleDeductDiffViewModel5.u(booleanExtra);
                return;
            } else {
                r.u("ruleDeductViewModel");
                throw null;
            }
        }
        RuleDeductDiffViewModel ruleDeductDiffViewModel6 = this.b;
        if (ruleDeductDiffViewModel6 != null) {
            ruleDeductDiffViewModel6.r();
        } else {
            r.u("ruleDeductViewModel");
            throw null;
        }
    }
}
