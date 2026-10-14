package cn.mucang.android.facelib;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.facelib.TimeOut$execute$1", f = "TimeOut.kt", l = {19}, m = "invokeSuspend")
final class TimeOut$execute$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function0<kotlin.v> $timeout;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TimeOut this$0;

    /* JADX INFO: renamed from: cn.mucang.android.facelib.TimeOut$execute$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.facelib.TimeOut$execute$1$1", f = "TimeOut.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Function0<kotlin.v> $timeout;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<kotlin.v> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$timeout = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$timeout, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$timeout.invoke();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TimeOut$execute$1(TimeOut timeOut, Function0<kotlin.v> function0, Continuation<? super TimeOut$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = timeOut;
        this.$timeout = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        TimeOut$execute$1 timeOut$execute$1 = new TimeOut$execute$1(this.this$0, this.$timeout, continuation);
        timeOut$execute$1.L$0 = obj;
        return timeOut$execute$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TimeOut$execute$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i0 i0Var;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            i0Var = (i0) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (i0) this.L$0;
            kotlin.k.b(obj);
        }
        while (j0.g(i0Var)) {
            if (System.currentTimeMillis() - this.this$0.c > this.this$0.b) {
                kotlinx.coroutines.g.b(this.this$0.f3008a, null, null, new AnonymousClass1(this.$timeout, null), 3, null);
                break;
            }
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(1000L, this) == objD) {
                return objD;
            }
        }
        return kotlin.v.f15822a;
    }
}
