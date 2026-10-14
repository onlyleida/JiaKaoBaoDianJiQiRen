package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/d;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1", f = "Zip.kt", l = {273}, m = "invokeSuspend")
public final class FlowKt__ZipKt$combineTransformUnsafe$1<R> extends SuspendLambda implements Function2<d<? super R>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ c[] $flows;
    final /* synthetic */ Function3 $transform;
    Object L$0;
    int label;
    private d p$;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/d;", "", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1$1", f = "Zip.kt", l = {273}, m = "invokeSuspend")
    public static final class AnonymousClass1<T> extends SuspendLambda implements Function3<d<? super R>, T[], Continuation<? super kotlin.v>, Object> {
        Object L$0;
        Object L$1;
        int label;
        private d p$;
        private Object[] p$0;

        public AnonymousClass1(Continuation continuation) {
            super(3, continuation);
        }

        public final Continuation<kotlin.v> create(d<? super R> dVar, T[] tArr, Continuation<? super kotlin.v> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.p$ = dVar;
            anonymousClass1.p$0 = tArr;
            return anonymousClass1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create((d) obj, (Object[]) obj2, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                d dVar = this.p$;
                Object[] objArr = this.p$0;
                Function3 function3 = FlowKt__ZipKt$combineTransformUnsafe$1.this.$transform;
                this.L$0 = dVar;
                this.L$1 = objArr;
                this.label = 1;
                if (function3.invoke(dVar, objArr, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            FlowKt__ZipKt$combineTransformUnsafe$1.this.$transform.invoke(this.p$, this.p$0, this);
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransformUnsafe$1(c[] cVarArr, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$flows = cVarArr;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransformUnsafe$1 flowKt__ZipKt$combineTransformUnsafe$1 = new FlowKt__ZipKt$combineTransformUnsafe$1(this.$flows, this.$transform, continuation);
        flowKt__ZipKt$combineTransformUnsafe$1.p$ = (d) obj;
        return flowKt__ZipKt$combineTransformUnsafe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__ZipKt$combineTransformUnsafe$1) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            d dVar = this.p$;
            c[] cVarArr = this.$flows;
            Function0 function0B = FlowKt__ZipKt.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
            this.L$0 = dVar;
            this.label = 1;
            if (CombineKt.a(dVar, cVarArr, function0B, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        d dVar = this.p$;
        c[] cVarArr = this.$flows;
        Function0 function0B = FlowKt__ZipKt.b();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
        kotlin.jvm.internal.q.c(0);
        CombineKt.a(dVar, cVarArr, function0B, anonymousClass1, this);
        kotlin.jvm.internal.q.c(2);
        kotlin.jvm.internal.q.c(1);
        return kotlin.v.f15822a;
    }
}
