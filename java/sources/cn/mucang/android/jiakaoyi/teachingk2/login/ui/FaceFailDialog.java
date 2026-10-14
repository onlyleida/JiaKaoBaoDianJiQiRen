package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.FaceFailDialogBinding;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.f0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SpeechConstant.PARAMS, "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog$DialogParams;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog$DialogParams;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setData", "show", "DialogParams", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceFailDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DialogParams f7377a;
    private FaceFailDialogBinding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaceFailDialog(Context context, DialogParams params) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(params, "params");
        this.f7377a = params;
    }

    private final void c() {
        FaceFailDialogBinding faceFailDialogBinding = this.b;
        if (faceFailDialogBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        faceFailDialogBinding.btnLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceFailDialog.d(this.f7379a, view);
            }
        });
        FaceFailDialogBinding faceFailDialogBinding2 = this.b;
        if (faceFailDialogBinding2 != null) {
            faceFailDialogBinding2.btnRight.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FaceFailDialog.e(this.f7382a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(FaceFailDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        View.OnClickListener leftListener = this$0.f7377a.getLeftListener();
        if (leftListener == null) {
            return;
        }
        leftListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(FaceFailDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        View.OnClickListener rightListener = this$0.f7377a.getRightListener();
        if (rightListener == null) {
            return;
        }
        rightListener.onClick(view);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FaceFailDialogBinding faceFailDialogBindingInflate = FaceFailDialogBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(faceFailDialogBindingInflate, "inflate(layoutInflater)");
        this.b = faceFailDialogBindingInflate;
        if (faceFailDialogBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(faceFailDialogBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        c();
    }

    @Override // android.app.Dialog
    public void show() {
        Activity activityA = ActivityUtils.a(getContext());
        if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
            return;
        }
        super.show();
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.f0$a, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog$DialogParams;", "", "leftListener", "Landroid/view/View$OnClickListener;", "rightListener", "(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V", "getLeftListener", "()Landroid/view/View$OnClickListener;", "getRightListener", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "", "toString", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final /* data */ class DialogParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
        private final View.OnClickListener leftListener;

        /* JADX INFO: renamed from: b, reason: from toString */
        private final View.OnClickListener rightListener;

        /* JADX WARN: Multi-variable type inference failed */
        public DialogParams() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public DialogParams(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
            this.leftListener = onClickListener;
            this.rightListener = onClickListener2;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final View.OnClickListener getLeftListener() {
            return this.leftListener;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final View.OnClickListener getRightListener() {
            return this.rightListener;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DialogParams)) {
                return false;
            }
            DialogParams dialogParams = (DialogParams) other;
            return kotlin.jvm.internal.r.a(this.leftListener, dialogParams.leftListener) && kotlin.jvm.internal.r.a(this.rightListener, dialogParams.rightListener);
        }

        public int hashCode() {
            View.OnClickListener onClickListener = this.leftListener;
            int iHashCode = (onClickListener == null ? 0 : onClickListener.hashCode()) * 31;
            View.OnClickListener onClickListener2 = this.rightListener;
            return iHashCode + (onClickListener2 != null ? onClickListener2.hashCode() : 0);
        }

        public String toString() {
            return "DialogParams(leftListener=" + this.leftListener + ", rightListener=" + this.rightListener + ')';
        }

        public /* synthetic */ DialogParams(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, int i, kotlin.jvm.internal.o oVar) {
            this((i & 1) != 0 ? null : onClickListener, (i & 2) != 0 ? null : onClickListener2);
        }
    }
}
