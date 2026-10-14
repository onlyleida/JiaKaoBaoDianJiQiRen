package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.LightOrderItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0015J\b\u0010\u0015\u001a\u00020\u0011H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "initLights", "", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;", "getStatName", "", "initSort", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightOrderActivity extends BaseActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4374f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LightOrderActivityBinding f4375a;
    private JLoadingDialog b;
    private LightViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f4376d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<LightExamModel> f4377e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) LightOrderActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4378a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4378a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends androidx.recyclerview.widget.g.f {
        c() {
        }

        @Override // androidx.recyclerview.widget.g.f
        public void A(RecyclerView.c0 c0Var, int i) {
            View view;
            super.A(c0Var, i);
            if (i != 2 || c0Var == null || (view = c0Var.itemView) == null) {
                return;
            }
            view.setBackgroundColor(cn.mucang.android.core.utils.c0.a().getColor(R.color.lightOrderBgSelected));
        }

        @Override // androidx.recyclerview.widget.g.f
        public void B(RecyclerView.c0 viewHolder, int i) {
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
        }

        @Override // androidx.recyclerview.widget.g.f
        public void c(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            super.c(recyclerView, viewHolder);
            viewHolder.itemView.setBackgroundColor(cn.mucang.android.core.utils.c0.a().getColor(R.color.lightOrderBgNormal));
        }

        @Override // androidx.recyclerview.widget.g.f
        public int k(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            return androidx.recyclerview.widget.g.f.t(3, 0);
        }

        @Override // androidx.recyclerview.widget.g.f
        public boolean y(RecyclerView recyclerView, RecyclerView.c0 viewHolder, RecyclerView.c0 target) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            kotlin.jvm.internal.r.e(target, "target");
            LightOrderActivity.this.f4376d.notifyItemMoved(viewHolder.getAdapterPosition(), target.getAdapterPosition());
            Collections.swap(LightOrderActivity.this.f4376d.c(), viewHolder.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.LightOrderActivity$onCreate$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    static final class AnonymousClass3 extends Lambda implements Function1<LightExamModel, kotlin.v> {
        AnonymousClass3() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m13invoke$lambda0(LightOrderActivity this$0, LightExamModel it, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(it, "$it");
            if (this$0.f4376d.c().size() <= 1) {
                cn.mucang.android.core.utils.u.h("最少保留一组灯光");
                return;
            }
            LightViewModel lightViewModel = this$0.c;
            if (lightViewModel == null) {
                return;
            }
            lightViewModel.n(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(LightExamModel lightExamModel) {
            invoke2(lightExamModel);
            return kotlin.v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(final LightExamModel it) {
            kotlin.jvm.internal.r.e(it, "it");
            final LightOrderActivity lightOrderActivity = LightOrderActivity.this;
            new JCommonDialog(lightOrderActivity, new JCommonDialog.DialogParams("删除灯光指令", "确认删除该灯光指令吗，删除后将不可恢复，请谨慎操作。", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.s0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightOrderActivity.AnonymousClass3.m13invoke$lambda0(lightOrderActivity, it, view);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(LightOrderActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightViewModel lightViewModel = this$0.c;
        if (lightViewModel == null) {
            return;
        }
        lightViewModel.r();
    }

    private final void i() {
        androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(new c());
        LightOrderActivityBinding lightOrderActivityBinding = this.f4375a;
        if (lightOrderActivityBinding != null) {
            gVar.g(lightOrderActivityBinding.recyclerView);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(LightOrderActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final LightOrderActivity this$0, View view) {
        ListLiveData<LightExamModel> listLiveDataP;
        List list;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        List<LightExamModel> list2 = this$0.f4377e;
        if (list2 != null) {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                sb.append(String.valueOf(((LightExamModel) it.next()).examProgramId));
                sb.append(",");
            }
        }
        LightViewModel lightViewModel = this$0.c;
        if (lightViewModel != null && (listLiveDataP = lightViewModel.p()) != null && (list = (List) listLiveDataP.e()) != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                sb2.append(String.valueOf(((LightExamModel) it2.next()).examProgramId));
                sb2.append(",");
            }
        }
        if (sb.toString().equals(sb2.toString())) {
            cn.mucang.android.core.utils.u.h("没有修改数据");
            return;
        }
        ActionLog.f3431a.m(kotlin.jvm.internal.r.m("保存灯光指令顺序： ", sb2));
        LightViewModel lightViewModel2 = this$0.c;
        if (lightViewModel2 == null) {
            return;
        }
        lightViewModel2.u(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.o0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                LightOrderActivity.u(this.f4451a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(LightOrderActivity this$0, Boolean bool) {
        ListLiveData<LightExamModel> listLiveDataP;
        List<LightExamModel> list;
        ListLiveData<LightExamModel> listLiveDataP2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(bool, Boolean.TRUE)) {
            List<LightExamModel> list2 = this$0.f4377e;
            if (list2 == null) {
                this$0.f4377e = new ArrayList();
            } else if (list2 != null) {
                list2.clear();
            }
            LightViewModel lightViewModel = this$0.c;
            List list3 = null;
            if (((lightViewModel == null || (listLiveDataP = lightViewModel.p()) == null) ? null : (List) listLiveDataP.e()) == null || (list = this$0.f4377e) == null) {
                return;
            }
            LightViewModel lightViewModel2 = this$0.c;
            if (lightViewModel2 != null && (listLiveDataP2 = lightViewModel2.p()) != null) {
                list3 = (List) listLiveDataP2.e();
            }
            kotlin.jvm.internal.r.c(list3);
            kotlin.jvm.internal.r.d(list3, "viewModel?.lightList?.value!!");
            list.addAll(list3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(View view) {
        OrderEditActivity.a aVar = OrderEditActivity.f4386d;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        OrderEditActivity.a.b(aVar, context, null, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(ExamSiteModel examSiteModel, LightOrderActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (examSiteModel == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("点击重置灯光指令  ", Long.valueOf(examSiteModel.examSiteId)));
        K3RuleDeductOrderDiffActivity.i.c(this$0, examSiteModel, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(LightOrderActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f4377e == null) {
            this$0.f4377e = new ArrayList();
        }
        List<LightExamModel> list = this$0.f4377e;
        if (list != null) {
            kotlin.jvm.internal.r.d(it, "it");
            list.addAll(it);
        }
        com.drakeet.multitype.f fVar = this$0.f4376d;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.f4376d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(LightOrderActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4378a[loadingState.ordinal()];
        if (i == 1) {
            LightOrderActivityBinding lightOrderActivityBinding = this$0.f4375a;
            if (lightOrderActivityBinding != null) {
                lightOrderActivityBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            LightOrderActivityBinding lightOrderActivityBinding2 = this$0.f4375a;
            if (lightOrderActivityBinding2 != null) {
                lightOrderActivityBinding2.stateLayout.c();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        LightOrderActivityBinding lightOrderActivityBinding3 = this$0.f4375a;
        if (lightOrderActivityBinding3 != null) {
            lightOrderActivityBinding3.stateLayout.e();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(LightOrderActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4378a[loadingState.ordinal()];
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
        return "灯光指令";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        androidx.lifecycle.z<LoadingState> zVarA;
        androidx.lifecycle.z<LoadingState> zVarB;
        ListLiveData<LightExamModel> listLiveDataP;
        super.onCreate(savedInstanceState);
        LightOrderActivityBinding lightOrderActivityBindingInflate = LightOrderActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(lightOrderActivityBindingInflate, "inflate(layoutInflater)");
        this.f4375a = lightOrderActivityBindingInflate;
        this.c = (LightViewModel) new androidx.lifecycle.m0(this).a(LightViewModel.class);
        LightOrderActivityBinding lightOrderActivityBinding = this.f4375a;
        if (lightOrderActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(lightOrderActivityBinding.getRoot());
        final ExamSiteModel examSiteModelG = ExamSiteUtil.g();
        LightOrderActivityBinding lightOrderActivityBinding2 = this.f4375a;
        if (lightOrderActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding2.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderActivity.s(this.f4454a, view);
            }
        });
        LightOrderActivityBinding lightOrderActivityBinding3 = this.f4375a;
        if (lightOrderActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding3.titleLayout.titleTv.setText("灯光指令");
        LightOrderActivityBinding lightOrderActivityBinding4 = this.f4375a;
        if (lightOrderActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding4.titleLayout.actionTv.setText("重置");
        LightOrderActivityBinding lightOrderActivityBinding5 = this.f4375a;
        if (lightOrderActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding5.titleLayout.actionTv.setVisibility(0);
        LightOrderActivityBinding lightOrderActivityBinding6 = this.f4375a;
        if (lightOrderActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding6.titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderActivity.w(examSiteModelG, this, view);
            }
        });
        LightOrderItemBinder lightOrderItemBinder = new LightOrderItemBinder(0, null, 3, null);
        lightOrderItemBinder.w(new AnonymousClass3());
        this.f4376d.g(LightExamModel.class, lightOrderItemBinder);
        LightOrderActivityBinding lightOrderActivityBinding7 = this.f4375a;
        if (lightOrderActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding7.recyclerView.setAdapter(this.f4376d);
        i();
        LightViewModel lightViewModel = this.c;
        if (lightViewModel != null && (listLiveDataP = lightViewModel.p()) != null) {
            listLiveDataP.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.l0
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    LightOrderActivity.x(this.f4442a, (List) obj);
                }
            });
        }
        LightViewModel lightViewModel2 = this.c;
        if (lightViewModel2 != null && (zVarB = lightViewModel2.b()) != null) {
            zVarB.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.q0
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    LightOrderActivity.y(this.f4457a, (LoadingState) obj);
                }
            });
        }
        LightViewModel lightViewModel3 = this.c;
        if (lightViewModel3 != null && (zVarA = lightViewModel3.a()) != null) {
            zVarA.h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.n0
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    LightOrderActivity.z(this.f4448a, (LoadingState) obj);
                }
            });
        }
        LightOrderActivityBinding lightOrderActivityBinding8 = this.f4375a;
        if (lightOrderActivityBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding8.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.t0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                LightOrderActivity.A(this.f4466a);
            }
        });
        LightOrderActivityBinding lightOrderActivityBinding9 = this.f4375a;
        if (lightOrderActivityBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightOrderActivityBinding9.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightOrderActivity.t(this.f4469a, view);
            }
        });
        LightOrderActivityBinding lightOrderActivityBinding10 = this.f4375a;
        if (lightOrderActivityBinding10 != null) {
            lightOrderActivityBinding10.addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.r0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightOrderActivity.v(view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        LightViewModel lightViewModel = this.c;
        if (lightViewModel == null) {
            return;
        }
        lightViewModel.r();
    }
}
