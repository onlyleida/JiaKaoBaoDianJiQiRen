package cn.mucang.android.jiakaoyi.k3setting.order;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.K3RouteStepEditActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.SelectVoiceDialog;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\"H\u0014J\u0010\u0010#\u001a\u00020\u000b2\b\u0010$\u001a\u0004\u0018\u00010 J\b\u0010%\u001a\u00020\"H\u0002J\u0010\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020\u000fH\u0002R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\n\u0010\fR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\t\u001a\u0004\b\u0010\u0010\u0011R!\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\t\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\t\u001a\u0004\b\u001c\u0010\u001d¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "isAdd", "", "()Z", "isAdd$delegate", "k3OrderItem", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "getK3OrderItem", "()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "k3OrderItem$delegate", "k3Orders", "", "getK3Orders", "()Ljava/util/List;", "k3Orders$delegate", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "viewModel$delegate", "getStatName", "", "init", "", "isSpecialChar", "str", "startK3OrderStandardListActivity", "updateK3OrderItem", "it", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3RouteStepEditActivity extends BaseViewBindingActivity<K3RouteStepEditActivityBinding> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f4356h = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.d();
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<StepOrderItem>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$k3OrderItem$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final StepOrderItem invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key.stepModel");
            StepOrderItem stepOrderItem = serializableExtra instanceof StepOrderItem ? (StepOrderItem) serializableExtra : null;
            return stepOrderItem == null ? new StepOrderItem() : stepOrderItem;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f4357d = kotlin.i.b(new Function0<List<StepOrderItem>>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$k3Orders$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final List<StepOrderItem> invoke() {
            return JSON.parseArray(this.this$0.getIntent().getStringExtra("key.stepNameList"), StepOrderItem.class);
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f4358e = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$isAdd$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key.stepModel");
            return Boolean.valueOf((serializableExtra instanceof StepOrderItem ? (StepOrderItem) serializableExtra : null) == null);
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f4359f = kotlin.i.b(new Function0<K3RouteStepViewModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$viewModel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final K3RouteStepViewModel invoke() {
            androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this.this$0).a(K3RouteStepViewModel.class);
            kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…tepViewModel::class.java)");
            return (K3RouteStepViewModel) j0VarA;
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JLoadingDialog f4360g;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$Companion;", "", "()V", "KEY_STEP_MODEL", "", "KEY_STEP_NAME_LIST", "launch", "", "context", "Landroid/content/Context;", "model", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "list", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, StepOrderItem stepOrderItem, List<? extends StepOrderItem> list) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(list, "list");
            Intent intent = new Intent(context, (Class<?>) K3RouteStepEditActivity.class);
            intent.putExtra("key.stepModel", stepOrderItem);
            intent.putExtra("key.stepNameList", JSON.toJSONString(list));
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4361a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4361a = iArr;
        }
    }

    private final void E() {
        Intent intent = new Intent(this, (Class<?>) K3OrderStandardListActivity.class);
        intent.putExtra("key.stepType", m().stepId);
        f.a.a.a.j.a.a(this).c(intent, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.o
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                K3RouteStepEditActivity.F(this.f4450a, i, i2, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(K3RouteStepEditActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            Serializable serializableExtra = intent.getSerializableExtra("key.chooseResult");
            StepOrderItem stepOrderItem = serializableExtra instanceof StepOrderItem ? (StepOrderItem) serializableExtra : null;
            if (stepOrderItem == null) {
                return;
            }
            this$0.g().standardTv.setText(stepOrderItem.name);
            this$0.g().etTitle.setText(stepOrderItem.name);
            if (this$0.m().stepId != stepOrderItem.stepId) {
                this$0.G(stepOrderItem);
            }
        }
    }

    private final void G(StepOrderItem stepOrderItem) {
        m().copy(stepOrderItem);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new K3RouteStepEditActivity$updateK3OrderItem$1(this, stepOrderItem, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExamSiteModel l() {
        return (ExamSiteModel) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StepOrderItem m() {
        return (StepOrderItem) this.c.getValue();
    }

    private final List<StepOrderItem> n() {
        Object value = this.f4357d.getValue();
        kotlin.jvm.internal.r.d(value, "<get-k3Orders>(...)");
        return (List) value;
    }

    private final K3RouteStepViewModel o() {
        return (K3RouteStepViewModel) this.f4359f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(K3RouteStepEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int iD = new K3OrderHelper().d(this$0.m().stepId);
        if (iD <= 0) {
            cn.mucang.android.core.utils.u.h("请先选择评判标准");
            return;
        }
        Activity activityA = ActivityUtils.a(this$0);
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        new SelectVoiceDialog(cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(iD) + '_' + this$0.m().id).show(((androidx.appcompat.app.d) activityA).getSupportFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(K3RouteStepEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(K3RouteStepEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TtsManager.r(this$0.g().etDesc.getText().toString(), TtsGrade.ExamTip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final K3RouteStepEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String string = this$0.g().etTitle.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("指令标题不能为空");
            return;
        }
        if (this$0.w(string)) {
            cn.mucang.android.core.utils.u.h("不能包含特殊字符");
            return;
        }
        List<StepOrderItem> listN = this$0.n();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listN) {
            if (((StepOrderItem) obj).id != this$0.m().id) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((StepOrderItem) it.next()).stepAliasName);
        }
        if (arrayList2.contains(string)) {
            cn.mucang.android.core.utils.u.h("指令标题必须唯一");
            return;
        }
        this$0.m().stepAliasName = string;
        String string2 = this$0.g().standardTv.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string2)) {
            cn.mucang.android.core.utils.u.h("评判项目不能为空");
            return;
        }
        this$0.m().name = string2;
        final String string3 = this$0.g().etDesc.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string3)) {
            cn.mucang.android.core.utils.u.h("播报语音不能为空");
            return;
        }
        this$0.m().content = string3;
        K3RouteStepViewModel k3RouteStepViewModelO = this$0.o();
        ExamSiteModel examSiteModelL = this$0.l();
        kotlin.jvm.internal.r.c(examSiteModelL);
        k3RouteStepViewModelO.o(examSiteModelL.examSiteId, this$0.m(), new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteStepEditActivity$init$4$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z) {
                ActionLog.f3431a.m(((Object) this.this$0.g().titleLayout.titleTv.getText()) + " id:" + this.this$0.m().id + ";name:" + ((Object) this.this$0.m().name) + ";alias:" + ((Object) this.this$0.m().stepAliasName) + ";content:" + ((Object) this.this$0.m().content));
                TtsManager.f3517a.E(string3);
                this.this$0.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3RouteStepEditActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4361a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4360g = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4360g;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4360g;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K3RouteStepEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.E();
    }

    private final boolean v() {
        return ((Boolean) this.f4358e.getValue()).booleanValue();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "灯光指令";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        if (l() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        if (v()) {
            g().titleLayout.titleTv.setText("添加路线指令");
            g().standardTv.setHint("请选择评判项目");
            g().voice.setVisibility(8);
        } else {
            g().titleLayout.titleTv.setText("编辑路线指令");
            g().standardTv.setText(m().name);
            g().voice.setVisibility(0);
            g().voice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    K3RouteStepEditActivity.p(this.f4468a, view);
                }
            });
        }
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteStepEditActivity.q(this.f4465a, view);
            }
        });
        g().etTitle.setText(m().stepAliasName);
        if (TextUtils.isEmpty(m().content)) {
            g().etDesc.setText(m().content);
        } else {
            g().etDesc.setText(m().content);
        }
        g().playTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteStepEditActivity.r(this.f4456a, view);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteStepEditActivity.s(this.f4453a, view);
            }
        });
        o().a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.r
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RouteStepEditActivity.t(this.f4459a, (LoadingState) obj);
            }
        });
        g().arrow.setVisibility(0);
        g().standardTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteStepEditActivity.u(this.f4462a, view);
            }
        });
    }

    public final boolean w(String str) {
        Pattern patternCompile = Pattern.compile("[ _`~!@#$%^&*+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]|\n|\r|\t");
        kotlin.jvm.internal.r.d(patternCompile, "compile(regEx)");
        Matcher matcher = patternCompile.matcher(str);
        kotlin.jvm.internal.r.d(matcher, "p.matcher(str)");
        return matcher.find();
    }
}
