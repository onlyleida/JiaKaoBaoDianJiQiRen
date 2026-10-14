package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogTeachAddGroupWhiteBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.n3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/WhiteAddGroupDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "step", "", "onCheck", "Lkotlin/Function1;", "", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupWhiteBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WhiteAddGroupDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6867a;
    private final Function1<String, Boolean> b;
    private DialogTeachAddGroupWhiteBinding c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WhiteAddGroupDialog(Context context, String step, Function1<? super String, Boolean> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(step, "step");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6867a = step;
        this.b = onCheck;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(WhiteAddGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(WhiteAddGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogTeachAddGroupWhiteBinding dialogTeachAddGroupWhiteBinding = this$0.c;
        if (dialogTeachAddGroupWhiteBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = dialogTeachAddGroupWhiteBinding.groupEt.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请填写方案名称");
        } else if (this$0.b.invoke(string).booleanValue()) {
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTeachAddGroupWhiteBinding dialogTeachAddGroupWhiteBindingInflate = DialogTeachAddGroupWhiteBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogTeachAddGroupWhiteBindingInflate, "inflate(layoutInflater)");
        this.c = dialogTeachAddGroupWhiteBindingInflate;
        if (dialogTeachAddGroupWhiteBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTeachAddGroupWhiteBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_840), -2);
        }
        DialogTeachAddGroupWhiteBinding dialogTeachAddGroupWhiteBinding = this.c;
        if (dialogTeachAddGroupWhiteBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachAddGroupWhiteBinding.stepTv.setText(this.f6867a);
        DialogTeachAddGroupWhiteBinding dialogTeachAddGroupWhiteBinding2 = this.c;
        if (dialogTeachAddGroupWhiteBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachAddGroupWhiteBinding2.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.e3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WhiteAddGroupDialog.c(this.f6808a, view);
            }
        });
        DialogTeachAddGroupWhiteBinding dialogTeachAddGroupWhiteBinding3 = this.c;
        if (dialogTeachAddGroupWhiteBinding3 != null) {
            dialogTeachAddGroupWhiteBinding3.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.f3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WhiteAddGroupDialog.d(this.f6813a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
