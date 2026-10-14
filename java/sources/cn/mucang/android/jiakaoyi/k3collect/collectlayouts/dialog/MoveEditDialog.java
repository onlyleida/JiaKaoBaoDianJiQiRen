package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.TypeSpinnerAdapter;
import cn.mucang.android.jiakaoyi.k3collect.databinding.DialogK3CollectMoveLineBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p1.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ\u0012\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/dialog/MoveEditDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "saveCallback", "Lkotlin/Function2;", "", "", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V", "getSaveCallback", "()Lkotlin/jvm/functions/Function2;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MoveEditDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2<Boolean, Integer, v> f3860a;
    private DialogK3CollectMoveLineBinding b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p1.c$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/dialog/MoveEditDialog$onCreate$1", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onGlobalLayout", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding = MoveEditDialog.this.b;
            if (dialogK3CollectMoveLineBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            Spinner spinner = dialogK3CollectMoveLineBinding.spinner;
            DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding2 = MoveEditDialog.this.b;
            if (dialogK3CollectMoveLineBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            spinner.setDropDownVerticalOffset(dialogK3CollectMoveLineBinding2.spinner.getMeasuredHeight() / 4);
            DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding3 = MoveEditDialog.this.b;
            if (dialogK3CollectMoveLineBinding3 != null) {
                dialogK3CollectMoveLineBinding3.spinner.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MoveEditDialog(Context context, Function2<? super Boolean, ? super Integer, v> saveCallback) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(saveCallback, "saveCallback");
        this.f3860a = saveCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MoveEditDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(MoveEditDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding = this$0.b;
        if (dialogK3CollectMoveLineBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        try {
            int i = Integer.parseInt(dialogK3CollectMoveLineBinding.etMoveLength.getText().toString());
            if (i == 0) {
                u.h("数值输入为0");
                return;
            }
            if (Math.abs(i) > 1000) {
                u.h("数值输入太大");
                return;
            }
            Function2<Boolean, Integer, v> function2B = this$0.b();
            DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding2 = this$0.b;
            if (dialogK3CollectMoveLineBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            function2B.invoke(Boolean.valueOf(dialogK3CollectMoveLineBinding2.spinner.getSelectedItemPosition() == 0), Integer.valueOf(i));
            this$0.dismiss();
        } catch (Exception e2) {
            e2.printStackTrace();
            u.h("数值输入错误");
        }
    }

    public final Function2<Boolean, Integer, v> b() {
        return this.f3860a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBindingInflate = DialogK3CollectMoveLineBinding.inflate(getLayoutInflater());
        r.d(dialogK3CollectMoveLineBindingInflate, "inflate(layoutInflater)");
        this.b = dialogK3CollectMoveLineBindingInflate;
        if (dialogK3CollectMoveLineBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogK3CollectMoveLineBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        Context context = getContext();
        r.d(context, "context");
        TypeSpinnerAdapter typeSpinnerAdapter = new TypeSpinnerAdapter(context, R.layout.k3_simple_spinner_item, kotlin.collections.u.f("起点", "终点"));
        typeSpinnerAdapter.setDropDownViewResource(R.layout.k3_common_spinner_dropdown_item);
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding = this.b;
        if (dialogK3CollectMoveLineBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogK3CollectMoveLineBinding.spinner.setAdapter((SpinnerAdapter) typeSpinnerAdapter);
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding2 = this.b;
        if (dialogK3CollectMoveLineBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogK3CollectMoveLineBinding2.spinner.setTag(0);
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding3 = this.b;
        if (dialogK3CollectMoveLineBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogK3CollectMoveLineBinding3.spinner.setSelection(0);
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding4 = this.b;
        if (dialogK3CollectMoveLineBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogK3CollectMoveLineBinding4.spinner.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding5 = this.b;
        if (dialogK3CollectMoveLineBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogK3CollectMoveLineBinding5.cancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p1.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoveEditDialog.e(this.f3858a, view);
            }
        });
        DialogK3CollectMoveLineBinding dialogK3CollectMoveLineBinding6 = this.b;
        if (dialogK3CollectMoveLineBinding6 != null) {
            dialogK3CollectMoveLineBinding6.save.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p1.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MoveEditDialog.f(this.f3859a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
