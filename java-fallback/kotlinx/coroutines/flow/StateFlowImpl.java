package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
final class StateFlowImpl<T> extends kotlinx.coroutines.flow.internal.a<m2> implements b2<T>, Object<T>, kotlinx.coroutines.flow.internal.m<T> {
    private volatile Object _state;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15950e;

    public StateFlowImpl(Object r1) {
        this._state = r1;
    }

    private final boolean n(Object r7, Object r8) {
        m2[] r0 = k();
        monitor-enter(this);
        Object r1 = this._state;     // Catch: Throwable -> L42
        if (r7 == null) goto L12;
        if ((!kotlin.jvm.internal.r.a(r1, r7)) == false) goto L12;
        monitor-exit(this);
        return false;
    L12:
        if (kotlin.jvm.internal.r.a(r1, r8) == false) goto L15;
        monitor-exit(this);
        return true;
    L15:
        this._state = r8;     // Catch: Throwable -> L42
        int r9 = this.f15950e;     // Catch: Throwable -> L42
        if ((r9 & 1) != 0) goto L39;
        int r10 = r9 + 1;     // Catch: Throwable -> L42
        this.f15950e = r10;     // Catch: Throwable -> L42
        m2[] r11 = k();     // Catch: Throwable -> L42
        kotlin.v r2 = kotlin.v.f15822a;     // Catch: Throwable -> L42
        monitor-exit(this);
    L19:
        if (r11 == null) goto L26;
        int r3 = r11.length;
        int r4 = 0;
    L21:
        if (r4 >= r3) goto L26;
        m2 r5 = r11[r4];
        if (r5 == null) goto L25;
        r5.f();
    L25:
        r4 = r4 + 1;
    L26:
        monitor-enter(this);
        int r12 = this.f15950e;     // Catch: Throwable -> L35
        if (r12 == r10) goto L29;
        m2[] r13 = k();     // Catch: Throwable -> L35
        kotlin.v r6 = kotlin.v.f15822a;     // Catch: Throwable -> L35
        monitor-exit(this);
        r11 = r13;
        r10 = r12;
        goto L19
    L29:
        this.f15950e = r10 + 1;     // Catch: Throwable -> L35
        monitor-exit(this);
        return true;
    L35:
        th = move-exception;
        throw th;
    L39:
        this.f15950e = r9 + 2;     // Catch: Throwable -> L42
        monitor-exit(this);
        return true;
    L42:
        th = move-exception;
        throw th;
    }

