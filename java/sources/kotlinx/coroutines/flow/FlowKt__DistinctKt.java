package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__DistinctKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1<Object, Object> f15929a = new Function1<Object, Object>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultKeySelector$1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return obj;
        }
    };
    private static final Function2<Object, Object, Boolean> b = new Function2<Object, Object, Boolean>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultAreEquivalent$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj, Object obj2) {
            return Boolean.valueOf(invoke2(obj, obj2));
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2(Object obj, Object obj2) {
            return kotlin.jvm.internal.r.a(obj, obj2);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> c<T> a(c<? extends T> cVar) {
        return cVar instanceof k2 ? cVar : b(cVar, f15929a, b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> c<T> b(c<? extends T> cVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        if (cVar instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) cVar;
            if (distinctFlowImpl.b == function1 && distinctFlowImpl.c == function2) {
                return cVar;
            }
        }
        return new DistinctFlowImpl(cVar, function1, function2);
    }
}
