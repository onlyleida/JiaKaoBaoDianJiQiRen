package kotlinx.coroutines.flow;

import kotlinx.coroutines.channels.ProduceKt;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__DelayKt {
    public static final kotlinx.coroutines.channels.p<kotlin.v> a(kotlinx.coroutines.i0 i0Var, long j, long j2) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j + " ms").toString());
        }
        if (j2 >= 0) {
            return ProduceKt.e(i0Var, null, 0, new FlowKt__DelayKt$fixedPeriodTicker$3(j2, j, null), 1, null);
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j2 + " ms").toString());
    }

    public static /* synthetic */ kotlinx.coroutines.channels.p b(kotlinx.coroutines.i0 i0Var, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = j;
        }
        return f.r(i0Var, j, j2);
    }
}
