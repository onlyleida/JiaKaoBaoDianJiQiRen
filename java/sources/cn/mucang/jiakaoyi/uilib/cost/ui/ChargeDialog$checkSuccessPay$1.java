package cn.mucang.jiakaoyi.uilib.cost.ui;

import cn.mucang.jiakaoyi.uilib.api.ChargeApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$checkSuccessPay$1", f = "ChargeDialog.kt", l = {75, 78}, m = "invokeSuspend")
final class ChargeDialog$checkSuccessPay$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ ChargeDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$checkSuccessPay$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$checkSuccessPay$1$1", f = "ChargeDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ ChargeDialog this$0;

        AnonymousClass1(ChargeDialog chargeDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.this$0.dismiss();
            throw null;
        }
    }

    ChargeDialog$checkSuccessPay$1(ChargeDialog chargeDialog, Continuation<? super ChargeDialog$checkSuccessPay$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ChargeDialog$checkSuccessPay$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ChargeDialog$checkSuccessPay$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0047 A[Catch: Exception -> 0x001e, TryCatch #0 {Exception -> 0x001e, blocks: (B:6:0x000e, B:10:0x001a, B:20:0x0036, B:22:0x0047, B:25:0x005c, B:15:0x0023, B:17:0x002b), top: B:30:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x005c A[Catch: Exception -> 0x001e, TRY_LEAVE, TryCatch #0 {Exception -> 0x001e, blocks: (B:6:0x000e, B:10:0x001a, B:20:0x0036, B:22:0x0047, B:25:0x005c, B:15:0x0023, B:17:0x002b), top: B:30:0x0008 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d2 d2VarC;
        AnonymousClass1 anonymousClass1;
        Object objD = b.d();
        int i = this.label;
        try {
            if (i == 0) {
                k.b(obj);
                if (this.this$0.isShowing()) {
                    this.label = 1;
                    if (s0.a(500L, this) == objD) {
                        return objD;
                    }
                    if (new ChargeApi().m(this.this$0.f9197a)) {
                        d2VarC = w0.c();
                        anonymousClass1 = new AnonymousClass1(this.this$0, null);
                        this.label = 2;
                        if (f.c(d2VarC, anonymousClass1, this) == objD) {
                            return objD;
                        }
                    } else {
                        this.this$0.d();
                    }
                }
            } else if (i == 1) {
                k.b(obj);
                if (new ChargeApi().m(this.this$0.f9197a)) {
                    d2VarC = w0.c();
                    anonymousClass1 = new AnonymousClass1(this.this$0, null);
                    this.label = 2;
                    if (f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } else {
                    this.this$0.d();
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return v.f15822a;
    }
}
