package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.K3RouteSettingActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.K3RouteItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0015J\b\u0010!\u001a\u00020\u001dH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\n\u001a\u0004\b\u0017\u0010\u0018¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "initOrders", "", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteSettingActivityBinding;", "viewBinding$delegate", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "viewModel$delegate", "getStatName", "", "initSort", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3RouteSettingActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f4350a = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$examSite$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            Intent intent = this.this$0.getIntent();
            Serializable serializableExtra = intent == null ? null : intent.getSerializableExtra("key_exam_site");
            ExamSiteModel examSiteModel = serializableExtra instanceof ExamSiteModel ? (ExamSiteModel) serializableExtra : null;
            return examSiteModel == null ? ExamSiteUtil.g() : examSiteModel;
        }
    });
    private final Lazy b = kotlin.i.b(new Function0<K3RouteStepViewModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$viewModel$2
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
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f4351d = kotlin.i.b(new Function0<K3RouteSettingActivityBinding>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$viewBinding$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final K3RouteSettingActivityBinding invoke() {
            K3RouteSettingActivityBinding k3RouteSettingActivityBindingInflate = K3RouteSettingActivityBinding.inflate(this.this$0.getLayoutInflater());
            kotlin.jvm.internal.r.d(k3RouteSettingActivityBindingInflate, "inflate(layoutInflater)");
            return k3RouteSettingActivityBindingInflate;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JLoadingDialog f4352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<StepOrderItem> f4353f;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4354a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4354a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends androidx.recyclerview.widget.g.f {
        b() {
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
            K3RouteSettingActivity.this.c.notifyItemMoved(viewHolder.getAdapterPosition(), target.getAdapterPosition());
            Collections.swap(K3RouteSettingActivity.this.c.c(), viewHolder.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    static final class AnonymousClass2 extends Lambda implements Function1<StepOrderItem, kotlin.v> {
        AnonymousClass2() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m10invoke$lambda0(K3RouteSettingActivity this$0, StepOrderItem it, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(it, "$it");
            K3RouteStepViewModel k3RouteStepViewModelN = this$0.n();
            ExamSiteModel examSiteModelL = this$0.l();
            kotlin.jvm.internal.r.c(examSiteModelL);
            k3RouteStepViewModelN.j(examSiteModelL.examSiteId, it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(StepOrderItem stepOrderItem) {
            invoke2(stepOrderItem);
            return kotlin.v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(final StepOrderItem it) {
            kotlin.jvm.internal.r.e(it, "it");
            final K3RouteSettingActivity k3RouteSettingActivity = K3RouteSettingActivity.this;
            new JCommonDialog(k3RouteSettingActivity, new JCommonDialog.DialogParams("删除路线指令", "确认删除改路线指令码，删除后将不可恢复，且线路上的点也随之删除。", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    K3RouteSettingActivity.AnonymousClass2.m10invoke$lambda0(k3RouteSettingActivity, it, view);
                }
            }, false, 64, (kotlin.jvm.internal.o) null)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(K3RouteSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4354a[loadingState.ordinal()];
        if (i == 1) {
            this$0.m().stateLayout.f();
        } else if (i == 2) {
            this$0.m().stateLayout.e();
        } else {
            if (i != 3) {
                return;
            }
            this$0.m().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(K3RouteSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4354a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4352e = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4352e;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4352e;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(K3RouteSettingActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3RouteStepViewModel k3RouteStepViewModelN = this$0.n();
        ExamSiteModel examSiteModelL = this$0.l();
        kotlin.jvm.internal.r.c(examSiteModelL);
        K3RouteStepViewModel.m(k3RouteStepViewModelN, examSiteModelL.examSiteId, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExamSiteModel l() {
        return (ExamSiteModel) this.f4350a.getValue();
    }

    private final K3RouteSettingActivityBinding m() {
        return (K3RouteSettingActivityBinding) this.f4351d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final K3RouteStepViewModel n() {
        return (K3RouteStepViewModel) this.b.getValue();
    }

    private final void o() {
        new androidx.recyclerview.widget.g(new b()).g(m().recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(K3RouteSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(K3RouteSettingActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f4353f == null) {
            this$0.f4353f = new ArrayList();
        }
        List<StepOrderItem> list = this$0.f4353f;
        if (list != null) {
            kotlin.jvm.internal.r.d(it, "it");
            list.addAll(it);
        }
        com.drakeet.multitype.f fVar = this$0.c;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(final K3RouteSettingActivity this$0, View view) {
        int size;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        List<Object> listC = this$0.c.c();
        boolean z = true;
        if (this$0.f4353f != null) {
            int size2 = this$0.c.c().size();
            List<StepOrderItem> list = this$0.f4353f;
            if (list != null && size2 == list.size()) {
                int size3 = this$0.c.c().size();
                List<StepOrderItem> list2 = this$0.f4353f;
                if ((list2 != null && size3 == list2.size()) && (size = this$0.c.c().size() - 1) >= 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        Object obj = this$0.c.c().get(i);
                        List<StepOrderItem> list3 = this$0.f4353f;
                        kotlin.jvm.internal.r.c(list3);
                        if (!kotlin.jvm.internal.r.a(obj, list3.get(i))) {
                            break;
                        }
                        if (i2 > size) {
                            z = false;
                            break;
                        }
                        i = i2;
                    }
                } else {
                    z = false;
                    break;
                }
            }
        }
        if (!z) {
            cn.mucang.android.core.utils.u.h("没有修改数据");
            return;
        }
        K3RouteStepViewModel k3RouteStepViewModelN = this$0.n();
        ExamSiteModel examSiteModelL = this$0.l();
        kotlin.jvm.internal.r.c(examSiteModelL);
        k3RouteStepViewModelN.i(examSiteModelL.examSiteId, listC, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$onCreate$4$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z2) {
                List list4;
                if (this.this$0.f4353f == null) {
                    this.this$0.f4353f = new ArrayList();
                } else {
                    List list5 = this.this$0.f4353f;
                    if (list5 != null) {
                        list5.clear();
                    }
                }
                List list6 = (List) this.this$0.n().k().e();
                if (list6 == null || (list4 = this.this$0.f4353f) == null) {
                    return;
                }
                list4.addAll(list6);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(K3RouteSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3RouteStepEditActivity.a aVar = K3RouteStepEditActivity.f4356h;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        Object objE = this$0.n().k().e();
        kotlin.jvm.internal.r.c(objE);
        kotlin.jvm.internal.r.d(objE, "viewModel.itemList.value!!");
        aVar.a(context, null, (List) objE);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "指令设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (l() == null) {
            finish();
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return;
        }
        setContentView(m().getRoot());
        m().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteSettingActivity.w(this.f4426a, view);
            }
        });
        TextView textView = m().titleLayout.titleTv;
        StringBuilder sb = new StringBuilder();
        sb.append("路线指令（");
        ExamSiteModel examSiteModelL = l();
        sb.append((Object) (examSiteModelL == null ? null : examSiteModelL.examSiteName));
        sb.append((char) 65289);
        textView.setText(sb.toString());
        K3RouteItemBinder k3RouteItemBinder = new K3RouteItemBinder(new Function1<StepOrderItem, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3RouteSettingActivity$onCreate$itemBinder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(StepOrderItem stepOrderItem) {
                invoke2(stepOrderItem);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StepOrderItem it) {
                kotlin.jvm.internal.r.e(it, "it");
                K3RouteStepEditActivity.a aVar = K3RouteStepEditActivity.f4356h;
                K3RouteSettingActivity k3RouteSettingActivity = this.this$0;
                Object objE = k3RouteSettingActivity.n().k().e();
                kotlin.jvm.internal.r.c(objE);
                kotlin.jvm.internal.r.d(objE, "viewModel.itemList.value!!");
                aVar.a(k3RouteSettingActivity, it, (List) objE);
            }
        });
        k3RouteItemBinder.v(new AnonymousClass2());
        this.c.g(StepOrderItem.class, k3RouteItemBinder);
        m().recyclerView.setAdapter(this.c);
        o();
        n().k().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RouteSettingActivity.x(this.f4438a, (List) obj);
            }
        });
        m().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteSettingActivity.y(this.f4432a, view);
            }
        });
        m().addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3RouteSettingActivity.z(this.f4429a, view);
            }
        });
        n().b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RouteSettingActivity.A(this.f4444a, (LoadingState) obj);
            }
        });
        n().a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3RouteSettingActivity.B(this.f4435a, (LoadingState) obj);
            }
        });
        m().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.l
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                K3RouteSettingActivity.C(this.f4441a);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        K3RouteStepViewModel k3RouteStepViewModelN = n();
        ExamSiteModel examSiteModelL = l();
        kotlin.jvm.internal.r.c(examSiteModelL);
        K3RouteStepViewModel.m(k3RouteStepViewModelN, examSiteModelL.examSiteId, 0, 2, null);
    }
}
