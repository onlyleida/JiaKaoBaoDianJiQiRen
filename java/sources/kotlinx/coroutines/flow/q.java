package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class q {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f15986a;

        public a(Object obj) {
            this.f15986a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.c
        public Object d(d dVar, Continuation continuation) {
            Object objEmit = dVar.emit(this.f15986a, continuation);
            return objEmit == kotlin.coroutines.intrinsics.b.d() ? objEmit : kotlin.v.f15822a;
        }
    }

    public static final <T> c<T> a(Function2<? super kotlinx.coroutines.channels.n<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    public static final <T> c<T> b(Function2<? super d<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return new d2(function2);
    }

    public static final <T> c<T> c(T t) {
        return new a(t);
    }
}
