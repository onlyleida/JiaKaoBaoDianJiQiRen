package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.channels.t;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {57, 79, 82}, m = "invokeSuspend")
final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function0 $arrayFactory;
    final /* synthetic */ kotlinx.coroutines.flow.c[] $flows;
    final /* synthetic */ kotlinx.coroutines.flow.d $this_combineInternal;
    final /* synthetic */ Function3 $transform;
    byte B$0;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    private i0 p$;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ int $i;
        final /* synthetic */ AtomicInteger $nonClosed;
        final /* synthetic */ kotlinx.coroutines.channels.f $resultChannel;
        Object L$0;
        Object L$1;
        int label;
        private i0 p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, kotlinx.coroutines.channels.f fVar, AtomicInteger atomicInteger, Continuation continuation) {
            super(2, continuation);
            this.$i = i;
            this.$resultChannel = fVar;
            this.$nonClosed = atomicInteger;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = CombineKt$combineInternal$2.this.new AnonymousClass1(this.$i, this.$resultChannel, this.$nonClosed, continuation);
            anonymousClass1.p$ = (i0) obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            try {
                if (i == 0) {
                    kotlin.k.b(obj);
                    i0 i0Var = this.p$;
                    kotlinx.coroutines.flow.c cVar = CombineKt$combineInternal$2.this.$flows[this.$i];
                    CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 = new CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1(this);
                    this.L$0 = i0Var;
                    this.L$1 = cVar;
                    this.label = 1;
                    if (cVar.d(combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1, this) == objD) {
                        return objD;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.k.b(obj);
                }
                if (this.$nonClosed.decrementAndGet() == 0) {
                    t.a.a(this.$resultChannel, null, 1, null);
                }
                return v.f15822a;
            } catch (Throwable th) {
                if (this.$nonClosed.decrementAndGet() == 0) {
                    t.a.a(this.$resultChannel, null, 1, null);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CombineKt$combineInternal$2(kotlinx.coroutines.flow.d dVar, kotlinx.coroutines.flow.c[] cVarArr, Function0 function0, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_combineInternal = dVar;
        this.$flows = cVarArr;
        this.$arrayFactory = function0;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$this_combineInternal, this.$flows, this.$arrayFactory, this.$transform, continuation);
        combineKt$combineInternal$2.p$ = (i0) obj;
        return combineKt$combineInternal$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CombineKt$combineInternal$2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x013b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0142  */
    /* JADX WARN: Code duplicated, block: B:34:0x014c A[LOOP:0: B:26:0x012b->B:34:0x014c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x0150 A[EDGE_INSN: B:53:0x0150->B:35:0x0150 BREAK  A[LOOP:0: B:26:0x012b->B:34:0x014c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0150 A[EDGE_INSN: B:54:0x0150->B:35:0x0150 BREAK  A[LOOP:0: B:26:0x012b->B:34:0x014c], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x01c2 -> B:46:0x01c5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x01cd -> B:48:0x01ce). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
