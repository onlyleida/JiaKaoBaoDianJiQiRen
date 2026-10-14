package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.jiakaoyi.uilib.model.DebugToolsItem;
import cn.mucang.jiakaoyi.uilib.model.DebugToolsViewModel;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityDebugToolsBinding;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugToolsBinding;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "getLoadingDialog", "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "setLoadingDialog", "(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;)V", "getStatName", "", "init", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugToolsActivity extends BaseViewBindingActivity<ActivityDebugToolsBinding> {
    private JLoadingDialog b;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9886a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9886a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            g(DebugToolsItem.class, new DebugToolsItemBinder());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(DebugToolsActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(b adapter, DebugToolsActivity this$0, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(DebugToolsActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9886a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else {
            if (i != 2) {
                return;
            }
            this$0.g().stateLayout.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(DebugToolsActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9886a[loadingState.ordinal()];
        if (i == 1) {
            this$0.u(new JLoadingDialog(this$0));
            JLoadingDialog b2 = this$0.getB();
            if (b2 == null) {
                return;
            }
            b2.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog b3 = this$0.getB();
            if (b3 != null) {
                b3.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog b4 = this$0.getB();
        if (b4 != null) {
            b4.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DebugToolsViewModel viewModel) {
        kotlin.jvm.internal.r.e(viewModel, "$viewModel");
        viewModel.j();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "调试工具";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText("调试工具");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugToolsActivity.k(this.f10274a, view);
            }
        });
        final b bVar = new b();
        Drawable drawableF = androidx.core.a.a.f(MucangConfig.i(), R.drawable.shape_e0e0e0_divider);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView = g().recyclerView;
        Resources resources = getResources();
        int i = R.dimen.dp_16;
        recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, drawableF, (int) resources.getDimension(i), (int) getResources().getDimension(i)));
        g().recyclerView.setAdapter(bVar);
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(DebugToolsViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…olsViewModel::class.java)");
        final DebugToolsViewModel debugToolsViewModel = (DebugToolsViewModel) j0VarA;
        debugToolsViewModel.i().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugToolsActivity.l(bVar, this, (List) obj);
            }
        });
        debugToolsViewModel.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.w
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugToolsActivity.m(this.f10272a, (LoadingState) obj);
            }
        });
        debugToolsViewModel.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.x
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugToolsActivity.n(this.f10273a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.z
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                DebugToolsActivity.o(debugToolsViewModel);
            }
        });
        debugToolsViewModel.j();
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final JLoadingDialog getB() {
        return this.b;
    }

    public final void u(JLoadingDialog jLoadingDialog) {
        this.b = jLoadingDialog;
    }
}
