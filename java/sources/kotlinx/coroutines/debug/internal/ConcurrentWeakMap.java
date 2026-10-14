package kotlinx.coroutines.debug.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {
    private static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size");
    private volatile int _size;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReferenceQueue<K> f15901a;
    volatile Object core;

    private final class a {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final AtomicIntegerFieldUpdater f15902g = AtomicIntegerFieldUpdater.newUpdater(a.class, "load");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f15903a;
        private final int b;
        AtomicReferenceArray c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        AtomicReferenceArray f15904d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f15905e;
        private volatile int load = 0;

        /* JADX INFO: renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a$a, reason: collision with other inner class name */
        private final class C0365a<E> implements Iterator<E>, Object {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f15907a = -1;
            private K b;
            private V c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final Function2<K, V, E> f15908d;

            /* JADX WARN: Multi-variable type inference failed */
            public C0365a(Function2<? super K, ? super V, ? extends E> function2) {
                this.f15908d = function2;
                c();
            }

            private final void c() {
                K k;
                while (true) {
                    int i = this.f15907a + 1;
                    this.f15907a = i;
                    if (i >= a.this.f15905e) {
                        return;
                    }
                    e eVar = (e) a.this.c.get(this.f15907a);
                    if (eVar != null && (k = (K) eVar.get()) != null) {
                        this.b = k;
                        Object obj = (V) a.this.f15904d.get(this.f15907a);
                        if (obj instanceof f) {
                            obj = (V) ((f) obj).f15917a;
                        }
                        if (obj != null) {
                            this.c = (V) obj;
                            return;
                        }
                    }
                }
            }

            public Void e() {
                kotlinx.coroutines.debug.internal.a.c();
                throw null;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f15907a < a.this.f15905e;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f15907a >= a.this.f15905e) {
                    throw new NoSuchElementException();
                }
                Function2<K, V, E> function2 = this.f15908d;
                K k = this.b;
                if (k == null) {
                    r.u("key");
                    throw null;
                }
                V v = this.c;
                if (v == null) {
                    r.u("value");
                    throw null;
                }
                E eInvoke = function2.invoke(k, v);
                c();
                return eInvoke;
            }

            @Override // java.util.Iterator
            public /* bridge */ /* synthetic */ void remove() {
                e();
                throw null;
            }
        }

        public a(int i) {
            this.f15905e = i;
            this.f15903a = Integer.numberOfLeadingZeros(i) + 1;
            this.b = (i * 2) / 3;
            this.c = new AtomicReferenceArray(i);
            this.f15904d = new AtomicReferenceArray(i);
        }

        private final int d(int i) {
            return (i * (-1640531527)) >>> this.f15903a;
        }

        public static /* synthetic */ Object g(a aVar, Object obj, Object obj2, e eVar, int i, Object obj3) {
            if ((i & 4) != 0) {
                eVar = null;
            }
            return aVar.f(obj, obj2, eVar);
        }

        private final void i(int i) {
            Object obj;
            do {
                obj = this.f15904d.get(i);
                if (obj == null || (obj instanceof f)) {
                    return;
                }
            } while (!this.f15904d.compareAndSet(i, obj, null));
            ConcurrentWeakMap.this.k();
        }

        public final void b(e<?> eVar) {
            int iD = d(eVar.f15916a);
            while (true) {
                e<?> eVar2 = (e) this.c.get(iD);
                if (eVar2 == null) {
                    return;
                }
                if (eVar2 == eVar) {
                    i(iD);
                    return;
                } else {
                    if (iD == 0) {
                        iD = this.f15905e;
                    }
                    iD--;
                }
            }
        }

        /* JADX WARN: Failed to parse method signature: (TK)TV
        jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: (TK)TV at position 2 ('K'), unexpected: T
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeMethodArgs(SignatureParser.java:336)
        	at jadx.core.dex.visitors.SignatureProcessor.parseMethodSignature(SignatureProcessor.java:187)
        	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:40)
         */
        public final Object c(Object obj) {
            int iD = d(obj.hashCode());
            while (true) {
                e eVar = (e) this.c.get(iD);
                if (eVar == null) {
                    return null;
                }
                T t = eVar.get();
                if (r.a(obj, t)) {
                    Object obj2 = this.f15904d.get(iD);
                    return obj2 instanceof f ? ((f) obj2).f15917a : obj2;
                }
                if (t == 0) {
                    i(iD);
                }
                if (iD == 0) {
                    iD = this.f15905e;
                }
                iD--;
            }
        }

        public final <E> Iterator<E> e(Function2<? super K, ? super V, ? extends E> function2) {
            return new C0365a(function2);
        }

        /* JADX WARN: Failed to parse method signature: (TKTVLkotlinx/coroutines/debug/internal/e<TK;>;)Ljava/lang/Object;
        jadx.core.utils.exceptions.JadxRuntimeException: Unknown type char: '>' (0x3e)
        	at jadx.core.dex.instructions.args.ArgType.parse(ArgType.java:784)
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:163)
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeMethodArgs(SignatureParser.java:336)
        	at jadx.core.dex.visitors.SignatureProcessor.parseMethodSignature(SignatureProcessor.java:187)
        	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:40)
         */
        public final Object f(Object obj, Object obj2, e eVar) {
            int i;
            Object obj3;
            int iD = d(obj.hashCode());
            boolean z = false;
            while (true) {
                e eVar2 = (e) this.c.get(iD);
                if (eVar2 != null) {
                    T t = eVar2.get();
                    if (r.a(obj, t)) {
                        if (!z) {
                            break;
                        }
                        f15902g.decrementAndGet(this);
                        break;
                    }
                    if (t == 0) {
                        i(iD);
                    }
                    if (iD == 0) {
                        iD = this.f15905e;
                    }
                    iD--;
                } else {
                    if (obj2 == null) {
                        return null;
                    }
                    if (!z) {
                        do {
                            i = this.load;
                            if (i >= this.b) {
                                return kotlinx.coroutines.debug.internal.a.f15912a;
                            }
                        } while (!f15902g.compareAndSet(this, i, i + 1));
                        z = true;
                    }
                    if (eVar == null) {
                        eVar = new e(obj, ConcurrentWeakMap.this.f15901a);
                    }
                    if (this.c.compareAndSet(iD, null, eVar)) {
                        break;
                    }
                }
            }
            do {
                obj3 = this.f15904d.get(iD);
                if (obj3 instanceof f) {
                    return kotlinx.coroutines.debug.internal.a.f15912a;
                }
            } while (!this.f15904d.compareAndSet(iD, obj3, obj2));
            return obj3;
        }

        public final ConcurrentWeakMap<K, V>.a h() {
            Object obj;
            while (true) {
                ConcurrentWeakMap<K, V>.a aVar = new a(Integer.highestOneBit(kotlin.ranges.f.b(ConcurrentWeakMap.this.size(), 4)) * 4);
                int i = this.f15905e;
                for (int i2 = 0; i2 < i; i2++) {
                    e eVar = (e) this.c.get(i2);
                    Object obj2 = eVar != null ? eVar.get() : null;
                    if (eVar != null && obj2 == null) {
                        i(i2);
                    }
                    do {
                        obj = this.f15904d.get(i2);
                        if (obj instanceof f) {
                            obj = ((f) obj).f15917a;
                            break;
                        }
                    } while (!this.f15904d.compareAndSet(i2, obj, kotlinx.coroutines.debug.internal.a.d(obj)));
                    if (obj2 == null || obj == null || aVar.f(obj2, obj, eVar) != kotlinx.coroutines.debug.internal.a.f15912a) {
                    }
                }
                return aVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b<K, V> implements Map.Entry<K, V>, Object {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final K f15910a;
        private final V b;

        public b(K k, V v) {
            this.f15910a = k;
            this.b = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f15910a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            kotlinx.coroutines.debug.internal.a.c();
            throw null;
        }
    }

    private final class c<E> extends AbstractMutableSet<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function2<K, V, E> f15911a;

        /* JADX WARN: Multi-variable type inference failed */
        public c(Function2<? super K, ? super V, ? extends E> function2) {
            this.f15911a = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int a() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e2) {
            kotlinx.coroutines.debug.internal.a.c();
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return ((a) ConcurrentWeakMap.this.core).e(this.f15911a);
        }
    }

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z, int i, o oVar) {
        this((i & 1) != 0 ? false : z);
    }

    private final void j(e<?> eVar) {
        ((a) this.core).b(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        b.decrementAndGet(this);
    }

    private final synchronized V l(K k, V v) {
        V v2;
        a aVarH = (a) this.core;
        while (true) {
            v2 = (V) a.g(aVarH, k, v, null, 4, null);
            if (v2 == kotlinx.coroutines.debug.internal.a.f15912a) {
                aVarH = aVarH.h();
                this.core = aVarH;
            }
        }
        return v2;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public Set<Map.Entry<K, V>> a() {
        return new c(new Function2<K, V, Map.Entry<K, V>>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$entries$1
            @Override // kotlin.jvm.functions.Function2
            public final Map.Entry<K, V> invoke(K k, V v) {
                return new ConcurrentWeakMap.b(k, v);
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    public Set<K> c() {
        return new c(new Function2<K, V, K>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$keys$1
            @Override // kotlin.jvm.functions.Function2
            public final K invoke(K k, V v) {
                return k;
            }
        });
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int e() {
        return this._size;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj != null) {
            return (V) ((a) this.core).c(obj);
        }
        return null;
    }

    public final void m() {
        if (!(this.f15901a != null)) {
            throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
        }
        while (true) {
            try {
                Reference<? extends K> referenceRemove = this.f15901a.remove();
                if (referenceRemove == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                }
                j((e) referenceRemove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        V vL = (V) a.g((a) this.core, k, v, null, 4, null);
        if (vL == kotlinx.coroutines.debug.internal.a.f15912a) {
            vL = l(k, v);
        }
        if (vL == null) {
            b.incrementAndGet(this);
        }
        return vL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == 0) {
            return null;
        }
        V vL = (V) a.g((a) this.core, obj, null, null, 4, null);
        if (vL == kotlinx.coroutines.debug.internal.a.f15912a) {
            vL = l(obj, null);
        }
        if (vL != null) {
            b.decrementAndGet(this);
        }
        return vL;
    }

    public ConcurrentWeakMap(boolean z) {
        this._size = 0;
        this.core = new a(16);
        this.f15901a = z ? new ReferenceQueue<>() : null;
    }
}
