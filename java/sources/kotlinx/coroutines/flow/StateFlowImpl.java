package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
final class StateFlowImpl<T> extends kotlinx.coroutines.flow.internal.a<m2> implements b2<T>, Object<T>, kotlinx.coroutines.flow.internal.m<T> {
    private volatile Object _state;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15950e;

    public StateFlowImpl(Object obj) {
        this._state = obj;
    }

    private final boolean n(Object obj, Object obj2) {
        int i;
        m2[] m2VarArrK;
        k();
        synchronized (this) {
            Object obj3 = this._state;
            if (obj != null && (!kotlin.jvm.internal.r.a(obj3, obj))) {
                return false;
            }
            if (kotlin.jvm.internal.r.a(obj3, obj2)) {
                return true;
            }
            this._state = obj2;
            int i2 = this.f15950e;
            if ((i2 & 1) != 0) {
                this.f15950e = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.f15950e = i3;
            m2[] m2VarArrK2 = k();
            kotlin.v vVar = kotlin.v.f15822a;
            while (true) {
                if (m2VarArrK2 != null) {
                    for (m2 m2Var : m2VarArrK2) {
                        if (m2Var != null) {
                            m2Var.f();
                        }
                    }
                }
                synchronized (this) {
                    i = this.f15950e;
                    if (i == i3) {
                        this.f15950e = i3 + 1;
                        return true;
                    }
                    m2VarArrK = k();
                    kotlin.v vVar2 = kotlin.v.f15822a;
                }
                m2VarArrK2 = m2VarArrK;
                i3 = i;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.a2
    public boolean a(T t) {
        setValue(t);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.m
    public c<T> c(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return l2.d(this, coroutineContext, i, bufferOverflow);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ae A[Catch: all -> 0x0077, TryCatch #1 {all -> 0x0077, blocks: (B:14:0x0040, B:34:0x00aa, B:36:0x00ae, B:38:0x00b3, B:49:0x00d8, B:51:0x00de, B:40:0x00ba, B:44:0x00c1, B:19:0x0060, B:22:0x0073, B:33:0x009b), top: B:60:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b3 A[Catch: all -> 0x0077, TryCatch #1 {all -> 0x0077, blocks: (B:14:0x0040, B:34:0x00aa, B:36:0x00ae, B:38:0x00b3, B:49:0x00d8, B:51:0x00de, B:40:0x00ba, B:44:0x00c1, B:19:0x0060, B:22:0x0073, B:33:0x009b), top: B:60:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00be  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00de A[Catch: all -> 0x0077, TRY_LEAVE, TryCatch #1 {all -> 0x0077, blocks: (B:14:0x0040, B:34:0x00aa, B:36:0x00ae, B:38:0x00b3, B:49:0x00d8, B:51:0x00de, B:40:0x00ba, B:44:0x00c1, B:19:0x0060, B:22:0x0073, B:33:0x009b), top: B:60:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00f2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlinx.coroutines.flow.c
    public java.lang.Object d(kotlinx.coroutines.flow.d<? super T> r12, kotlin.coroutines.Continuation<? super kotlin.v> r13) {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.d(kotlinx.coroutines.flow.d, kotlin.coroutines.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.b2
    public boolean e(T t, T t2) {
        if (t == null) {
            t = (T) kotlinx.coroutines.flow.internal.p.f15980a;
        }
        if (t2 == null) {
            t2 = (T) kotlinx.coroutines.flow.internal.p.f15980a;
        }
        return n(t, t2);
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super kotlin.v> continuation) {
        setValue(t);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.a2
    public void f() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.b2
    public T getValue() {
        kotlinx.coroutines.internal.y yVar = kotlinx.coroutines.flow.internal.p.f15980a;
        T t = (T) this._state;
        if (t == yVar) {
            return null;
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public m2 h() {
        return new m2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public m2[] i(int i) {
        return new m2[i];
    }

    @Override // kotlinx.coroutines.flow.b2
    public void setValue(T t) {
        if (t == null) {
            t = (T) kotlinx.coroutines.flow.internal.p.f15980a;
        }
        n(null, t);
    }
}
