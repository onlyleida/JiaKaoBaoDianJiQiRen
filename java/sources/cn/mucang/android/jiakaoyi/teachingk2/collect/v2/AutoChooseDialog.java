package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogAutoChooseBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.g3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u0012\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/AutoChooseDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "onSelect", "Lkotlin/Function1;", "", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "getOnSelect", "()Lkotlin/jvm/functions/Function1;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogAutoChooseBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoChooseDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1<Integer, kotlin.v> f6818a;
    private DialogAutoChooseBinding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AutoChooseDialog(Context context, Function1<? super Integer, kotlin.v> onSelect) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onSelect, "onSelect");
        this.f6818a = onSelect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(AutoChooseDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.a().invoke(0);
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(AutoChooseDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
        this$0.a().invoke(1);
    }

    public final Function1<Integer, kotlin.v> a() {
        return this.f6818a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogAutoChooseBinding dialogAutoChooseBindingInflate = DialogAutoChooseBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogAutoChooseBindingInflate, "inflate(layoutInflater)");
        this.b = dialogAutoChooseBindingInflate;
        if (dialogAutoChooseBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogAutoChooseBindingInflate.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_600), -2);
        }
        DialogAutoChooseBinding dialogAutoChooseBinding = this.b;
        if (dialogAutoChooseBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogAutoChooseBinding.singleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoChooseDialog.d(this.f6784a, view);
            }
        });
        DialogAutoChooseBinding dialogAutoChooseBinding2 = this.b;
        if (dialogAutoChooseBinding2 != null) {
            dialogAutoChooseBinding2.routeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoChooseDialog.e(this.f6789a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
