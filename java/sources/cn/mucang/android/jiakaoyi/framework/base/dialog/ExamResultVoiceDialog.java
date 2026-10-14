package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.databinding.ExamResultVoiceDialogBinding;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/ExamResultVoiceDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "closeDialog", "Landroid/view/View$OnClickListener;", "playingTxt", "", "score", "", "isPass", "", "(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setData", "setDesc", ErrorDialogParams.EXTRA_MESSAGE, "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamResultVoiceDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View.OnClickListener f3398a;
    private final String b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExamResultVoiceDialogBinding f3400e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExamResultVoiceDialog(Context context, View.OnClickListener closeDialog, String str, int i, boolean z) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(closeDialog, "closeDialog");
        this.f3398a = closeDialog;
        this.b = str;
        this.c = i;
        this.f3399d = z;
    }

    private final void c() {
        ExamResultVoiceDialogBinding examResultVoiceDialogBinding = this.f3400e;
        if (examResultVoiceDialogBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examResultVoiceDialogBinding.closeTV.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExamResultVoiceDialog.d(this.f3386a, view);
            }
        });
        ExamResultVoiceDialogBinding examResultVoiceDialogBinding2 = this.f3400e;
        if (examResultVoiceDialogBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examResultVoiceDialogBinding2.examScore.setText(String.valueOf(this.c));
        if (this.f3399d) {
            ExamResultVoiceDialogBinding examResultVoiceDialogBinding3 = this.f3400e;
            if (examResultVoiceDialogBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examResultVoiceDialogBinding3.examScore.setTextColor(Color.parseColor("#02C8B7"));
        } else {
            ExamResultVoiceDialogBinding examResultVoiceDialogBinding4 = this.f3400e;
            if (examResultVoiceDialogBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examResultVoiceDialogBinding4.examScore.setTextColor(Color.parseColor("#FF4D4D"));
        }
        ExamResultVoiceDialogBinding examResultVoiceDialogBinding5 = this.f3400e;
        if (examResultVoiceDialogBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        examResultVoiceDialogBinding5.descTv.setText(this.b);
        if (!AppUtils.k()) {
            ExamResultVoiceDialogBinding examResultVoiceDialogBinding6 = this.f3400e;
            if (examResultVoiceDialogBinding6 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examResultVoiceDialogBinding6.traceTV.setVisibility(8);
            ExamResultVoiceDialogBinding examResultVoiceDialogBinding7 = this.f3400e;
            if (examResultVoiceDialogBinding7 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examResultVoiceDialogBinding7.closeTV.setBackground(androidx.core.a.a.f(getContext(), R.drawable.shape_008aff_r100));
            ExamResultVoiceDialogBinding examResultVoiceDialogBinding8 = this.f3400e;
            if (examResultVoiceDialogBinding8 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            examResultVoiceDialogBinding8.closeTV.setTextColor(androidx.core.a.a.c(getContext(), R.color.dialog_button_main_color));
        }
        ExamResultVoiceDialogBinding examResultVoiceDialogBinding9 = this.f3400e;
        if (examResultVoiceDialogBinding9 != null) {
            examResultVoiceDialogBinding9.traceTV.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExamResultVoiceDialog.e(this.f3387a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ExamResultVoiceDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        this$0.f3398a.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ExamResultVoiceDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/lookTrace");
        DialogExtensionKt.b(this$0);
    }

    public final void f(String message) {
        kotlin.jvm.internal.r.e(message, "message");
        ExamResultVoiceDialogBinding examResultVoiceDialogBinding = this.f3400e;
        if (examResultVoiceDialogBinding != null) {
            examResultVoiceDialogBinding.descTv.setText(message);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ExamResultVoiceDialogBinding examResultVoiceDialogBindingInflate = ExamResultVoiceDialogBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(examResultVoiceDialogBindingInflate, "inflate(layoutInflater)");
        this.f3400e = examResultVoiceDialogBindingInflate;
        if (examResultVoiceDialogBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(examResultVoiceDialogBindingInflate.getRoot());
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        c();
    }
}
