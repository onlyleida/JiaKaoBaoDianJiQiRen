package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.core.utils.u;
import cn.mucang.jiakaoyi.uilib.deduct.DeductItemBinder;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogDeductDescBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.dialog.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J$\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductDescDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "mBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;", "mEditListener", "Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$DeductDescEditListener;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "setEditListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductDescDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogDeductDescBinding f9253a;
    private DeductItemBinder.a b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(DeductDescDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(DeductDescDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogDeductDescBinding dialogDeductDescBinding = this$0.f9253a;
        if (dialogDeductDescBinding == null) {
            r.u("mBinding");
            throw null;
        }
        String string = dialogDeductDescBinding.etDesc.getText().toString();
        if (StringsKt__StringsKt.G(string, "%_%", false, 2, null)) {
            u.h("输入不合法");
            return;
        }
        DeductItemBinder.a aVar = this$0.b;
        if (aVar != null) {
            aVar.a(string);
        }
        this$0.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        DialogDeductDescBinding dialogDeductDescBindingInflate = DialogDeductDescBinding.inflate(inflater);
        r.d(dialogDeductDescBindingInflate, "inflate(inflater)");
        this.f9253a = dialogDeductDescBindingInflate;
        Bundle arguments = getArguments();
        String string = arguments == null ? null : arguments.getString("deduct_desc");
        DialogDeductDescBinding dialogDeductDescBinding = this.f9253a;
        if (dialogDeductDescBinding == null) {
            r.u("mBinding");
            throw null;
        }
        dialogDeductDescBinding.etDesc.setText(string);
        DialogDeductDescBinding dialogDeductDescBinding2 = this.f9253a;
        if (dialogDeductDescBinding2 == null) {
            r.u("mBinding");
            throw null;
        }
        dialogDeductDescBinding2.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductDescDialog.t(this.f9239a, view);
            }
        });
        DialogDeductDescBinding dialogDeductDescBinding3 = this.f9253a;
        if (dialogDeductDescBinding3 == null) {
            r.u("mBinding");
            throw null;
        }
        dialogDeductDescBinding3.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductDescDialog.u(this.f9240a, view);
            }
        });
        DialogDeductDescBinding dialogDeductDescBinding4 = this.f9253a;
        if (dialogDeductDescBinding4 == null) {
            r.u("mBinding");
            throw null;
        }
        ConstraintLayout root = dialogDeductDescBinding4.getRoot();
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

    public final void v(DeductItemBinder.a listener) {
        r.e(listener, "listener");
        this.b = listener;
    }
}
