package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r0 extends v0 {
    public static final a b = new a(null);

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.r0$a$a, reason: collision with other inner class name */
        public static final class C0359a extends r0 {
            final /* synthetic */ Map<q0, s0> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ boolean f15703d;

            /* JADX WARN: Multi-variable type inference failed */
            C0359a(Map<q0, ? extends s0> map, boolean z) {
                this.c = map;
                this.f15703d = z;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.v0
            public boolean a() {
                return this.f15703d;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.v0
            public boolean f() {
                return this.c.isEmpty();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.r0
            public s0 k(q0 key) {
                kotlin.jvm.internal.r.e(key, "key");
                return this.c.get(key);
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ r0 e(a aVar, Map map, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.d(map, z);
        }

        public final v0 a(a0 kotlinType) {
            kotlin.jvm.internal.r.e(kotlinType, "kotlinType");
            return b(kotlinType.I0(), kotlinType.H0());
        }

        public final v0 b(q0 typeConstructor, List<? extends s0> arguments) {
            kotlin.jvm.internal.r.e(typeConstructor, "typeConstructor");
            kotlin.jvm.internal.r.e(arguments, "arguments");
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters = typeConstructor.getParameters();
            kotlin.jvm.internal.r.d(parameters, "typeConstructor.parameters");
            kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var = (kotlin.reflect.jvm.internal.impl.descriptors.t0) kotlin.collections.s.q0(parameters);
            if (!(t0Var != null && t0Var.Q())) {
                return new z(parameters, arguments);
            }
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters2 = typeConstructor.getParameters();
            kotlin.jvm.internal.r.d(parameters2, "typeConstructor.parameters");
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters2, 10));
            Iterator<T> it = parameters2.iterator();
            while (it.hasNext()) {
                arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.t0) it.next()).i());
            }
            return e(this, kotlin.collections.o0.q(CollectionsKt___CollectionsKt.T0(arrayList, arguments)), false, 2, null);
        }

        public final r0 c(Map<q0, ? extends s0> map) {
            kotlin.jvm.internal.r.e(map, "map");
            return e(this, map, false, 2, null);
        }

        public final r0 d(Map<q0, ? extends s0> map, boolean z) {
            kotlin.jvm.internal.r.e(map, "map");
            return new C0359a(map, z);
        }
    }

    public static final v0 i(q0 q0Var, List<? extends s0> list) {
        return b.b(q0Var, list);
    }

    public static final r0 j(Map<q0, ? extends s0> map) {
        return b.c(map);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public s0 e(a0 key) {
        kotlin.jvm.internal.r.e(key, "key");
        return k(key.I0());
    }

    public abstract s0 k(q0 q0Var);
}
