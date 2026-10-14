package cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.constraintlayout.widget.Group;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogPrecisionInputBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012 \u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\u0010\rJ\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionInputDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "frontDistance", "", "backDistance", "headDistance", "onConfirm", "Lkotlin/Function3;", "", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/Step;DDDLkotlin/jvm/functions/Function3;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrecisionInputBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrecisionInputDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Step f6052a;
    private final double b;
    private final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f6053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function3<Double, Double, Double, v> f6054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DialogPrecisionInputBinding f6055f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PrecisionInputDialog(Context context, Step step, double d2, double d3, double d4, Function3<? super Double, ? super Double, ? super Double, v> onConfirm) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(step, "step");
        r.e(onConfirm, "onConfirm");
        this.f6052a = step;
        this.b = d2;
        this.c = d3;
        this.f6053d = d4;
        this.f6054e = onConfirm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(PrecisionInputDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PrecisionInputDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogPrecisionInputBinding dialogPrecisionInputBinding = this$0.f6055f;
        if (dialogPrecisionInputBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        Double dH = kotlin.text.r.h(dialogPrecisionInputBinding.front3.getText().toString());
        if (dH == null) {
            u.h("请输入右前轮与边线的测量距离");
            return;
        }
        DialogPrecisionInputBinding dialogPrecisionInputBinding2 = this$0.f6055f;
        if (dialogPrecisionInputBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        Double dH2 = kotlin.text.r.h(dialogPrecisionInputBinding2.back3.getText().toString());
        if (dH2 == null) {
            u.h("请输入右后轮与边线的测量距离");
            return;
        }
        DialogPrecisionInputBinding dialogPrecisionInputBinding3 = this$0.f6055f;
        if (dialogPrecisionInputBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        Double dH3 = kotlin.text.r.h(dialogPrecisionInputBinding3.head3.getText().toString());
        if (dH3 == null && this$0.f6052a == Step.K2_ShangPoQiBu) {
            u.h("请输入保险杠与7-8线的测量距离");
        } else {
            this$0.f6054e.invoke(dH, dH2, dH3);
            DialogExtensionKt.b(this$0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogPrecisionInputBinding dialogPrecisionInputBindingInflate = DialogPrecisionInputBinding.inflate(getLayoutInflater());
        r.d(dialogPrecisionInputBindingInflate, "inflate(layoutInflater)");
        this.f6055f = dialogPrecisionInputBindingInflate;
        if (dialogPrecisionInputBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogPrecisionInputBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogPrecisionInputBinding dialogPrecisionInputBinding = this.f6055f;
        if (dialogPrecisionInputBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogPrecisionInputBinding.stepTv.setText(this.f6052a.stepName);
        DialogPrecisionInputBinding dialogPrecisionInputBinding2 = this.f6055f;
        if (dialogPrecisionInputBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogPrecisionInputBinding2.front2.setText(String.valueOf(this.b));
        DialogPrecisionInputBinding dialogPrecisionInputBinding3 = this.f6055f;
        if (dialogPrecisionInputBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogPrecisionInputBinding3.back2.setText(String.valueOf(this.c));
        DialogPrecisionInputBinding dialogPrecisionInputBinding4 = this.f6055f;
        if (dialogPrecisionInputBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogPrecisionInputBinding4.head2.setText(String.valueOf(this.f6053d));
        DialogPrecisionInputBinding dialogPrecisionInputBinding5 = this.f6055f;
        if (dialogPrecisionInputBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        Group group = dialogPrecisionInputBinding5.headGroup;
        r.d(group, "viewBinding.headGroup");
        group.setVisibility(this.f6052a == Step.K2_ShangPoQiBu ? 0 : 8);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_925), -2);
        }
        DialogPrecisionInputBinding dialogPrecisionInputBinding6 = this.f6055f;
        if (dialogPrecisionInputBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogPrecisionInputBinding6.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrecisionInputDialog.c(this.f6051a, view);
            }
        });
        DialogPrecisionInputBinding dialogPrecisionInputBinding7 = this.f6055f;
        if (dialogPrecisionInputBinding7 != null) {
            dialogPrecisionInputBinding7.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PrecisionInputDialog.d(this.f6050a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
