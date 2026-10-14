package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class LiveDataScopeImpl<T> implements w<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f1473a;
    private f<T> b;

    /* JADX INFO: renamed from: androidx.lifecycle.LiveDataScopeImpl$emit$2, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "androidx.lifecycle.LiveDataScopeImpl$emit$2", f = "CoroutineLiveData.kt", l = {98}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Object $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Object obj, Continuation continuation) {
            super(2, continuation);
            this.$value = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
            kotlin.jvm.internal.r.e(completion, "completion");
            return new AnonymousClass2(this.$value, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                LiveDataScopeImpl.this.a().o(this.$value);
                return kotlin.v.f15822a;
            }
            kotlin.k.b(obj);
            f<T> fVarA = LiveDataScopeImpl.this.a();
            this.label = 1;
            fVarA.s(this);
            throw null;
        }
    }

    public LiveDataScopeImpl(f<T> target, CoroutineContext context) {
        kotlin.jvm.internal.r.e(target, "target");
        kotlin.jvm.internal.r.e(context, "context");
        this.f1473a = context.plus(w0.c().B());
    }

    public final f<T> a() {
        return this.b;
    }

    @Override // androidx.lifecycle.w
    public Object emit(T t, Continuation<? super kotlin.v> continuation) {
        Object objC = kotlinx.coroutines.f.c(this.f1473a, new AnonymousClass2(t, null), continuation);
        return objC == kotlin.coroutines.intrinsics.b.d() ? objC : kotlin.v.f15822a;
    }
}
