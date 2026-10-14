package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/w;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", l = {Opcodes.FCMPL}, m = "invokeSuspend")
final class FlowLiveDataConversions$asLiveData$1<T> extends SuspendLambda implements Function2<w<T>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.c $this_asLiveData;
    private /* synthetic */ Object L$0;
    int label;

    public static final class a implements kotlinx.coroutines.flow.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f1451a;

        public a(w wVar) {
            this.f1451a = wVar;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            Object objEmit = this.f1451a.emit(obj, continuation);
            return objEmit == kotlin.coroutines.intrinsics.b.d() ? objEmit : kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowLiveDataConversions$asLiveData$1(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
        super(2, continuation);
        this.$this_asLiveData = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
        kotlin.jvm.internal.r.e(completion, "completion");
        FlowLiveDataConversions$asLiveData$1 flowLiveDataConversions$asLiveData$1 = new FlowLiveDataConversions$asLiveData$1(this.$this_asLiveData, completion);
        flowLiveDataConversions$asLiveData$1.L$0 = obj;
        return flowLiveDataConversions$asLiveData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowLiveDataConversions$asLiveData$1) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            w wVar = (w) this.L$0;
            kotlinx.coroutines.flow.c cVar = this.$this_asLiveData;
            a aVar = new a(wVar);
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
    }
}
