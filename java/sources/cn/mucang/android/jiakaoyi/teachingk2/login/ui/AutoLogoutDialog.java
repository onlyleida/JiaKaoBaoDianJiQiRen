package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAutoLogoutBinding;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "binding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;", "getBinding", "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;", "binding$delegate", "Lkotlin/Lazy;", "countDownTime", "", "job", "Lkotlinx/coroutines/Job;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoLogoutDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f7351a;
    private t1 b;
    private int c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$onCreate$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$onCreate$3", f = "AutoLogoutDialog.kt", l = {81}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = AutoLogoutDialog.this.new AnonymousClass3(continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0054  */
        /* JADX WARN: Code duplicated, block: B:13:0x0066  */
        /* JADX WARN: Code duplicated, block: B:14:0x0090  */
        /* JADX WARN: Code duplicated, block: B:17:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:19:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:24:0x0109  */
        /* JADX WARN: Code duplicated, block: B:26:0x0119 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0117 -> B:27:0x011a). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoLogoutDialog(final Context context) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        this.f7351a = kotlin.i.b(new Function0<DialogAutoLogoutBinding>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DialogAutoLogoutBinding invoke() {
                return DialogAutoLogoutBinding.inflate(LayoutInflater.from(context));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogAutoLogoutBinding d() {
        return (DialogAutoLogoutBinding) this.f7351a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(AutoLogoutDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.g("关闭熄屏弹窗");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AutoLogoutDialog this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        t1 t1Var = this$0.b;
        if (t1Var == null) {
            return;
        }
        t1.a.a(t1Var, null, 1, null);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(d().getRoot());
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
        d().getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoLogoutDialog.g(this.f7372a, view);
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.e
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AutoLogoutDialog.h(this.f7374a, dialogInterface);
            }
        });
        this.c = 599;
        t1 t1Var = this.b;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.b = kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass3(null), 3, null);
    }
}
