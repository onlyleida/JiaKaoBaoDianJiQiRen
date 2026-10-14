package cn.mucang.android.jiakaoyi.teachingk2.unity.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogSwitchKemuBinding;
import cn.mucang.android.jiakaoyi.teachingk2.unity.models.SwitchKeMuModel;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.jvm.b.q;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.y;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V", "job", "Lkotlinx/coroutines/Job;", "time", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchKemuBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchKeMuDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f8516a;
    private DialogSwitchKemuBinding b;
    private t1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8517d;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2", f = "SwitchKeMuDialog.kt", l = {78}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
        int label;
        final /* synthetic */ SwitchKeMuDialog this$0;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$1", f = "SwitchKeMuDialog.kt", l = {57, 58}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements p<kotlinx.coroutines.flow.d<? super Integer>, kotlin.coroutines.c<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SwitchKeMuDialog this$0;

            AnonymousClass1(SwitchKeMuDialog r1, kotlin.coroutines.c<? super AnonymousClass1> r2) {
                this.this$0 = r1;
                super(2, r2);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.c<v> create(Object r3, kotlin.coroutines.c<?> r4) {
                AnonymousClass1 r0 = new AnonymousClass1(this.this$0, r4);
                r0.L$0 = r3;
                return r0;
            }

            @Override // kotlin.jvm.b.p
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return invoke2(r1, r2);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r8) {
                Object r0 = kotlin.coroutines.intrinsics.a.d();
                int r1 = this.label;
                if (r1 == 0) goto L10;
                if (r1 == 1) goto L9;
                if (r1 != 2) goto L8;
                int r2 = this.I$0;
                kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                kotlinx.coroutines.flow.d r9 = r4;
                AnonymousClass1 r5 = this;
            L20:
                if (1 > r2) goto L22;
            L13:
                int r6 = r2 - 1;
                Integer r3 = kotlin.coroutines.jvm.internal.a.d(r2);
                r5.L$0 = r9;
                r5.I$0 = r6;
                r5.label = 1;
                if (r9.emit(r3, r5) != r0) goto L16;
                return r0;
            L16:
                r2 = r6;
            L17:
                r5.L$0 = r9;
                r5.I$0 = r2;
                r5.label = 2;
                if (s0.a(1000, r5) != r0) goto L20;
                return r0;
            L22:
                return v.f15822a;
            L8:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            L9:
                r2 = this.I$0;
                kotlinx.coroutines.flow.d r7 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                r9 = r7;
                r5 = this;
                goto L17
            L10:
                kotlin.k.b(r8);
                r9 = (kotlinx.coroutines.flow.d) this.L$0;
                r2 = SwitchKeMuDialog.a(this.this$0);
                if (1 > r2) goto L22;
                r5 = this;
                goto L13
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$2, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$2", f = "SwitchKeMuDialog.kt", l = {}, m = "invokeSuspend")
        static final class C01512 extends SuspendLambda implements q<kotlinx.coroutines.flow.d<? super Integer>, Throwable, kotlin.coroutines.c<? super v>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SwitchKeMuDialog this$0;

            C01512(SwitchKeMuDialog r1, kotlin.coroutines.c<? super C01512> r2) {
                this.this$0 = r1;
                super(3, r2);
            }

            @Override // kotlin.jvm.b.q
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super v> r3) {
                return invoke2(r1, r2, r3);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r2, Throwable r3, kotlin.coroutines.c<? super v> r4) {
                C01512 r5 = new C01512(this.this$0, r4);
                r5.L$0 = r3;
                return r5.invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r2) {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label != 0) goto L14;
                kotlin.k.b(r2);
                if (((Throwable) this.L$0) != null) goto L12;
                DialogSwitchKemuBinding r3 = SwitchKeMuDialog.b(this.this$0);
                if (r3 == null) goto L9;
                r3.switchTv.performClick();
                goto L12
            L9:
                r.u("viewBinding");
                throw null;
            L12:
                return v.f15822a;
            L14:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SwitchKeMuDialog f8518a;

            public a(SwitchKeMuDialog r1) {
                this.f8518a = r1;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer r5, kotlin.coroutines.c r6) {
                int r7 = r5.intValue();
                DialogSwitchKemuBinding r8 = SwitchKeMuDialog.b(this.f8518a);
                if (r8 == null) goto L6;
                TextView r9 = r8.switchTv;
                y r0 = y.f14671a;
                String r1 = k0.a(R.string.teachbase_switch);
                r.d(r1, "getString(R.string.teachbase_switch)");
                String r10 = String.format(r1, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(r7)}, 1));
                r.d(r10, "java.lang.String.format(format, *args)");
                r9.setText(r10);
                return v.f15822a;
            L6:
                r.u("viewBinding");
                throw null;
            }
        }

        AnonymousClass2(SwitchKeMuDialog r1, kotlin.coroutines.c<? super AnonymousClass2> r2) {
            this.this$0 = r1;
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
            return new AnonymousClass2(this.this$0, r3);
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass2) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r6) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L8;
            if (r1 != 1) goto L7;
            kotlin.k.b(r6);
        L12:
            return v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L8:
            kotlin.k.b(r6);
            kotlinx.coroutines.flow.c r7 = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.this$0, null)), new C01512(this.this$0, null));
            a r3 = new a(this.this$0);
            this.label = 1;
            if (r7.d(r3, this) != r0) goto L12;
            return r0;
        }
    }

    public SwitchKeMuDialog(Context r2, KeMu r3) {
        r.e(r2, "context");
        r.e(r3, "keMu");
        super(r2, R.style.jiakaoyi__dialog);
        this.f8516a = r3;
        this.f8517d = 5;
    }

    public static final /* synthetic */ int a(SwitchKeMuDialog r0) {
        return r0.f8517d;
    }

    public static final /* synthetic */ DialogSwitchKemuBinding b(SwitchKeMuDialog r0) {
        return r0.b;
    }

    public static /* synthetic */ void c(SwitchKeMuDialog r0, View r1) {
        d(r0, r1);
    }

    private static final void d(SwitchKeMuDialog r0, View r1) {
        r.e(r0, "this$0");
        DialogExtensionKt.b(r0);
        SwitchKeMuModel r2 = new SwitchKeMuModel();
        r2.kemu = r0.f8516a.serverKeMu;
        cn.mucang.android.jiakaoyi.unity.c.d.e(r2);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Result.a r0 = Result.Companion;     // Catch: Throwable -> L7
        super.dismiss();     // Catch: Throwable -> L7
        t1 r1 = this.c;     // Catch: Throwable -> L7
        if (r1 == null) goto L5;
        t1.a.a(r1, null, 1, null);     // Catch: Throwable -> L7
        Result.m139constructorimpl(v.f15822a);     // Catch: Throwable -> L7
        return;
    L5:
        r.u("job");     // Catch: Throwable -> L7
        throw null;
    L7:
        th = move-exception;
        Result.a r2 = Result.Companion;
        Result.m139constructorimpl(kotlin.k.a(th));
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle r10) {
        super.onCreate(r10);
        Window r11 = getWindow();
        if (r11 == null) goto L6;
        r11.addFlags(8);
    L6:
        Window r12 = getWindow();
        if (r12 == null) goto L10;
        r12.requestFeature(1);
    L10:
        DialogSwitchKemuBinding r13 = DialogSwitchKemuBinding.inflate(getLayoutInflater());
        r.d(r13, "inflate(layoutInflater)");
        this.b = r13;
        if (r13 == null) goto L26;
        setContentView(r13.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window r14 = getWindow();
        if (r14 == null) goto L16;
        r14.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
    L16:
        DialogSwitchKemuBinding r15 = this.b;
        if (r15 == null) goto L24;
        TextView r16 = r15.titleTv;
        y r3 = y.f14671a;
        String r4 = k0.a(R.string.teachbase_recognized_you);
        r.d(r4, "getString(R.string.teachbase_recognized_you)");
        String r7 = this.f8516a.name;
        String r0 = String.format(r4, Arrays.copyOf(new Object[]{r7, r7}, 2));
        r.d(r0, "java.lang.String.format(format, *args)");
        r16.setText(r0);
        DialogSwitchKemuBinding r17 = this.b;
        if (r17 == null) goto L22;
        r17.switchTv.setOnClickListener(new m(this));
        this.c = kotlinx.coroutines.f.b(j0.b(), null, null, new AnonymousClass2(this, null), 3, null);
        return;
    L22:
        r.u("viewBinding");
        throw null;
    L24:
        r.u("viewBinding");
        throw null;
    L26:
        r.u("viewBinding");
        throw null;
    }
}
