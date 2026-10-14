package cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog;

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
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.SwitchKeMuModel;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
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
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2", f = "SwitchKeMuDialog.kt", l = {78}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$1", f = "SwitchKeMuDialog.kt", l = {57, 58}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<d<? super Integer>, Continuation<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SwitchKeMuDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SwitchKeMuDialog switchKeMuDialog, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = switchKeMuDialog;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(d<? super Integer> dVar, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0060 A[RETURN] */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
            
                if (1 > r1) goto L21;
             */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
                    int r1 = r7.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L2e
                    if (r1 == r3) goto L22
                    if (r1 != r2) goto L1a
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L61
                L1a:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L22:
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L52
                L2e:
                    kotlin.k.b(r8)
                    java.lang.Object r8 = r7.L$0
                    kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                    cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog r1 = r7.this$0
                    int r1 = cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.SwitchKeMuDialog.a(r1)
                    if (r3 > r1) goto L63
                    r4 = r7
                L3e:
                    int r5 = r1 + (-1)
                    java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                    r4.L$0 = r8
                    r4.I$0 = r5
                    r4.label = r3
                    java.lang.Object r1 = r8.emit(r1, r4)
                    if (r1 != r0) goto L51
                    return r0
                L51:
                    r1 = r5
                L52:
                    r5 = 1000(0x3e8, double:4.94E-321)
                    r4.L$0 = r8
                    r4.I$0 = r1
                    r4.label = r2
                    java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                    if (r5 != r0) goto L61
                    return r0
                L61:
                    if (r3 <= r1) goto L3e
                L63:
                    kotlin.v r8 = kotlin.v.f15822a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.SwitchKeMuDialog.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$2, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$2", f = "SwitchKeMuDialog.kt", l = {}, m = "invokeSuspend")
        static final class C01442 extends SuspendLambda implements Function3<d<? super Integer>, Throwable, Continuation<? super v>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ SwitchKeMuDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01442(SwitchKeMuDialog switchKeMuDialog, Continuation<? super C01442> continuation) {
                super(3, continuation);
                this.this$0 = switchKeMuDialog;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(d<? super Integer> dVar, Throwable th, Continuation<? super v> continuation) {
                C01442 c01442 = new C01442(this.this$0, continuation);
                c01442.L$0 = th;
                return c01442.invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                if (((Throwable) this.L$0) == null) {
                    DialogSwitchKemuBinding dialogSwitchKemuBinding = this.this$0.b;
                    if (dialogSwitchKemuBinding == null) {
                        r.u("viewBinding");
                        throw null;
                    }
                    dialogSwitchKemuBinding.switchTv.performClick();
                }
                return v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.SwitchKeMuDialog$onCreate$2$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SwitchKeMuDialog f8518a;

            public a(SwitchKeMuDialog switchKeMuDialog) {
                this.f8518a = switchKeMuDialog;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer num, Continuation continuation) {
                int iIntValue = num.intValue();
                DialogSwitchKemuBinding dialogSwitchKemuBinding = this.f8518a.b;
                if (dialogSwitchKemuBinding == null) {
                    r.u("viewBinding");
                    throw null;
                }
                TextView textView = dialogSwitchKemuBinding.switchTv;
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_switch);
                r.d(strA, "getString(R.string.teachbase_switch)");
                String str = String.format(strA, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(iIntValue)}, 1));
                r.d(str, "java.lang.String.format(format, *args)");
                textView.setText(str);
                return v.f15822a;
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return SwitchKeMuDialog.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                c cVarX = f.x(f.t(new AnonymousClass1(SwitchKeMuDialog.this, null)), new C01442(SwitchKeMuDialog.this, null));
                a aVar = new a(SwitchKeMuDialog.this);
                this.label = 1;
                if (cVarX.d(aVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchKeMuDialog(Context context, KeMu keMu) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(keMu, "keMu");
        this.f8516a = keMu;
        this.f8517d = 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SwitchKeMuDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
        SwitchKeMuModel switchKeMuModel = new SwitchKeMuModel();
        switchKeMuModel.kemu = this$0.f8516a.serverKeMu;
        cn.mucang.android.jiakaoyi.unity.c.d.e(switchKeMuModel);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.dismiss();
            t1 t1Var = this.c;
            if (t1Var == null) {
                r.u("job");
                throw null;
            }
            t1.a.a(t1Var, null, 1, null);
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.addFlags(8);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.requestFeature(1);
        }
        DialogSwitchKemuBinding dialogSwitchKemuBindingInflate = DialogSwitchKemuBinding.inflate(getLayoutInflater());
        r.d(dialogSwitchKemuBindingInflate, "inflate(layoutInflater)");
        this.b = dialogSwitchKemuBindingInflate;
        if (dialogSwitchKemuBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSwitchKemuBindingInflate.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        DialogSwitchKemuBinding dialogSwitchKemuBinding = this.b;
        if (dialogSwitchKemuBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogSwitchKemuBinding.titleTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_recognized_you);
        r.d(strA, "getString(R.string.teachbase_recognized_you)");
        String str = this.f8516a.name;
        String str2 = String.format(strA, Arrays.copyOf(new Object[]{str, str}, 2));
        r.d(str2, "java.lang.String.format(format, *args)");
        textView.setText(str2);
        DialogSwitchKemuBinding dialogSwitchKemuBinding2 = this.b;
        if (dialogSwitchKemuBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchKemuBinding2.switchTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchKeMuDialog.d(this.f8531a, view);
            }
        });
        this.c = g.b(j0.b(), null, null, new AnonymousClass2(null), 3, null);
    }
}
