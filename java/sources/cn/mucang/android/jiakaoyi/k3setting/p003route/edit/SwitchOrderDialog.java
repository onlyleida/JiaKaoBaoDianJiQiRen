package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import androidx.fragment.app.u;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.GridLayoutManager;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditSwitchOrderBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.drakeet.multitype.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u000eH\u0016J\b\u0010\u0016\u001a\u00020\u000eH\u0002J\u0012\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR(\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "onChosenOrder", "Lkotlin/Function1;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "", "getOnChosenOrder", "()Lkotlin/jvm/functions/Function1;", "setOnChosenOrder", "(Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;", "dismiss", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "show", "manager", "Landroidx/fragment/app/FragmentManager;", "tag", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchOrderDialog extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RouteEditSwitchOrderBinding f4556a;
    private Function1<? super StepOrderItem, v> c;
    private final Lazy b = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.SwitchOrderDialog$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.d();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f4557d = new f(null, 0, null, 7, null);

    private final void s() {
        Window window;
        Dialog dialog = getDialog();
        WindowManager.LayoutParams attributes = (dialog == null || (window = dialog.getWindow()) == null) ? null : window.getAttributes();
        if (attributes != null) {
            attributes.windowAnimations = R.style.FragmentDialogAnimation;
        }
        RouteEditSwitchOrderBinding routeEditSwitchOrderBinding = this.f4556a;
        if (routeEditSwitchOrderBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditSwitchOrderBinding.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchOrderDialog.t(this.f4611a, view);
            }
        });
        RouteEditSwitchOrderBinding routeEditSwitchOrderBinding2 = this.f4556a;
        if (routeEditSwitchOrderBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditSwitchOrderBinding2.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 5));
        RouteEditSwitchOrderBinding routeEditSwitchOrderBinding3 = this.f4556a;
        if (routeEditSwitchOrderBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        routeEditSwitchOrderBinding3.recyclerView.setAdapter(this.f4557d);
        this.f4557d.g(StepOrderItem.class, new SwitchOrderItemBinder(new Function1<StepOrderItem, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.SwitchOrderDialog$initViews$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(StepOrderItem stepOrderItem) {
                invoke2(stepOrderItem);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StepOrderItem it) {
                r.e(it, "it");
                Function1<StepOrderItem, v> function1R = this.this$0.r();
                if (function1R != null) {
                    function1R.invoke(it);
                }
                this.this$0.dismiss();
            }
        }));
        j0 j0VarA = new m0(requireActivity()).a(K3RouteStepViewModel.class);
        r.d(j0VarA, "ViewModelProvider(requir…tepViewModel::class.java)");
        ((K3RouteStepViewModel) j0VarA).k().h(requireActivity(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.w0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SwitchOrderDialog.u(this.f4609a, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(SwitchOrderDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(SwitchOrderDialog this$0, List it) {
        r.e(this$0, "this$0");
        f fVar = this$0.f4557d;
        r.d(it, "it");
        fVar.i(it);
        this$0.f4557d.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.c
    public void dismiss() {
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        RouteEditSwitchOrderBinding routeEditSwitchOrderBindingInflate = RouteEditSwitchOrderBinding.inflate(inflater);
        r.d(routeEditSwitchOrderBindingInflate, "inflate(inflater)");
        this.f4556a = routeEditSwitchOrderBindingInflate;
        s();
        RouteEditSwitchOrderBinding routeEditSwitchOrderBinding = this.f4556a;
        if (routeEditSwitchOrderBinding != null) {
            return routeEditSwitchOrderBinding.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }

    public final Function1<StepOrderItem, v> r() {
        return this.c;
    }

    @Override // androidx.fragment.app.c
    public void show(FragmentManager manager, String tag) {
        r.e(manager, "manager");
        try {
            super.show(manager, tag);
        } catch (Exception unused) {
            u uVarM = manager.m();
            r.d(uVarM, "manager.beginTransaction()");
            uVarM.e(this, tag);
            uVarM.j();
        }
    }

    public final void x(Function1<? super StepOrderItem, v> function1) {
        this.c = function1;
    }
}
