package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.opencv.videoio.Videoio;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "", "e", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2", f = "Migration.kt", l = {Videoio.CAP_PROP_PVAPI_PIXELFORMAT}, m = "invokeSuspend")
final class FlowKt__MigrationKt$onErrorReturn$2<T> extends SuspendLambda implements Function3<d<? super T>, Throwable, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Object $fallback;
    final /* synthetic */ Function1 $predicate;
    Object L$0;
    Object L$1;
    int label;
    private d p$;
    private Throwable p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__MigrationKt$onErrorReturn$2(Function1 function1, Object obj, Continuation continuation) {
        super(3, continuation);
        this.$predicate = function1;
        this.$fallback = obj;
    }

    public final Continuation<kotlin.v> create(d<? super T> dVar, Throwable th, Continuation<? super kotlin.v> continuation) {
        FlowKt__MigrationKt$onErrorReturn$2 flowKt__MigrationKt$onErrorReturn$2 = new FlowKt__MigrationKt$onErrorReturn$2(this.$predicate, this.$fallback, continuation);
        flowKt__MigrationKt$onErrorReturn$2.p$ = dVar;
        flowKt__MigrationKt$onErrorReturn$2.p$0 = th;
        return flowKt__MigrationKt$onErrorReturn$2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Throwable th, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__MigrationKt$onErrorReturn$2) create((d) obj, th, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            d dVar = this.p$;
            Throwable th = this.p$0;
            if (!((Boolean) this.$predicate.invoke(th)).booleanValue()) {
                throw th;
            }
            Object obj2 = this.$fallback;
            this.L$0 = dVar;
            this.L$1 = th;
            this.label = 1;
            if (dVar.emit(obj2, this) == objD) {
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
}
