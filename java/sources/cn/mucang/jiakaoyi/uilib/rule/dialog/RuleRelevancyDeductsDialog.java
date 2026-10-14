package cn.mucang.jiakaoyi.uilib.rule.dialog;

import android.annotation.SuppressLint;
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
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.FragmentRuleRelevancyDeductsBinding;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductsDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "mBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;", "mViewModel", "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleRelevancyDeductsDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RuleRelevancyDeductViewModel f9534a;
    private FragmentRuleRelevancyDeductsBinding b;
    private JLoadingDialog c;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.o$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9535a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9535a = iArr;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.dialog.o$b */
    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductsDialog$onViewCreated$deductAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            FragmentManager childFragmentManager = RuleRelevancyDeductsDialog.this.getChildFragmentManager();
            r.d(childFragmentManager, "childFragmentManager");
            g(DeductEntity.class, new RuleRelevancyDeductItemBinder(childFragmentManager));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(RuleRelevancyDeductsDialog this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9535a[loadingState.ordinal()];
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
    public static final void w(RuleRelevancyDeductsDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(RuleRelevancyDeductsDialog this$0, KeMu keMu, View view) {
        r.e(this$0, "this$0");
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel = this$0.f9534a;
        if (ruleRelevancyDeductViewModel == null) {
            r.u("mViewModel");
            throw null;
        }
        r.d(keMu, "keMu");
        ruleRelevancyDeductViewModel.n(keMu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(b deductAdapter, List it) {
        r.e(deductAdapter, "$deductAdapter");
        r.d(it, "it");
        deductAdapter.i(it);
        deductAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(RuleRelevancyDeductsDialog this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9535a[loadingState.ordinal()];
        if (i == 1) {
            FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding = this$0.b;
            if (fragmentRuleRelevancyDeductsBinding != null) {
                fragmentRuleRelevancyDeductsBinding.stateLayout.f();
                return;
            } else {
                r.u("mBinding");
                throw null;
            }
        }
        if (i == 2) {
            FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding2 = this$0.b;
            if (fragmentRuleRelevancyDeductsBinding2 != null) {
                fragmentRuleRelevancyDeductsBinding2.stateLayout.e();
                return;
            } else {
                r.u("mBinding");
                throw null;
            }
        }
        if (i != 3) {
            return;
        }
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding3 = this$0.b;
        if (fragmentRuleRelevancyDeductsBinding3 != null) {
            fragmentRuleRelevancyDeductsBinding3.stateLayout.c();
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
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBindingInflate = FragmentRuleRelevancyDeductsBinding.inflate(inflater);
        r.d(fragmentRuleRelevancyDeductsBindingInflate, "inflate(inflater)");
        this.b = fragmentRuleRelevancyDeductsBindingInflate;
        j0 j0VarCreate = getDefaultViewModelProviderFactory().create(RuleRelevancyDeductViewModel.class);
        r.d(j0VarCreate, "defaultViewModelProvider…uctViewModel::class.java)");
        this.f9534a = (RuleRelevancyDeductViewModel) j0VarCreate;
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding = this.b;
        if (fragmentRuleRelevancyDeductsBinding == null) {
            r.u("mBinding");
            throw null;
        }
        ConstraintLayout root = fragmentRuleRelevancyDeductsBinding.getRoot();
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
    @SuppressLint({"SetTextI18n"})
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        Bundle arguments = getArguments();
        Serializable serializable = arguments == null ? null : arguments.getSerializable("rule_item");
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig<*>");
        RuleConfig ruleConfig = (RuleConfig) serializable;
        final KeMu keMu = KeMu.getKeMuByStep(ruleConfig.step.type);
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding = this.b;
        if (fragmentRuleRelevancyDeductsBinding == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentRuleRelevancyDeductsBinding.ruleName.setText(r.m("规则：", ruleConfig.name));
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding2 = this.b;
        if (fragmentRuleRelevancyDeductsBinding2 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentRuleRelevancyDeductsBinding2.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RuleRelevancyDeductsDialog.w(this.f9527a, view2);
            }
        });
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding3 = this.b;
        if (fragmentRuleRelevancyDeductsBinding3 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentRuleRelevancyDeductsBinding3.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RuleRelevancyDeductsDialog.x(this.f9525a, keMu, view2);
            }
        });
        final b bVar = new b();
        FragmentRuleRelevancyDeductsBinding fragmentRuleRelevancyDeductsBinding4 = this.b;
        if (fragmentRuleRelevancyDeductsBinding4 == null) {
            r.u("mBinding");
            throw null;
        }
        fragmentRuleRelevancyDeductsBinding4.deductRecyclerView.setAdapter(bVar);
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel = this.f9534a;
        if (ruleRelevancyDeductViewModel == null) {
            r.u("mViewModel");
            throw null;
        }
        ruleRelevancyDeductViewModel.l().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleRelevancyDeductsDialog.y(bVar, (List) obj);
            }
        });
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel2 = this.f9534a;
        if (ruleRelevancyDeductViewModel2 == null) {
            r.u("mViewModel");
            throw null;
        }
        ruleRelevancyDeductViewModel2.b().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleRelevancyDeductsDialog.z(this.f9529a, (LoadingState) obj);
            }
        });
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel3 = this.f9534a;
        if (ruleRelevancyDeductViewModel3 == null) {
            r.u("mViewModel");
            throw null;
        }
        ruleRelevancyDeductViewModel3.a().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.dialog.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleRelevancyDeductsDialog.A(this.f9526a, (LoadingState) obj);
            }
        });
        Bundle arguments2 = getArguments();
        String string = arguments2 == null ? null : arguments2.getString("deduct_id_list");
        if (string == null) {
            return;
        }
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel4 = this.f9534a;
        if (ruleRelevancyDeductViewModel4 == null) {
            r.u("mViewModel");
            throw null;
        }
        r.d(keMu, "keMu");
        ruleRelevancyDeductViewModel4.m(string, keMu);
    }
}
