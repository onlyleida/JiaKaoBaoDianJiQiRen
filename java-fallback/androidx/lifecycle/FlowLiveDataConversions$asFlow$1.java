package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.w0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {96, 100, 101}, m = "invokeSuspend")
final class FlowLiveDataConversions$asFlow$1<T> extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.flow.d<? super T>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ LiveData $this_asFlow;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
        final /* synthetic */ a0 $observer;
        int label;
        final /* synthetic */ FlowLiveDataConversions$asFlow$1 this$0;

        AnonymousClass1(FlowLiveDataConversions$asFlow$1 r1, a0 r2, kotlin.coroutines.c r3) {
            this.this$0 = r1;
            this.$observer = r2;
            super(2, r3);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
            kotlin.jvm.internal.r.e(r4, "completion");
            return new AnonymousClass1(this.this$0, this.$observer, r4);
        }

        @Override // kotlin.jvm.b.p
        public final Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return ((AnonymousClass1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L7;
            kotlin.k.b(r2);
            this.this$0.$this_asFlow.i(this.$observer);
            return kotlin.v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
        final /* synthetic */ a0 $observer;
        int label;
        final /* synthetic */ FlowLiveDataConversions$asFlow$1 this$0;

        AnonymousClass2(FlowLiveDataConversions$asFlow$1 r1, a0 r2, kotlin.coroutines.c r3) {
            this.this$0 = r1;
            this.$observer = r2;
            super(2, r3);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
            kotlin.jvm.internal.r.e(r4, "completion");
            return new AnonymousClass2(this.this$0, this.$observer, r4);
        }

        @Override // kotlin.jvm.b.p
        public final Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return ((AnonymousClass2) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L7;
            kotlin.k.b(r2);
            this.this$0.$this_asFlow.m(this.$observer);
            return kotlin.v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final class a<T> implements a0<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.f f1450a;

        a(kotlinx.coroutines.channels.f r1) {
            this.f1450a = r1;
        }

        @Override // androidx.lifecycle.a0
        public final void onChanged(T r2) {
            this.f1450a.offer(r2);
        }
    }

    FlowLiveDataConversions$asFlow$1(LiveData r1, kotlin.coroutines.c r2) {
        this.$this_asFlow = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
        kotlin.jvm.internal.r.e(r4, "completion");
        FlowLiveDataConversions$asFlow$1 r0 = new FlowLiveDataConversions$asFlow$1(this.$this_asFlow, r4);
        r0.L$0 = r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((FlowLiveDataConversions$asFlow$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.lifecycle.a0] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.lifecycle.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object, kotlinx.coroutines.flow.d] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b8 -> B:47:0x0089). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r15) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        ?? r4 = 1;
        if (r1 == 0) goto L18;
        if (r1 != 1) goto L51;
        a0 r2 = (a0) this.L$2;
        kotlinx.coroutines.channels.f r5 = (kotlinx.coroutines.channels.f) this.L$1;
        kotlinx.coroutines.flow.d r6 = (kotlinx.coroutines.flow.d) this.L$0;
        kotlin.k.b(r15);
        kotlinx.coroutines.flow.d r7 = r6;
    L49:
        ChannelIterator r16 = r5.iterator();     // Catch: Throwable -> L41
        a0 r8 = r2;
        kotlinx.coroutines.flow.d r9 = r7;
    L24:
        FlowLiveDataConversions$asFlow$1<T> r3 = this;
        r4 = r8;
        ?? r10 = r9;
    L47:
        r3.L$0 = r10;     // Catch: Throwable -> L39
        r3.L$1 = r4;     // Catch: Throwable -> L39
        r3.L$2 = r16;     // Catch: Throwable -> L39
        r3.label = 2;     // Catch: Throwable -> L39
        Object r11 = r16.a(r3);     // Catch: Throwable -> L39
        if (r11 != r0) goto L28;
        return r0;
    L28:
        ?? r13 = r4;
        ChannelIterator r12 = r16;
        r15 = r11;
        ?? r14 = r10;
        ?? r17 = r13;
    L45:
    L37:
        Throwable th = th;
        r4 = r17;
    L43:
        kotlinx.coroutines.f.b(l1.f16051a, w0.c().B(), null, new AnonymousClass2(r3, r4, null), 2, null);
        throw th;
    L30:
        if (((Boolean) r15).booleanValue() == false) goto L35;
        Object r18 = r12.next();     // Catch: Throwable -> L37
        r3.L$0 = r14;     // Catch: Throwable -> L37
        r3.L$1 = r17;     // Catch: Throwable -> L37
        r3.L$2 = r12;     // Catch: Throwable -> L37
        r3.label = 3;     // Catch: Throwable -> L37
        if (r14.emit(r18, r3) != r0) goto L34;
        return r0;
    L34:
        r16 = r12;
        r4 = r17;
        r10 = r14;
        goto L47
    L35:
        kotlinx.coroutines.f.b(l1.f16051a, w0.c().B(), null, new AnonymousClass2(r3, r17, null), 2, null);
        return kotlin.v.f15822a;
    L39:
        th = th;
    L41:
        th = th;
        r4 = r2;
    L16:
        r3 = this;
        goto L43
    L51:
        if (r1 == 2) goto L12;
        if (r1 != 3) goto L11;
        ChannelIterator r19 = (ChannelIterator) this.L$2;
        a0 r20 = (a0) this.L$1;
        kotlinx.coroutines.flow.d r21 = (kotlinx.coroutines.flow.d) this.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L15
        r16 = r19;
        r8 = r20;
        r9 = r21;
        goto L24
    L11:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L12:
        ChannelIterator r22 = (ChannelIterator) this.L$2;
        a0 r23 = (a0) this.L$1;
        kotlinx.coroutines.flow.d r24 = (kotlinx.coroutines.flow.d) this.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L15
        r14 = r24;
        r17 = r23;
        r12 = r22;
        r3 = this;
    L15:
        th = th;
        goto L16
    L18:
        kotlin.k.b(r15);
        kotlinx.coroutines.flow.d r25 = (kotlinx.coroutines.flow.d) this.L$0;
        kotlinx.coroutines.channels.f r110 = kotlinx.coroutines.channels.h.b(-1, null, null, 6, null);
        r2 = new a(r110);
        d2 r26 = w0.c().B();
        AnonymousClass1 r27 = new AnonymousClass1(this, r2, null);
        this.L$0 = r25;
        this.L$1 = r110;
        this.L$2 = r2;
        this.label = 1;
        if (kotlinx.coroutines.f.c(r26, r27, this) != r0) goto L21;
        return r0;
    L21:
        r5 = r110;
        r7 = r25;
        goto L49
    }
}
