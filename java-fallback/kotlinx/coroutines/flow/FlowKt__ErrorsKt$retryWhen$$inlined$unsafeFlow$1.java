package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f15935a;
    final /* synthetic */ kotlin.jvm.b.r b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0096@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "collector", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "collect", "(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 1, 15})
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", l = {117, 119}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 this$0;

        public AnonymousClass1(FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 r1, kotlin.coroutines.c r2) {
            this.this$0 = r1;
            super(r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            this.result = r2;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.d(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(c r1, kotlin.jvm.b.r r2) {
        this.f15935a = r1;
        this.b = r2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00be -> B:27:0x00c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d0 -> B:32:0x00d1). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.c
    public Object d(d r17, kotlin.coroutines.c r18) {
        if ((r18 instanceof AnonymousClass1) == false) goto L7;
        AnonymousClass1 r1 = (AnonymousClass1) r18;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> r3 = this;
        AnonymousClass1 r4 = r1;
    L8:
        Object r0 = r4.result;
        Object r5 = kotlin.coroutines.intrinsics.a.d();
        int r6 = r4.label;
        if (r6 == 0) goto L16;
        if (r6 == 1) goto L15;
        if (r6 != 2) goto L14;
        Throwable r7 = (Throwable) r4.L$4;
        long r8 = r4.J$0;
        d r9 = (d) r4.L$3;
        kotlin.coroutines.c r10 = (kotlin.coroutines.c) r4.L$2;
        d r11 = (d) r4.L$1;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> r12 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) r4.L$0;
        kotlin.k.b(r0);
        AnonymousClass1 r13 = r4;
        kotlin.coroutines.c r14 = r10;
    L28:
        if (((Boolean) r0).booleanValue() == false) goto L30;
        r8 = r8 + 1;
        d r15 = r9;
        int r16 = 1;
        AnonymousClass1 r19 = r13;
        kotlin.coroutines.c r110 = r14;
    L32:
        long r20 = r8;
        Object r21 = r5;
        AnonymousClass1 r22 = r19;
        d r23 = r11;
        if (r16 == 0) goto L35;
        kotlin.coroutines.c r24 = r110;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> r111 = r12;
    L17:
        c r112 = r111.f15935a;
        r22.L$0 = r111;
        r22.L$1 = r23;
        r22.L$2 = r24;
        r22.L$3 = r15;
        r22.J$0 = r20;
        r22.I$0 = 0;
        r22.label = 1;
        Object r113 = f.f(r112, r15, r22);
        if (r113 != r21) goto L20;
        return r21;
    L20:
        r11 = r23;
        AnonymousClass1 r25 = r22;
        r5 = r21;
        r8 = r20;
        r9 = r15;
        r0 = r113;
        r12 = r111;
        kotlin.coroutines.c r114 = r24;
        r16 = 0;
    L21:
        Throwable r26 = (Throwable) r0;
        if (r26 == null) goto L31;
        kotlin.jvm.b.r r27 = r12.b;
        Long r115 = kotlin.coroutines.jvm.internal.a.e(r8);
        r25.L$0 = r12;
        r25.L$1 = r11;
        r25.L$2 = r114;
        r25.L$3 = r9;
        r25.J$0 = r8;
        r25.L$4 = r26;
        r25.label = 2;
        kotlin.jvm.internal.q.c(6);
        Object r28 = r27.invoke(r9, r26, r115, r25);
        kotlin.jvm.internal.q.c(7);
        if (r28 != r5) goto L26;
        return r5;
    L26:
        r7 = r26;
        r0 = r28;
        r13 = r25;
        r14 = r114;
        goto L28
    L31:
        r15 = r9;
        r19 = r25;
        r110 = r114;
        goto L32
    L35:
        return kotlin.v.f15822a;
    L30:
        throw r7;
    L14:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L15:
        r16 = r4.I$0;
        r8 = r4.J$0;
        r9 = (d) r4.L$3;
        kotlin.coroutines.c r116 = (kotlin.coroutines.c) r4.L$2;
        r11 = (d) r4.L$1;
        r12 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) r4.L$0;
        kotlin.k.b(r0);
        r25 = r4;
        r114 = r116;
        goto L21
    L16:
        kotlin.k.b(r0);
        r15 = r17;
        AnonymousClass1 r29 = r4;
        r111 = r3;
        r20 = 0;
        r21 = r5;
        r23 = r15;
        r22 = r29;
        r24 = r29;
    L7:
        r3 = this;
        r4 = new AnonymousClass1(r3, r18);
        goto L8
    }
}
