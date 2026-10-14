package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {96, 100, 101}, m = "invokeSuspend")
final class FlowLiveDataConversions$asFlow$1<T> extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super T>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ LiveData $this_asFlow;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ a0 $observer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(a0 a0Var, Continuation continuation) {
            super(2, continuation);
            this.$observer = a0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
            kotlin.jvm.internal.r.e(completion, "completion");
            return new AnonymousClass1(this.$observer, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            FlowLiveDataConversions$asFlow$1.this.$this_asFlow.i(this.$observer);
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ a0 $observer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(a0 a0Var, Continuation continuation) {
            super(2, continuation);
            this.$observer = a0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
            kotlin.jvm.internal.r.e(completion, "completion");
            return new AnonymousClass2(this.$observer, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            FlowLiveDataConversions$asFlow$1.this.$this_asFlow.m(this.$observer);
            return kotlin.v.f15822a;
        }
    }

    static final class a<T> implements a0<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.f f1450a;

        a(kotlinx.coroutines.channels.f fVar) {
            this.f1450a = fVar;
        }

        @Override // androidx.lifecycle.a0
        public final void onChanged(T t) {
            this.f1450a.offer(t);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowLiveDataConversions$asFlow$1(LiveData liveData, Continuation continuation) {
        super(2, continuation);
        this.$this_asFlow = liveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
        kotlin.jvm.internal.r.e(completion, "completion");
        FlowLiveDataConversions$asFlow$1 flowLiveDataConversions$asFlow$1 = new FlowLiveDataConversions$asFlow$1(this.$this_asFlow, completion);
        flowLiveDataConversions$asFlow$1.L$0 = obj;
        return flowLiveDataConversions$asFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowLiveDataConversions$asFlow$1) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0098  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5 A[Catch: all -> 0x00d4, TRY_LEAVE, TryCatch #0 {all -> 0x00d4, blocks: (B:29:0x009d, B:31:0x00a5), top: B:45:0x009d }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b8  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.FlowLiveDataConversions$asFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
