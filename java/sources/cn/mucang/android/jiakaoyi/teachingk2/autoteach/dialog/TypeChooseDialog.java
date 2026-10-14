package cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogTypeChooseBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u0012\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TypeChooseDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "onSelect", "Lkotlin/Function1;", "", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "getOnSelect", "()Lkotlin/jvm/functions/Function1;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogTypeChooseBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TypeChooseDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1<Integer, v> f6293a;
    private DialogTypeChooseBinding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TypeChooseDialog(Context context, Function1<? super Integer, v> onSelect) {
        super(context, R.style.out_side_click_dialog);
        r.e(context, "context");
        r.e(onSelect, "onSelect");
        this.f6293a = onSelect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TypeChooseDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.a().invoke(1);
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(TypeChooseDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
        this$0.a().invoke(2);
    }

    public final Function1<Integer, v> a() {
        return this.f6293a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTypeChooseBinding dialogTypeChooseBindingInflate = DialogTypeChooseBinding.inflate(getLayoutInflater());
        r.d(dialogTypeChooseBindingInflate, "inflate(layoutInflater)");
        this.b = dialogTypeChooseBindingInflate;
        if (dialogTypeChooseBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTypeChooseBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setFlags(8, 8);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_600), -2);
        }
        DialogTypeChooseBinding dialogTypeChooseBinding = this.b;
        if (dialogTypeChooseBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogTypeChooseBinding.singleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TypeChooseDialog.d(this.f6286a, view);
            }
        });
        DialogTypeChooseBinding dialogTypeChooseBinding2 = this.b;
        if (dialogTypeChooseBinding2 != null) {
            dialogTypeChooseBinding2.routeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TypeChooseDialog.e(this.f6287a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
