package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogTeachAddGroupBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.y1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/AddGroupDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "step", "", "onCheck", "Lkotlin/Function1;", "", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogTeachAddGroupBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AddGroupDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6730a;
    private final Function1<String, Boolean> b;
    private DialogTeachAddGroupBinding c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AddGroupDialog(Context context, String step, Function1<? super String, Boolean> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(step, "step");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6730a = step;
        this.b = onCheck;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(AddGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(AddGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogTeachAddGroupBinding dialogTeachAddGroupBinding = this$0.c;
        if (dialogTeachAddGroupBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = dialogTeachAddGroupBinding.groupEt.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请填写方案名称");
        } else if (this$0.b.invoke(string).booleanValue()) {
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTeachAddGroupBinding dialogTeachAddGroupBindingInflate = DialogTeachAddGroupBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogTeachAddGroupBindingInflate, "inflate(layoutInflater)");
        this.c = dialogTeachAddGroupBindingInflate;
        if (dialogTeachAddGroupBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTeachAddGroupBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_840), -2);
        }
        DialogTeachAddGroupBinding dialogTeachAddGroupBinding = this.c;
        if (dialogTeachAddGroupBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachAddGroupBinding.stepTv.setText(this.f6730a);
        DialogTeachAddGroupBinding dialogTeachAddGroupBinding2 = this.c;
        if (dialogTeachAddGroupBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogTeachAddGroupBinding2.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddGroupDialog.c(this.f6548a, view);
            }
        });
        DialogTeachAddGroupBinding dialogTeachAddGroupBinding3 = this.c;
        if (dialogTeachAddGroupBinding3 != null) {
            dialogTeachAddGroupBinding3.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddGroupDialog.d(this.f6542a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
