package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__MergeKt {
    static {
        kotlinx.coroutines.internal.z.b("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);
    }

    public static final <T, R> c<R> a(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return f.H(cVar, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    public static final <T, R> c<R> b(c<? extends T> cVar, Function3<? super d<? super R>, ? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return new ChannelFlowTransformLatest(function3, cVar, null, 0, null, 28, null);
    }
}
