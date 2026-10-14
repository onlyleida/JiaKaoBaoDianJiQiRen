package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogHighlightH5Binding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightH5Dialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "entity", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V", "getEntity", "()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighlightH5Dialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HighlightVideoEntity f7162a;
    private DialogHighlightH5Binding b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HighlightH5Dialog(Context context, HighlightVideoEntity entity) {
        super(context, R.style.jiakaoyi__full_dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(entity, "entity");
        this.f7162a = entity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(HighlightH5Dialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(HighlightH5Dialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        HighlightVideoManager.u(activityI, this$0.getF7162a().getShareUrl());
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final HighlightVideoEntity getF7162a() {
        return this.f7162a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        DialogHighlightH5Binding dialogHighlightH5Binding = this.b;
        if (dialogHighlightH5Binding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogHighlightH5Binding.webView.destroy();
        super.dismiss();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogHighlightH5Binding dialogHighlightH5BindingInflate = DialogHighlightH5Binding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogHighlightH5BindingInflate, "inflate(layoutInflater)");
        this.b = dialogHighlightH5BindingInflate;
        if (dialogHighlightH5BindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogHighlightH5BindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 758.0f) / 1920.0f), -2);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setFlags(16777216, 16777216);
        }
        DialogHighlightH5Binding dialogHighlightH5Binding = this.b;
        if (dialogHighlightH5Binding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogHighlightH5Binding.webView.loadUrl(kotlin.jvm.internal.r.m(this.f7162a.getShareUrl(), "&from=jiakaoyi_coach"));
        DialogHighlightH5Binding dialogHighlightH5Binding2 = this.b;
        if (dialogHighlightH5Binding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogHighlightH5Binding2.closeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HighlightH5Dialog.d(this.f7151a, view);
            }
        });
        DialogHighlightH5Binding dialogHighlightH5Binding3 = this.b;
        if (dialogHighlightH5Binding3 != null) {
            dialogHighlightH5Binding3.shareTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HighlightH5Dialog.e(this.f7150a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
