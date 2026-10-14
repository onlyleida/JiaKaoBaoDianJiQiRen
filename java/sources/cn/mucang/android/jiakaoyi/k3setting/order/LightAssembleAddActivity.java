package cn.mucang.android.jiakaoyi.k3setting.order;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightAssembleAddActivityBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.LightAssembleAddItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightAddViewModel;
import cn.mucang.jiakaoyi.uilib.utils.TextChecker;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u000eH\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0018H\u0003J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u0012\u0010\u001d\u001a\u00020\u00182\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "assembleId", "", "getAssembleId", "()J", "assembleId$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "name$delegate", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;", "getStatName", "initList", "", "initSort", "initTitle", "isAdd", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAssembleAddActivity extends BaseActivity {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4367g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LightAssembleAddActivityBinding f4368a;
    private LightAddViewModel b;
    private final Lazy c = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightAssembleAddActivity$assembleId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            return Long.valueOf(this.this$0.getIntent().getLongExtra("key.assembleId", 0L));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f4369d = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightAssembleAddActivity$name$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.assembleName");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f4370e = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JLoadingDialog f4371f;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$Companion;", "", "()V", "KEY_ASSEMBLE_ID", "", "KEY_ASSEMBLE_NAME", "launch", "", "context", "Landroid/content/Context;", "assembleId", "", Constant.PROTOCOL_WEBVIEW_NAME, "(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, Long l, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                l = null;
            }
            if ((i & 4) != 0) {
                str = null;
            }
            aVar.a(context, l, str);
        }

        public final void a(Context context, Long l, String str) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) LightAssembleAddActivity.class);
            intent.putExtra("key.assembleId", l);
            intent.putExtra("key.assembleName", str);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4372a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4372a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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
            LightAssembleAddActivity.this.f4370e.notifyItemMoved(viewHolder.getAdapterPosition(), target.getAdapterPosition());
            Collections.swap(LightAssembleAddActivity.this.f4370e.c(), viewHolder.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }
    }

    private final long i() {
        return ((Number) this.c.getValue()).longValue();
    }

    private final String j() {
        return (String) this.f4369d.getValue();
    }

    private final void k() {
        this.f4370e.g(LightExamModel.class, new LightAssembleAddItemBinder(new LightAssembleAddActivity$initList$1(this), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightAssembleAddActivity$initList$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                invoke(num.intValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(final int i) {
                AddOrderDialog addOrderDialog = new AddOrderDialog();
                final LightAssembleAddActivity lightAssembleAddActivity = this.this$0;
                addOrderDialog.z(new Function1<LightExamModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.LightAssembleAddActivity$initList$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(LightExamModel lightExamModel) {
                        invoke2(lightExamModel);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(LightExamModel it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        LightAddViewModel lightAddViewModel = lightAssembleAddActivity.b;
                        if (lightAddViewModel != null) {
                            lightAddViewModel.j(i, it);
                        } else {
                            kotlin.jvm.internal.r.u("viewModel");
                            throw null;
                        }
                    }
                });
                FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
                kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
                addOrderDialog.show(supportFragmentManager, "插入灯光指令");
            }
        }));
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this.f4368a;
        if (lightAssembleAddActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding.recyclerView.setAdapter(this.f4370e);
        LightAddViewModel lightAddViewModel = this.b;
        if (lightAddViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightAddViewModel.k().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.e0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleAddActivity.l(this.f4421a, (List) obj);
            }
        });
        LightAddViewModel lightAddViewModel2 = this.b;
        if (lightAddViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightAddViewModel2.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.g0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleAddActivity.m(this.f4427a, (LoadingState) obj);
            }
        });
        LightAddViewModel lightAddViewModel3 = this.b;
        if (lightAddViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        lightAddViewModel3.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.h0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LightAssembleAddActivity.n(this.f4430a, (LoadingState) obj);
            }
        });
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding2 = this.f4368a;
        if (lightAssembleAddActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding2.stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.k0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                LightAssembleAddActivity.o(this.f4439a);
            }
        });
        LightAddViewModel lightAddViewModel4 = this.b;
        if (lightAddViewModel4 != null) {
            lightAddViewModel4.l(i());
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LightAssembleAddActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.f4370e;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.f4370e.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this$0.f4368a;
            if (lightAssembleAddActivityBinding != null) {
                lightAssembleAddActivityBinding.stateLayout.d();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding2 = this$0.f4368a;
        if (lightAssembleAddActivityBinding2 != null) {
            lightAssembleAddActivityBinding2.stateLayout.c();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LightAssembleAddActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4372a[loadingState.ordinal()];
        if (i == 1) {
            LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this$0.f4368a;
            if (lightAssembleAddActivityBinding != null) {
                lightAssembleAddActivityBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            return;
        }
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding2 = this$0.f4368a;
        if (lightAssembleAddActivityBinding2 != null) {
            lightAssembleAddActivityBinding2.stateLayout.e();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(LightAssembleAddActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4372a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f4371f = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f4371f;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f4371f;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(LightAssembleAddActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightAddViewModel lightAddViewModel = this$0.b;
        if (lightAddViewModel != null) {
            lightAddViewModel.l(this$0.i());
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    private final void p() {
        androidx.recyclerview.widget.g gVar = new androidx.recyclerview.widget.g(new c());
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this.f4368a;
        if (lightAssembleAddActivityBinding != null) {
            gVar.g(lightAssembleAddActivityBinding.recyclerView);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void q() {
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this.f4368a;
        if (lightAssembleAddActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding.titleLayout.divider.setVisibility(8);
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding2 = this.f4368a;
        if (lightAssembleAddActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding2.titleLayout.actionTv.setVisibility(0);
        String str = s() ? "添加" : "编辑";
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding3 = this.f4368a;
        if (lightAssembleAddActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding3.titleLayout.titleTv.setText(kotlin.jvm.internal.r.m(str, "灯光组合"));
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding4 = this.f4368a;
        if (lightAssembleAddActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding4.titleLayout.actionTv.setVisibility(8);
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding5 = this.f4368a;
        if (lightAssembleAddActivityBinding5 != null) {
            lightAssembleAddActivityBinding5.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleAddActivity.r(this.f4433a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(LightAssembleAddActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    private final boolean s() {
        return i() <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(LightAssembleAddActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this$0.f4368a;
        if (lightAssembleAddActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = lightAssembleAddActivityBinding.nameEt.getText().toString();
        LightAddViewModel lightAddViewModel = this$0.b;
        if (lightAddViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        List list = (List) lightAddViewModel.k().e();
        if ((list == null ? 0 : list.size()) <= 0) {
            cn.mucang.android.core.utils.u.h("组合中至少需要有一组灯光指令才可以保存");
            return;
        }
        if (TextChecker.c(string, null, 2, null)) {
            LightAddViewModel lightAddViewModel2 = this$0.b;
            if (lightAddViewModel2 != null) {
                lightAddViewModel2.n(string);
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "灯光指令";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LightAssembleAddActivityBinding lightAssembleAddActivityBindingInflate = LightAssembleAddActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(lightAssembleAddActivityBindingInflate, "inflate(layoutInflater)");
        this.f4368a = lightAssembleAddActivityBindingInflate;
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(LightAddViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…AddViewModel::class.java)");
        this.b = (LightAddViewModel) j0VarA;
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding = this.f4368a;
        if (lightAssembleAddActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(lightAssembleAddActivityBinding.getRoot());
        q();
        k();
        p();
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding2 = this.f4368a;
        if (lightAssembleAddActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddActivityBinding2.nameEt.setText(j());
        LightAssembleAddActivityBinding lightAssembleAddActivityBinding3 = this.f4368a;
        if (lightAssembleAddActivityBinding3 != null) {
            lightAssembleAddActivityBinding3.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightAssembleAddActivity.z(this.f4424a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
