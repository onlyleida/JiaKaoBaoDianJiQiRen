package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogTeachDataChangedBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.c2, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/DataChangedDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "onCheck", "Lkotlin/Function0;", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachDataChangedBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DataChangedDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<kotlin.v> f6574a;
    private DialogTeachDataChangedBinding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataChangedDialog(Context context, Function0<kotlin.v> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6574a = onCheck;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(DataChangedDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(DataChangedDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f6574a.invoke();
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTeachDataChangedBinding dialogTeachDataChangedBindingInflate = DialogTeachDataChangedBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogTeachDataChangedBindingInflate, "inflate(layoutInflater)");
        this.b = dialogTeachDataChangedBindingInflate;
        if (dialogTeachDataChangedBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTeachDataChangedBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_600), -2);
        }
        DialogTeachDataChangedBinding dialogTeachDataChangedBinding = this.b;
        if (dialogTeachDataChangedBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachDataChangedBinding.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataChangedDialog.c(this.f6590a, view);
            }
        });
        DialogTeachDataChangedBinding dialogTeachDataChangedBinding2 = this.b;
        if (dialogTeachDataChangedBinding2 != null) {
            dialogTeachDataChangedBinding2.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DataChangedDialog.d(this.f6611a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
