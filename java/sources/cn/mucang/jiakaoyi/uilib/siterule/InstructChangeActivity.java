package cn.mucang.jiakaoyi.uilib.siterule;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.mucang.android.jiakaoyi.uilib.databinding.InstructChangeBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "dataList", "", "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;", "getViewModel", "()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;", "setViewModel", "(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;)V", "getStatName", "", "init", "", "onBackPressed", "showConfirmDialog", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InstructChangeActivity extends BaseViewBindingActivity<InstructChangeBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9587f = new a(null);
    private JLoadingDialog b;
    public InstructChangeViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f9588d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<StepAlias> f9589e = new ArrayList();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) InstructChangeActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9590a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9590a = iArr;
        }
    }

    private final void A() {
        if (kotlin.jvm.internal.r.a(j().k().e(), Boolean.TRUE)) {
            new androidx.appcompat.app.c.a(this).setMessage("是否放弃本次指令修改?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.h
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    InstructChangeActivity.B(this.f9610a, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(InstructChangeActivity this$0, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(InstructChangeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.j().m(this$0.f9589e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(InstructChangeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(InstructChangeActivity this$0, List it) {
        ArrayList<Step> arrayList;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (AppUtils.l()) {
            List<Step> listB2Steps = Step.b2Steps();
            kotlin.jvm.internal.r.d(listB2Steps, "b2Steps()");
            arrayList = new ArrayList();
            for (Object obj : listB2Steps) {
                if (((Step) obj) != Step.B2_Global) {
                    arrayList.add(obj);
                }
            }
        } else if (AppUtils.i()) {
            List<Step> listMotoSteps = Step.motoSteps();
            kotlin.jvm.internal.r.d(listMotoSteps, "motoSteps()");
            arrayList = new ArrayList();
            for (Object obj2 : listMotoSteps) {
                Step step = (Step) obj2;
                if ((step == Step.Moto_Global || step == Step.Moto_QiDianQuYu || step == Step.Moto_ChangDi) ? false : true) {
                    arrayList.add(obj2);
                }
            }
        } else {
            List<Step> listK2Steps = Step.k2Steps();
            kotlin.jvm.internal.r.d(listK2Steps, "k2Steps()");
            arrayList = new ArrayList();
            for (Object obj3 : listK2Steps) {
                Step step2 = (Step) obj3;
                if ((step2 == Step.K2_Global || step2 == Step.K2_QiDianQuYu || step2 == Step.K2_BianXianShiBie || step2 == Step.K2_YuanHuanLianXi) ? false : true) {
                    arrayList.add(obj3);
                }
            }
        }
        this$0.f9589e.clear();
        kotlin.jvm.internal.r.d(it, "it");
        if ((!it.isEmpty()) && arrayList.size() != it.size()) {
            for (Step step3 : arrayList) {
                String str = step3.stepName;
                Iterator it2 = it.iterator();
                while (it2.hasNext()) {
                    StepAlias stepAlias = (StepAlias) it2.next();
                    if (step3.type == stepAlias.type) {
                        str = stepAlias.stepAliasName;
                        break;
                    }
                }
                this$0.f9589e.add(new StepAlias(step3, str));
            }
        } else if (it.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                this$0.f9589e.add(new StepAlias((Step) it3.next()));
            }
        } else {
            this$0.f9589e.addAll(it);
        }
        this$0.g().titleLayout.actionTv.setVisibility(0);
        this$0.f9588d.i(this$0.f9589e);
        this$0.f9588d.notifyDataSetChanged();
        this$0.g().stateLayout.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(InstructChangeActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.j().k().o(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(InstructChangeActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.j().l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(InstructChangeActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9590a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else if (i == 2) {
            this$0.g().stateLayout.e();
        } else {
            if (i != 3) {
                return;
            }
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(InstructChangeActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9590a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.b = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.b;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.b;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "项目指令设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this).a(InstructChangeViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ngeViewModel::class.java)");
        z((InstructChangeViewModel) j0VarA);
        g().titleLayout.titleTv.setText("项目指令设置");
        g().titleLayout.actionTv.setText("保存");
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InstructChangeActivity.k(this.f9603a, view);
            }
        });
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InstructChangeActivity.l(this.f9609a, view);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.jiakaoyi.uilib.siterule.e
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                InstructChangeActivity.o(this.f9605a);
            }
        });
        j().b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                InstructChangeActivity.p(this.f9607a, (LoadingState) obj);
            }
        });
        j().a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                InstructChangeActivity.q(this.f9611a, (LoadingState) obj);
            }
        });
        j().j().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.siterule.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                InstructChangeActivity.m(this.f9613a, (List) obj);
            }
        });
        this.f9588d.g(StepAlias.class, new InstructChangeItemBinder(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.siterule.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                InstructChangeActivity.n(this.f9612a, (Boolean) obj);
            }
        }));
        g().instructRv.setAdapter(this.f9588d);
        j().l();
    }

    public final InstructChangeViewModel j() {
        InstructChangeViewModel instructChangeViewModel = this.c;
        if (instructChangeViewModel != null) {
            return instructChangeViewModel;
        }
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        A();
    }

    public final void z(InstructChangeViewModel instructChangeViewModel) {
        kotlin.jvm.internal.r.e(instructChangeViewModel, "<set-?>");
        this.c = instructChangeViewModel;
    }
}
