package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogHighlightShareBinding;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightShareDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "shareUrl", "", "(Landroid/content/Context;Ljava/lang/String;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightShareBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighlightShareDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7135a;
    private DialogHighlightShareBinding b;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightShareDialog$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightShareDialog$onCreate$2", f = "HighlightShareDialog.kt", l = {45}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightShareDialog$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightShareDialog$onCreate$2$1", f = "HighlightShareDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            final /* synthetic */ Bitmap $bitmap;
            int label;
            final /* synthetic */ HighlightShareDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(HighlightShareDialog highlightShareDialog, Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = highlightShareDialog;
                this.$bitmap = bitmap;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$bitmap, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                DialogHighlightShareBinding dialogHighlightShareBinding = this.this$0.b;
                if (dialogHighlightShareBinding != null) {
                    dialogHighlightShareBinding.qrcodeIv.setImageBitmap(this.$bitmap);
                    return v.f15822a;
                }
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return HighlightShareDialog.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                Bitmap bitmapB = cn.mucang.android.jiakaoyi.framework.i.a.b(HighlightShareDialog.this.f7135a, (int) HighlightShareDialog.this.getContext().getResources().getDimension(R.dimen.rpx_210));
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(HighlightShareDialog.this, bitmapB, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HighlightShareDialog(Context context, String shareUrl) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(shareUrl, "shareUrl");
        this.f7135a = shareUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(HighlightShareDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogHighlightShareBinding dialogHighlightShareBindingInflate = DialogHighlightShareBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogHighlightShareBindingInflate, "inflate(layoutInflater)");
        this.b = dialogHighlightShareBindingInflate;
        if (dialogHighlightShareBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogHighlightShareBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 520.0f) / 1920.0f), -2);
        }
        DialogHighlightShareBinding dialogHighlightShareBinding = this.b;
        if (dialogHighlightShareBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogHighlightShareBinding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HighlightShareDialog.d(this.f7152a, view);
            }
        });
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new AnonymousClass2(null), 3, null);
    }
}
