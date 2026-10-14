package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogTeachExitBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.d2, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\bJ\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ExitDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "onCancel", "Lkotlin/Function0;", "", "onCheck", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachExitBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExitDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<kotlin.v> f6578a;
    private final Function0<kotlin.v> b;
    private DialogTeachExitBinding c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExitDialog(Context context, Function0<kotlin.v> onCancel, Function0<kotlin.v> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onCancel, "onCancel");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6578a = onCancel;
        this.b = onCheck;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ExitDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6578a.invoke();
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ExitDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.b.invoke();
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTeachExitBinding dialogTeachExitBindingInflate = DialogTeachExitBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogTeachExitBindingInflate, "inflate(layoutInflater)");
        this.c = dialogTeachExitBindingInflate;
        if (dialogTeachExitBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTeachExitBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_600), -2);
        }
        DialogTeachExitBinding dialogTeachExitBinding = this.c;
        if (dialogTeachExitBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachExitBinding.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExitDialog.c(this.f6660a, view);
            }
        });
        DialogTeachExitBinding dialogTeachExitBinding2 = this.c;
        if (dialogTeachExitBinding2 != null) {
            dialogTeachExitBinding2.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExitDialog.d(this.f6663a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
