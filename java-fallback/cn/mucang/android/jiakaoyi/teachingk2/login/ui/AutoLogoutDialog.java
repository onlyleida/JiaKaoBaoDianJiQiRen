package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAutoLogoutBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "binding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;", "getBinding", "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;", "binding$delegate", "Lkotlin/Lazy;", "countDownTime", "", "job", "Lkotlinx/coroutines/Job;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoLogoutDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.f f7351a;
    private t1 b;
    private int c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$onCreate$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$onCreate$3", f = "AutoLogoutDialog.kt", l = {81}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ AutoLogoutDialog this$0;

        AnonymousClass3(AutoLogoutDialog r1, kotlin.coroutines.c<? super AnonymousClass3> r2) {
            this.this$0 = r1;
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
            AnonymousClass3 r0 = new AnonymousClass3(this.this$0, r4);
            r0.L$0 = r3;
            return r0;
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return ((AnonymousClass3) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0117 -> B:27:0x011a). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r13) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L8;
            if (r1 != 1) goto L7;
            AbsoluteSizeSpan r2 = (AbsoluteSizeSpan) this.L$2;
            ForegroundColorSpan r3 = (ForegroundColorSpan) this.L$1;
            kotlinx.coroutines.i0 r4 = (kotlinx.coroutines.i0) this.L$0;
            kotlin.k.b(r13);
            AnonymousClass3 r14 = this;
        L27:
            AutoLogoutDialog r5 = r14.this$0;
            AutoLogoutDialog.c(r5, AutoLogoutDialog.b(r5) - 1);
        L10:
            if (kotlinx.coroutines.j0.g(r4) == false) goto L29;
            SpannableStringBuilder r6 = new SpannableStringBuilder();
            if ((AutoLogoutDialog.b(r14.this$0) / 60) <= 0) goto L14;
            kotlin.jvm.internal.y r7 = kotlin.jvm.internal.y.f14671a;
            String r8 = k0.a(R.string.teachbase_x_minutes);
            kotlin.jvm.internal.r.d(r8, "getString(R.string.teachbase_x_minutes)");
            String r9 = String.format(r8, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d((AutoLogoutDialog.b(r14.this$0) / 60) + 1)}, 1));
            kotlin.jvm.internal.r.d(r9, "java.lang.String.format(format, *args)");
        L15:
            r6.append(r9);
            r6.setSpan(r3, 0, r6.length(), 17);
            r6.setSpan(r2, 0, r6.length(), 17);
            r6.append(k0.a(R.string.teachbase_close_door_auto_login));
            AutoLogoutDialog.a(r14.this$0).tvTimeHint.setText(r6);
            if (AutoLogoutDialog.b(r14.this$0) != 0) goto L24;
            DialogExtensionKt.b(r14.this$0);
            Activity r15 = MucangConfig.i();
            if (r15 == null) goto L29;
            if (r15.isDestroyed() == true) goto L29;
            if (r15.isFinishing() == true) goto L29;
            cn.mucang.android.jiakaoyi.framework.log.f.g("熄屏倒计时结束，自动退出登录");
            RobotAccount.p("AutoLogout", null, 2, null);
            goto L29
        L24:
            r14.L$0 = r4;
            r14.L$1 = r3;
            r14.L$2 = r2;
            r14.label = 1;
            if (s0.a(1000, r14) != r0) goto L27;
            return r0;
        L14:
            kotlin.jvm.internal.y r10 = kotlin.jvm.internal.y.f14671a;
            String r11 = k0.a(R.string.teachbase_x_sconds);
            kotlin.jvm.internal.r.d(r11, "getString(R.string.teachbase_x_sconds)");
            r9 = String.format(r11, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(AutoLogoutDialog.b(r14.this$0))}, 1));
            kotlin.jvm.internal.r.d(r9, "java.lang.String.format(format, *args)");
        L29:
            return kotlin.v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L8:
            kotlin.k.b(r13);
            kotlinx.coroutines.i0 r16 = (kotlinx.coroutines.i0) this.L$0;
            r4 = r16;
            r14 = this;
            r3 = new ForegroundColorSpan(-16741633);
            r2 = new AbsoluteSizeSpan(this.this$0.getContext().getResources().getDimensionPixelSize(R.dimen.rpx_32));
            goto L10
        }
    }

    public AutoLogoutDialog(final Context r2) {
        kotlin.jvm.internal.r.e(r2, "context");
        super(r2, R.style.jiakaoyi__dialog);
        this.f7351a = kotlin.h.b(new AutoLogoutDialog$binding$2(r2));
    }

    public static final /* synthetic */ DialogAutoLogoutBinding a(AutoLogoutDialog r0) {
        return r0.d();
    }

    public static final /* synthetic */ int b(AutoLogoutDialog r0) {
        return r0.c;
    }

    public static final /* synthetic */ void c(AutoLogoutDialog r0, int r1) {
        r0.c = r1;
    }

    private final DialogAutoLogoutBinding d() {
        return (DialogAutoLogoutBinding) this.f7351a.getValue();
    }

    public static /* synthetic */ void e(AutoLogoutDialog r0, View r1) {
        g(r0, r1);
    }

    public static /* synthetic */ void f(AutoLogoutDialog r0, DialogInterface r1) {
        h(r0, r1);
    }

    private static final void g(AutoLogoutDialog r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.g("关闭熄屏弹窗");
        DialogExtensionKt.b(r0);
    }

    private static final void h(AutoLogoutDialog r1, DialogInterface r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        t1 r3 = r1.b;
        if (r3 == null) goto L7;
        t1.a.a(r3, null, 1, null);
        return;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle r9) {
        super.onCreate(r9);
        setContentView(d().getRoot());
        Window r10 = getWindow();
        if (r10 == null) goto L6;
        r10.setLayout(-1, -1);
    L6:
        d().getRoot().setOnClickListener(new d(this));
        setOnDismissListener(new e(this));
        this.c = 599;
        t1 r11 = this.b;
        if (r11 == null) goto L10;
        t1.a.a(r11, null, 1, null);
    L10:
        this.b = kotlinx.coroutines.f.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass3(this, null), 3, null);
    }
}
