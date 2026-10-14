package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogGlobalInputBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.i3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u0012\u0010\u000b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/GlobalInputDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "onCheck", "Lkotlin/Function1;", "", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogGlobalInputBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlobalInputDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1<String, kotlin.v> f6833a;
    private DialogGlobalInputBinding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GlobalInputDialog(Context context, Function1<? super String, kotlin.v> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6833a = onCheck;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(GlobalInputDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(GlobalInputDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogGlobalInputBinding dialogGlobalInputBinding = this$0.b;
        if (dialogGlobalInputBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = dialogGlobalInputBinding.groupEt.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入教学文案");
        } else {
            this$0.f6833a.invoke(string);
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogGlobalInputBinding dialogGlobalInputBindingInflate = DialogGlobalInputBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogGlobalInputBindingInflate, "inflate(layoutInflater)");
        this.b = dialogGlobalInputBindingInflate;
        if (dialogGlobalInputBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogGlobalInputBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_840), -2);
        }
        DialogGlobalInputBinding dialogGlobalInputBinding = this.b;
        if (dialogGlobalInputBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogGlobalInputBinding.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalInputDialog.c(this.f6903a, view);
            }
        });
        DialogGlobalInputBinding dialogGlobalInputBinding2 = this.b;
        if (dialogGlobalInputBinding2 != null) {
            dialogGlobalInputBinding2.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.w0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GlobalInputDialog.d(this.f6907a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
