package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__CollectionKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Collection f15924a;

        public a(Collection collection) {
            this.f15924a = collection;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            this.f15924a.add(obj);
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T, C extends Collection<? super T>> Object a(c<? extends T> cVar, C c, Continuation<? super C> continuation) throws Throwable {
        FlowKt__CollectionKt$toCollection$1 flowKt__CollectionKt$toCollection$1;
        if (continuation instanceof FlowKt__CollectionKt$toCollection$1) {
            flowKt__CollectionKt$toCollection$1 = (FlowKt__CollectionKt$toCollection$1) continuation;
            int i = flowKt__CollectionKt$toCollection$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__CollectionKt$toCollection$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__CollectionKt$toCollection$1 = new FlowKt__CollectionKt$toCollection$1(continuation);
            }
        } else {
            flowKt__CollectionKt$toCollection$1 = new FlowKt__CollectionKt$toCollection$1(continuation);
        }
        Object obj = flowKt__CollectionKt$toCollection$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__CollectionKt$toCollection$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Collection collection = (Collection) flowKt__CollectionKt$toCollection$1.L$1;
            kotlin.k.b(obj);
            return collection;
        }
        kotlin.k.b(obj);
        d<? super Object> aVar = new a<>(c);
        flowKt__CollectionKt$toCollection$1.L$0 = cVar;
        flowKt__CollectionKt$toCollection$1.L$1 = c;
        flowKt__CollectionKt$toCollection$1.L$2 = cVar;
        flowKt__CollectionKt$toCollection$1.label = 1;
        return cVar.d(aVar, flowKt__CollectionKt$toCollection$1) == objD ? objD : c;
    }
}