    @Override // kotlinx.coroutines.flow.a2
    public boolean a(T r1) {
        setValue(r1);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.m
    public c<T> c(CoroutineContext r1, int r2, BufferOverflow r3) {
        return l2.d(this, r1, r2, r3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, kotlinx.coroutines.flow.d] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00dc -> B:34:0x00aa). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00f0 -> B:34:0x00aa). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.c
    public Object d(d<? super T> r12, kotlin.coroutines.c<? super kotlin.v> r13) {
        if ((r13 instanceof StateFlowImpl$collect$1) == false) goto L7;
        StateFlowImpl$collect$1 r0 = (StateFlowImpl$collect$1) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L26;
        if (r3 == 1) goto L21;
        if (r3 == 2) goto L18;
        if (r3 != 3) goto L17;
        Object r15 = r0.L$5;
        Object r16 = r0.L$4;
        kotlinx.coroutines.t1 r4 = (kotlinx.coroutines.t1) r0.L$3;
        m2 r7 = (m2) r0.L$2;
        d r8 = (d) r0.L$1;
        StateFlowImpl<T> r9 = (StateFlowImpl) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L24
        ?? r10 = r8;
    L34:
        Object r17 = r9._state;     // Catch: Throwable -> L24
        if (r4 == null) goto L37;
        kotlinx.coroutines.w1.h(r4);     // Catch: Throwable -> L24
    L37:
        if (r16 == null) goto L41;
        ?? r11 = r10;
        if ((!kotlin.jvm.internal.r.a(r16, r17)) == true) goto L41;
    L49:
        r10 = r11;
        if (r7.g() == true) goto L34;
        r0.L$0 = r9;     // Catch: Throwable -> L24
        r0.L$1 = r11;     // Catch: Throwable -> L24
        r0.L$2 = r7;     // Catch: Throwable -> L24
        r0.L$3 = r4;     // Catch: Throwable -> L24
        r0.L$4 = r16;     // Catch: Throwable -> L24
        r0.L$5 = r17;     // Catch: Throwable -> L24
        r0.label = 3;     // Catch: Throwable -> L24
        r10 = r11;
        if (r7.d(r0) != r2) goto L34;
        return r2;
    L41:
        if (r17 != kotlinx.coroutines.flow.internal.p.f15980a) goto L43;
        Object r18 = null;
    L44:
        r0.L$0 = r9;     // Catch: Throwable -> L24
        r0.L$1 = r10;     // Catch: Throwable -> L24
        r0.L$2 = r7;     // Catch: Throwable -> L24
        r0.L$3 = r4;     // Catch: Throwable -> L24
        r0.L$4 = r16;     // Catch: Throwable -> L24
        r0.L$5 = r17;     // Catch: Throwable -> L24
        r0.label = 2;     // Catch: Throwable -> L24
        if (r10.emit(r18, r0) != r2) goto L47;
        return r2;
    L47:
        r16 = r17;
        ?? r19 = r10;
    L48:
        r17 = r16;
        r11 = r19;
        goto L49
    L43:
        r18 = r17;
        goto L44
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        r16 = r0.L$5;
        Object r5 = r0.L$4;
        r4 = (kotlinx.coroutines.t1) r0.L$3;
        r7 = (m2) r0.L$2;
        d r20 = (d) r0.L$1;
        r9 = (StateFlowImpl) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L24
        r19 = r20;
        goto L48
    L21:
        r7 = (m2) r0.L$2;
        r12 = (d) r0.L$1;
        r9 = (StateFlowImpl) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L24
    L33:
        r10 = r12;
        r4 = (kotlinx.coroutines.t1) r0.getContext().get(kotlinx.coroutines.t1.R);     // Catch: Throwable -> L24
        r16 = null;
        goto L34
    L26:
        kotlin.k.b(r14);
        r7 = g();
    L54:
        th = th;
        r9 = this;
    L56:
        r9.j(r7);
        throw th;
    L28:
        if ((r12 instanceof SubscribedFlowCollector) == false) goto L32;
        r0.L$0 = this;     // Catch: Throwable -> L54
        r0.L$1 = r12;     // Catch: Throwable -> L54
        r0.L$2 = r7;     // Catch: Throwable -> L54
        r0.label = 1;     // Catch: Throwable -> L54
        if (((SubscribedFlowCollector) r12).c(r0) != r2) goto L32;
        return r2;
    L32:
        r9 = this;
    L24:
        th = th;
    L7:
        r0 = new StateFlowImpl$collect$1(this, r13);
        goto L8
    }

    @Override // kotlinx.coroutines.flow.b2
    public boolean e(T r1, T r2) {
        if (r1 != null) goto L5;
        r1 = (T) kotlinx.coroutines.flow.internal.p.f15980a;
    L5:
        if (r2 != null) goto L9;
        r2 = (T) kotlinx.coroutines.flow.internal.p.f15980a;
    L9:
        return n(r1, r2);
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        setValue(r1);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.a2
    public void f() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.b2
    public T getValue() {
        kotlinx.coroutines.internal.y r0 = kotlinx.coroutines.flow.internal.p.f15980a;
        T r1 = (T) this._state;
        if (r1 != r0) goto L6;
        return null;
    L6:
        return r1;
    }

    @Override // kotlinx.coroutines.flow.internal.a
    public /* bridge */ /* synthetic */ kotlinx.coroutines.flow.internal.c h() {
        return l();
    }

    @Override // kotlinx.coroutines.flow.internal.a
    public /* bridge */ /* synthetic */ kotlinx.coroutines.flow.internal.c[] i(int r1) {
        return m(r1);
    }

    protected m2 l() {
        return new m2();
    }

    protected m2[] m(int r1) {
        return new m2[r1];
    }

    @Override // kotlinx.coroutines.flow.b2
    public void setValue(T r2) {
        if (r2 != null) goto L5;
        r2 = (T) kotlinx.coroutines.flow.internal.p.f15980a;
    L5:
        n(null, r2);
    }
}
