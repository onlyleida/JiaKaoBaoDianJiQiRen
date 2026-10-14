package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.rule.FloatItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.IntegerItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.OptionItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.RangeItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.SwitchItemBinder;
import cn.mucang.jiakaoyi.uilib.rule.TextItemBinder;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.FragmentDeductRelevancyRulesBinding;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.dialog.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRulesDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "mBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentDeductRelevancyRulesBinding;", "mViewModel", "Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductRelevancyRulesDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FragmentDeductRelevancyRulesBinding f9254a;
    private DeductRelevancyRuleViewModel b;
    private JLoadingDialog c;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.dialog.p$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9255a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9255a = iArr;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.dialog.p$b */
    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRulesDialog$onViewCreated$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            FragmentManager childFragmentManager = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager, "childFragmentManager");
            g(IntegerValue.class, new IntegerItemBinder(childFragmentManager, true, false, 4, null));
            FragmentManager childFragmentManager2 = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager2, "childFragmentManager");
            boolean z = true;
            boolean z2 = false;
            int i = 4;
            kotlin.jvm.internal.o oVar = null;
            g(OptionsValue.class, new OptionItemBinder(childFragmentManager2, z, z2, i, oVar));
            FragmentManager childFragmentManager3 = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager3, "childFragmentManager");
            g(RangeValue.class, new RangeItemBinder(childFragmentManager3, z, z2, i, oVar));
            FragmentManager childFragmentManager4 = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager4, "childFragmentManager");
            g(BooleanValue.class, new SwitchItemBinder(childFragmentManager4, z, z2, i, oVar));
            FragmentManager childFragmentManager5 = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager5, "childFragmentManager");
            g(StringValue.class, new TextItemBinder(childFragmentManager5, z, z2, i, oVar));
            FragmentManager childFragmentManager6 = DeductRelevancyRulesDialog.this.getChildFragmentManager();
            r.d(childFragmentManager6, "childFragmentManager");
            g(FloatValue.class, new FloatItemBinder(childFragmentManager6, z, z2, i, oVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(DeductRelevancyRulesDialog this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9255a[loadingState.ordinal()];
        if (i == 1) {
            Context context = this$0.getContext();
            JLoadingDialog jLoadingDialog = context == null ? null : new JLoadingDialog(context);
            this$0.c = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b("");
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.c;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            u.h(loadingState.getMsg());
            this$0.dismissAllowingStateLoss();
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.c;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        u.h(loadingState.getMsg());
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(DeductRelevancyRulesDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(DeductRelevancyRulesDialog this$0, KeMu keMu, View view) {
        r.e(this$0, "this$0");
        DeductRelevancyRuleViewModel deductRelevancyRuleViewModel = this$0.b;
        if (deductRelevancyRuleViewModel == null) {
            r.u("mViewModel");
            throw null;
        }
        r.d(keMu, "keMu");
        deductRelevancyRuleViewModel.m(keMu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(b dataAdapter, List it) {
        r.e(dataAdapter, "$dataAdapter");
        r.d(it, "it");
        dataAdapter.i(it);
        dataAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(DeductRelevancyRulesDialog this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9255a[loadingState.ordinal()];
        if (i == 1) {
            FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding = this$0.f9254a;
            if (fragmentDeductRelevancyRulesBinding != null) {
                fragmentDeductRelevancyRulesBinding.stateLayout.f();
                return;
            } else {
                r.u("mBinding");
                throw null;
            }
        }
        if (i == 2) {
            FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding2 = this$0.f9254a;
            if (fragmentDeductRelevancyRulesBinding2 != null) {
                fragmentDeductRelevancyRulesBinding2.stateLayout.e();
                return;
            } else {
                r.u("mBinding");
                throw null;
            }
        }
        if (i != 3) {
            return;
        }
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding3 = this$0.f9254a;
        if (fragmentDeductRelevancyRulesBinding3 != null) {
            fragmentDeductRelevancyRulesBinding3.stateLayout.c();
        } else {
            r.u("mBinding");
            throw null;
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBindingInflate = FragmentDeductRelevancyRulesBinding.inflate(getLayoutInflater());
        r.d(fragmentDeductRelevancyRulesBindingInflate, "inflate(layoutInflater)");
        this.f9254a = fragmentDeductRelevancyRulesBindingInflate;
        j0 j0VarCreate = getDefaultViewModelProviderFactory().create(DeductRelevancyRuleViewModel.class);
        r.d(j0VarCreate, "defaultViewModelProvider…uleViewModel::class.java)");
        this.b = (DeductRelevancyRuleViewModel) j0VarCreate;
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding = this.f9254a;
        if (fragmentDeductRelevancyRulesBinding == null) {
            r.u("mBinding");
            throw null;
        }
        ConstraintLayout root = fragmentDeductRelevancyRulesBinding.getRoot();
        r.d(root, "mBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 == null) {
            return;
        }
        dialog3.setCanceledOnTouchOutside(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        Bundle arguments = getArguments();
        Serializable serializable = arguments == null ? null : arguments.getSerializable("deduct_item");
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.DeductEntity");
        DeductEntity deductEntity = (DeductEntity) serializable;
        final KeMu keMu = KeMu.getKeMuByStep(deductEntity.getStepId());
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding = this.f9254a;
        if (fragmentDeductRelevancyRulesBinding == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentDeductRelevancyRulesBinding.deductName.setText(deductEntity.getName());
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding2 = this.f9254a;
        if (fragmentDeductRelevancyRulesBinding2 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentDeductRelevancyRulesBinding2.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DeductRelevancyRulesDialog.w(this.f9245a, view2);
            }
        });
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding3 = this.f9254a;
        if (fragmentDeductRelevancyRulesBinding3 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentDeductRelevancyRulesBinding3.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DeductRelevancyRulesDialog.x(this.f9241a, keMu, view2);
            }
        });
        final b bVar = new b();
        FragmentDeductRelevancyRulesBinding fragmentDeductRelevancyRulesBinding4 = this.f9254a;
        if (fragmentDeductRelevancyRulesBinding4 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentDeductRelevancyRulesBinding4.ruleRecyclerView.setAdapter(bVar);
        DeductRelevancyRuleViewModel deductRelevancyRuleViewModel = this.b;
        if (deductRelevancyRuleViewModel == null) {
            r.u("mViewModel");
            throw null;
        }
        deductRelevancyRuleViewModel.k().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductRelevancyRulesDialog.y(bVar, (List) obj);
            }
        });
        DeductRelevancyRuleViewModel deductRelevancyRuleViewModel2 = this.b;
        if (deductRelevancyRuleViewModel2 == null) {
            r.u("mViewModel");
            throw null;
        }
        deductRelevancyRuleViewModel2.b().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductRelevancyRulesDialog.z(this.f9244a, (LoadingState) obj);
            }
        });
        DeductRelevancyRuleViewModel deductRelevancyRuleViewModel3 = this.b;
        if (deductRelevancyRuleViewModel3 == null) {
            r.u("mViewModel");
            throw null;
        }
        deductRelevancyRuleViewModel3.a().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductRelevancyRulesDialog.A(this.f9242a, (LoadingState) obj);
            }
        });
        Bundle arguments2 = getArguments();
        String string = arguments2 == null ? null : arguments2.getString("rule_id_list");
        if (string == null) {
            return;
        }
        DeductRelevancyRuleViewModel deductRelevancyRuleViewModel4 = this.b;
        if (deductRelevancyRuleViewModel4 == null) {
            r.u("mViewModel");
            throw null;
        }
        r.d(keMu, "keMu");
        deductRelevancyRuleViewModel4.l(string, keMu);
    }
}
