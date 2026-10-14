package cn.mucang.jiakaoyi.uilib.siterule;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.AddRuleExamSiteBinding;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.d0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016J\u001a\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/AddRuleExamSiteDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "mBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/AddRuleExamSiteBinding;", "onCorrect", "Lkotlin/Function1;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "", "getOnCorrect", "()Lkotlin/jvm/functions/Function1;", "setOnCorrect", "(Lkotlin/jvm/functions/Function1;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AddRuleExamSiteDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function1<? super ExamSiteModel, kotlin.v> f9604a;
    private AddRuleExamSiteBinding b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AddRuleExamSiteDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(AddRuleExamSiteDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(AddRuleExamSiteDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AddRuleExamSiteBinding addRuleExamSiteBinding = this$0.b;
        if (addRuleExamSiteBinding == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        String string = addRuleExamSiteBinding.examSiteNameTv.getText().toString();
        Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
        if (kotlin.jvm.internal.r.a(StringsKt__StringsKt.J0(string).toString(), "")) {
            cn.mucang.android.core.utils.u.h("请输入规则名称!");
            return;
        }
        ExamSiteModel examSiteModel = new ExamSiteModel();
        AddRuleExamSiteBinding addRuleExamSiteBinding2 = this$0.b;
        if (addRuleExamSiteBinding2 == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        examSiteModel.examSiteName = addRuleExamSiteBinding2.examSiteNameTv.getText().toString();
        Function1<ExamSiteModel, kotlin.v> function1R = this$0.r();
        if (function1R != null) {
            function1R.invoke(examSiteModel);
        }
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_add_rule_exam_site_dialog);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        AddRuleExamSiteBinding addRuleExamSiteBindingInflate = AddRuleExamSiteBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(addRuleExamSiteBindingInflate, "inflate(inflater)");
        this.b = addRuleExamSiteBindingInflate;
        if (addRuleExamSiteBindingInflate == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        addRuleExamSiteBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddRuleExamSiteDialog.v(this.f9599a, view);
            }
        });
        AddRuleExamSiteBinding addRuleExamSiteBinding = this.b;
        if (addRuleExamSiteBinding == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        addRuleExamSiteBinding.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddRuleExamSiteDialog.w(this.f9601a, view);
            }
        });
        AddRuleExamSiteBinding addRuleExamSiteBinding2 = this.b;
        if (addRuleExamSiteBinding2 == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        addRuleExamSiteBinding2.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.siterule.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddRuleExamSiteDialog.x(this.f9597a, view);
            }
        });
        AddRuleExamSiteBinding addRuleExamSiteBinding3 = this.b;
        if (addRuleExamSiteBinding3 == null) {
            kotlin.jvm.internal.r.u("mBinding");
            throw null;
        }
        ConstraintLayout root = addRuleExamSiteBinding3.getRoot();
        kotlin.jvm.internal.r.d(root, "mBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            DialogExtensionKt.c(dialog2);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window = dialog3.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 == null) {
            return;
        }
        dialog4.setCanceledOnTouchOutside(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
    }

    public final Function1<ExamSiteModel, kotlin.v> r() {
        return this.f9604a;
    }

    public final void y(Function1<? super ExamSiteModel, kotlin.v> function1) {
        this.f9604a = function1;
    }
}
