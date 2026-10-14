package kotlinx.coroutines;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/j;", "Lkotlinx/coroutines/s;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {949, 951}, m = "invokeSuspend")
final class JobSupport$children$1 extends RestrictedSuspendLambda implements kotlin.jvm.b.p<kotlin.sequences.j<? super s>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    private kotlin.sequences.j p$;
    final /* synthetic */ a2 this$0;

    JobSupport$children$1(a2 r1, kotlin.coroutines.c r2) {
        this.this$0 = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
        JobSupport$children$1 r0 = new JobSupport$children$1(this.this$0, r4);
        r0.p$ = (kotlin.sequences.j) r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(kotlin.sequences.j<? super s> r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((JobSupport$children$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0081 -> B:27:0x009d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x009a -> B:27:0x009d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r11) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        r r2 = (r) this.L$5;
        kotlinx.coroutines.internal.n r3 = (kotlinx.coroutines.internal.n) this.L$4;
        kotlinx.coroutines.internal.l r4 = (kotlinx.coroutines.internal.l) this.L$3;
        kotlinx.coroutines.internal.l r5 = (e2) this.L$2;
        Object r6 = this.L$1;
        kotlin.sequences.j r7 = (kotlin.sequences.j) this.L$0;
        kotlin.k.b(r11);
        JobSupport$children$1 r12 = this;
    L27:
        r3 = r3.H();
    L21:
        if ((!kotlin.jvm.internal.r.a(r3, r4)) == false) goto L29;
        if ((r3 instanceof r) == false) goto L27;
        r r8 = (r) r3;
        s r9 = r8.f16063e;
        r12.L$0 = r7;
        r12.L$1 = r6;
        r12.L$2 = r5;
        r12.L$3 = r4;
        r12.L$4 = r3;
        r12.L$5 = r8;
        r12.label = 2;
        if (r7.e(r9, r12) != r0) goto L27;
        return r0;
    L29:
        return kotlin.v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        kotlin.sequences.j r10 = (kotlin.sequences.j) this.L$0;
        kotlin.k.b(r11);
        goto L29
    L10:
        kotlin.k.b(r11);
        kotlin.sequences.j r13 = this.p$;
        Object r14 = this.this$0.k0();
        if ((r14 instanceof r) == false) goto L16;
        s r15 = ((r) r14).f16063e;
        this.L$0 = r13;
        this.L$1 = r14;
        this.label = 1;
        if (r13.e(r15, this) != r0) goto L29;
        return r0;
    L16:
        if ((r14 instanceof n1) == false) goto L29;
        r4 = ((n1) r14).d();
        if (r4 == null) goto L29;
        Object r16 = r4.G();
        Objects.requireNonNull(r16, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        r7 = r13;
        r6 = r14;
        r3 = (kotlinx.coroutines.internal.n) r16;
        r12 = this;
        r5 = r4;
        goto L21
    }
}
