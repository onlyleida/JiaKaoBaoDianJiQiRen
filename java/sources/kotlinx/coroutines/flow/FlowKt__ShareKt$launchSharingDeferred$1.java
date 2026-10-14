package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", l = {Videoio.CAP_PROP_XI_AEAG}, m = "invokeSuspend")
final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ kotlinx.coroutines.u $result;
    final /* synthetic */ c $upstream;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private kotlinx.coroutines.i0 p$;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements d<T> {
        final /* synthetic */ kotlinx.coroutines.i0 b;
        final /* synthetic */ Ref$ObjectRef c;

        public a(kotlinx.coroutines.i0 i0Var, Ref$ObjectRef ref$ObjectRef) {
            this.b = i0Var;
            this.c = ref$ObjectRef;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [T, kotlinx.coroutines.flow.b2] */
        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            kotlin.v vVar;
            Ref$ObjectRef ref$ObjectRef = this.c;
            b2 b2Var = (b2) ref$ObjectRef.element;
            if (b2Var != null) {
                b2Var.setValue(obj);
                vVar = kotlin.v.f15822a;
            } else {
                ?? r3 = (T) l2.a(obj);
                FlowKt__ShareKt$launchSharingDeferred$1.this.$result.s(f.a(r3));
                kotlin.v vVar2 = kotlin.v.f15822a;
                ref$ObjectRef.element = r3;
                vVar = vVar2;
            }
            return vVar == kotlin.coroutines.intrinsics.b.d() ? vVar : kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ShareKt$launchSharingDeferred$1(c cVar, kotlinx.coroutines.u uVar, Continuation continuation) {
        super(2, continuation);
        this.$upstream = cVar;
        this.$result = uVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.$upstream, this.$result, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.p$ = (kotlinx.coroutines.i0) obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                kotlinx.coroutines.i0 i0Var = this.p$;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = null;
                c cVar = this.$upstream;
                a aVar = new a(i0Var, ref$ObjectRef);
                this.L$0 = i0Var;
                this.L$1 = ref$ObjectRef;
                this.L$2 = cVar;
                this.label = 1;
                if (cVar.d(aVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        } catch (Throwable th) {
            this.$result.q(th);
            throw th;
        }
    }
}
