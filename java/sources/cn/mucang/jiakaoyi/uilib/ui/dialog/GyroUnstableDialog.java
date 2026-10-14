package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogGyroUnstableBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.k0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0015R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/GyroUnstableDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "ok", "Lkotlin/Function0;", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;", "widthDp", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GyroUnstableDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<kotlin.v> f9828a;
    private DialogGyroUnstableBinding b;
    private final float c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GyroUnstableDialog(Context context, Function0<kotlin.v> function0) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        this.f9828a = function0;
        this.c = 500.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(GyroUnstableDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        Function0<kotlin.v> function0 = this$0.f9828a;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n", "RestrictedApi"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogGyroUnstableBinding dialogGyroUnstableBindingInflate = DialogGyroUnstableBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogGyroUnstableBindingInflate, "inflate(layoutInflater)");
        this.b = dialogGyroUnstableBindingInflate;
        if (dialogGyroUnstableBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogGyroUnstableBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        int iA = s0.a(this.c);
        if (iA <= this.c) {
            iA = (int) (((double) cn.mucang.android.core.utils.o0.q(MucangConfig.i().getWindowManager())) * 0.52d);
        }
        Window window = getWindow();
        if (window != null) {
            window.setLayout(iA, -2);
        }
        DialogGyroUnstableBinding dialogGyroUnstableBinding = this.b;
        if (dialogGyroUnstableBinding != null) {
            dialogGyroUnstableBinding.agree.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GyroUnstableDialog.b(this.f9816a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
