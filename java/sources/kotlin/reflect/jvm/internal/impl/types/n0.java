package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class n0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f15697e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f15698a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.s0 b;
    private final List<s0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<kotlin.reflect.jvm.internal.impl.descriptors.t0, s0> f15699d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final n0 a(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.s0 typeAliasDescriptor, List<? extends s0> arguments) {
            kotlin.jvm.internal.r.e(typeAliasDescriptor, "typeAliasDescriptor");
            kotlin.jvm.internal.r.e(arguments, "arguments");
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters = typeAliasDescriptor.i().getParameters();
            kotlin.jvm.internal.r.d(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
            Iterator<T> it = parameters.iterator();
            while (it.hasNext()) {
                arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.t0) it.next()).a());
            }
            return new n0(n0Var, typeAliasDescriptor, arguments, kotlin.collections.o0.q(CollectionsKt___CollectionsKt.T0(arrayList, arguments)), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private n0(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var, List<? extends s0> list, Map<kotlin.reflect.jvm.internal.impl.descriptors.t0, ? extends s0> map) {
        this.f15698a = n0Var;
        this.b = s0Var;
        this.c = list;
        this.f15699d = map;
    }

    public /* synthetic */ n0(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var, List list, Map map, kotlin.jvm.internal.o oVar) {
        this(n0Var, s0Var, list, map);
    }

    public final List<s0> a() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.s0 b() {
        return this.b;
    }

    public final s0 c(q0 constructor) {
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = constructor.c();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) {
            return this.f15699d.get(fVarC);
        }
        return null;
    }

    public final boolean d(kotlin.reflect.jvm.internal.impl.descriptors.s0 descriptor) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        if (!kotlin.jvm.internal.r.a(this.b, descriptor)) {
            n0 n0Var = this.f15698a;
            if (!(n0Var == null ? false : n0Var.d(descriptor))) {
                return false;
            }
        }
        return true;
    }
}
