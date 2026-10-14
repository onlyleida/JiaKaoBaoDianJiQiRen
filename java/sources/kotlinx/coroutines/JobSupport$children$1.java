package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/sequences/j;", "Lkotlinx/coroutines/s;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {949, 951}, m = "invokeSuspend")
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super s>, Continuation<? super kotlin.v>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    private SequenceScope p$;
    final /* synthetic */ a2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JobSupport$children$1(a2 a2Var, Continuation continuation) {
        super(2, continuation);
        this.this$0 = a2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, continuation);
        jobSupport$children$1.p$ = (SequenceScope) obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super s> sequenceScope, Continuation<? super kotlin.v> continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0083  */
    /* JADX WARN: Code duplicated, block: B:26:0x009c A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0081 -> B:27:0x009d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x009a -> B:27:0x009d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r10.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3a
            if (r1 == r3) goto L32
            if (r1 != r2) goto L2a
            java.lang.Object r1 = r10.L$5
            kotlinx.coroutines.r r1 = (kotlinx.coroutines.r) r1
            java.lang.Object r1 = r10.L$4
            kotlinx.coroutines.internal.n r1 = (kotlinx.coroutines.internal.n) r1
            java.lang.Object r4 = r10.L$3
            kotlinx.coroutines.internal.l r4 = (kotlinx.coroutines.internal.l) r4
            java.lang.Object r5 = r10.L$2
            kotlinx.coroutines.e2 r5 = (kotlinx.coroutines.e2) r5
            java.lang.Object r6 = r10.L$1
            java.lang.Object r7 = r10.L$0
            kotlin.sequences.j r7 = (kotlin.sequences.SequenceScope) r7
            kotlin.k.b(r11)
            r11 = r10
            goto L9d
        L2a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L32:
            java.lang.Object r0 = r10.L$0
            kotlin.sequences.j r0 = (kotlin.sequences.SequenceScope) r0
            kotlin.k.b(r11)
            goto La2
        L3a:
            kotlin.k.b(r11)
            kotlin.sequences.j r11 = r10.p$
            kotlinx.coroutines.a2 r1 = r10.this$0
            java.lang.Object r1 = r1.k0()
            boolean r4 = r1 instanceof kotlinx.coroutines.r
            if (r4 == 0) goto L5b
            r2 = r1
            kotlinx.coroutines.r r2 = (kotlinx.coroutines.r) r2
            kotlinx.coroutines.s r2 = r2.f16063e
            r10.L$0 = r11
            r10.L$1 = r1
            r10.label = r3
            java.lang.Object r11 = r11.e(r2, r10)
            if (r11 != r0) goto La2
            return r0
        L5b:
            boolean r4 = r1 instanceof kotlinx.coroutines.n1
            if (r4 == 0) goto La2
            r4 = r1
            kotlinx.coroutines.n1 r4 = (kotlinx.coroutines.n1) r4
            kotlinx.coroutines.e2 r4 = r4.d()
            if (r4 == 0) goto La2
            java.lang.Object r5 = r4.G()
        */
        //  java.lang.String r6 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            java.util.Objects.requireNonNull(r5, r6)
            kotlinx.coroutines.internal.n r5 = (kotlinx.coroutines.internal.n) r5
            r7 = r11
            r6 = r1
            r1 = r5
            r11 = r10
            r5 = r4
        L78:
            boolean r8 = kotlin.jvm.internal.r.a(r1, r4)
            r8 = r8 ^ r3
            if (r8 == 0) goto La2
            boolean r8 = r1 instanceof kotlinx.coroutines.r
            if (r8 == 0) goto L9d
            r8 = r1
            kotlinx.coroutines.r r8 = (kotlinx.coroutines.r) r8
            kotlinx.coroutines.s r9 = r8.f16063e
            r11.L$0 = r7
            r11.L$1 = r6
            r11.L$2 = r5
            r11.L$3 = r4
            r11.L$4 = r1
            r11.L$5 = r8
            r11.label = r2
            java.lang.Object r8 = r7.e(r9, r11)
            if (r8 != r0) goto L9d
            return r0
        L9d:
            kotlinx.coroutines.internal.n r1 = r1.H()
            goto L78
        La2:
            kotlin.v r11 = kotlin.v.f15822a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
