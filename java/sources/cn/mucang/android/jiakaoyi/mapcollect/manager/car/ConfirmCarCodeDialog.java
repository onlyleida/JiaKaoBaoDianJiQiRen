package cn.mucang.android.jiakaoyi.mapcollect.manager.car;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ConfirmCarCodeDialogBinding;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.car.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\u001a\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R.\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/ConfirmCarCodeDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "onCorrect", "Lkotlin/Function2;", "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "", "", "getOnCorrect", "()Lkotlin/jvm/functions/Function2;", "setOnCorrect", "(Lkotlin/jvm/functions/Function2;)V", "selectedCarModel", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConfirmCarCodeDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function2<? super LocalCarModel, ? super String, v> f5061a;
    private LocalCarModel b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ConfirmCarCodeDialog this$0, ConfirmCarCodeDialogBinding mBinding, LocalCarModel localCarModel) {
        r.e(this$0, "this$0");
        r.e(mBinding, "$mBinding");
        if (localCarModel == null) {
            return;
        }
        this$0.b = localCarModel;
        mBinding.carCode.setText(localCarModel.getCarDesc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ConfirmCarCodeDialog this$0, ConfirmCarCodeDialogBinding mBinding, View view) {
        r.e(this$0, "this$0");
        r.e(mBinding, "$mBinding");
        if (this$0.b == null) {
            u.h("请先选择车型!");
            return;
        }
        Function2<LocalCarModel, String, v> function2R = this$0.r();
        if (function2R != null) {
            LocalCarModel localCarModel = this$0.b;
            r.c(localCarModel);
            function2R.invoke(localCarModel, mBinding.carCodeDesc.getText().toString());
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ConfirmCarCodeDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(ConfirmCarCodeDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final ConfirmCarCodeDialog this$0, final ConfirmCarCodeDialogBinding mBinding, View view) {
        r.e(this$0, "this$0");
        r.e(mBinding, "$mBinding");
        RealCarSelectActivity.a aVar = RealCarSelectActivity.f9915f;
        androidx.fragment.app.d dVarRequireActivity = this$0.requireActivity();
        r.d(dVarRequireActivity, "requireActivity()");
        aVar.b(dVarRequireActivity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.m
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                ConfirmCarCodeDialog.A(this.f5023a, mBinding, (LocalCarModel) obj);
            }
        });
    }

    public final void C(Function2<? super LocalCarModel, ? super String, v> function2) {
        this.f5061a = function2;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_confim_car_code_dialog);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        final ConfirmCarCodeDialogBinding confirmCarCodeDialogBindingInflate = ConfirmCarCodeDialogBinding.inflate(inflater);
        r.d(confirmCarCodeDialogBindingInflate, "inflate(inflater)");
        LocalCarModel localCarModelB = RealCarSelectManager.b();
        if (localCarModelB != null) {
            confirmCarCodeDialogBindingInflate.carCode.setText(localCarModelB.getCarDesc());
            this.b = localCarModelB;
        }
        confirmCarCodeDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmCarCodeDialog.x(this.f5020a, view);
            }
        });
        confirmCarCodeDialogBindingInflate.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmCarCodeDialog.y(this.f5021a, view);
            }
        });
        confirmCarCodeDialogBindingInflate.carCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmCarCodeDialog.z(this.f5019a, confirmCarCodeDialogBindingInflate, view);
            }
        });
        confirmCarCodeDialogBindingInflate.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmCarCodeDialog.B(this.f5022a, confirmCarCodeDialogBindingInflate, view);
            }
        });
        ConstraintLayout root = confirmCarCodeDialogBindingInflate.getRoot();
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
        r.e(view, "view");
    }

    public final Function2<LocalCarModel, String, v> r() {
        return this.f5061a;
    }
}
