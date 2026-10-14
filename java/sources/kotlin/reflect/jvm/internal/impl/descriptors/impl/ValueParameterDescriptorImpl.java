package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public class ValueParameterDescriptorImpl extends h0 implements v0 {
    public static final a l = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f14902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f14903h;
    private final boolean i;
    private final kotlin.reflect.jvm.internal.impl.types.a0 j;
    private final v0 k;

    public static final class WithDestructuringDeclaration extends ValueParameterDescriptorImpl {
        private final Lazy m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDestructuringDeclaration(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, v0 v0Var, int i, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.types.a0 outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, o0 source, Function0<? extends List<? extends w0>> destructuringVariables) {
            super(containingDeclaration, v0Var, i, annotations, name, outType, z, z2, z3, a0Var, source);
            kotlin.jvm.internal.r.e(containingDeclaration, "containingDeclaration");
            kotlin.jvm.internal.r.e(annotations, "annotations");
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(outType, "outType");
            kotlin.jvm.internal.r.e(source, "source");
            kotlin.jvm.internal.r.e(destructuringVariables, "destructuringVariables");
            this.m = kotlin.i.b(destructuringVariables);
        }

        public final List<w0> J0() {
            return (List) this.m.getValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.v0
        public v0 W(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, kotlin.reflect.jvm.internal.impl.name.f newName, int i) {
            kotlin.jvm.internal.r.e(newOwner, "newOwner");
            kotlin.jvm.internal.r.e(newName, "newName");
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = getAnnotations();
            kotlin.jvm.internal.r.d(annotations, "annotations");
            kotlin.reflect.jvm.internal.impl.types.a0 type = getType();
            kotlin.jvm.internal.r.d(type, "type");
            boolean zX0 = x0();
            boolean zP0 = p0();
            boolean zN0 = n0();
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarT0 = t0();
            o0 NO_SOURCE = o0.f14970a;
            kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
            return new WithDestructuringDeclaration(newOwner, null, i, annotations, newName, type, zX0, zP0, zN0, a0VarT0, NO_SOURCE, new Function0<List<? extends w0>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl$WithDestructuringDeclaration$copy$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends w0> invoke() {
                    return this.this$0.J0();
                }
            });
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final ValueParameterDescriptorImpl a(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, v0 v0Var, int i, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.types.a0 outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, o0 source, Function0<? extends List<? extends w0>> function0) {
            kotlin.jvm.internal.r.e(containingDeclaration, "containingDeclaration");
            kotlin.jvm.internal.r.e(annotations, "annotations");
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(outType, "outType");
            kotlin.jvm.internal.r.e(source, "source");
            return function0 == null ? new ValueParameterDescriptorImpl(containingDeclaration, v0Var, i, annotations, name, outType, z, z2, z3, a0Var, source) : new WithDestructuringDeclaration(containingDeclaration, v0Var, i, annotations, name, outType, z, z2, z3, a0Var, source, function0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, v0 v0Var, int i, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.types.a0 outType, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, o0 source) {
        super(containingDeclaration, annotations, name, outType, source);
        kotlin.jvm.internal.r.e(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(outType, "outType");
        kotlin.jvm.internal.r.e(source, "source");
        this.f14901f = i;
        this.f14902g = z;
        this.f14903h = z2;
        this.i = z3;
        this.j = a0Var;
        this.k = v0Var == null ? this : v0Var;
    }

    public static final ValueParameterDescriptorImpl G0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, v0 v0Var, int i, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.a0 a0Var2, o0 o0Var, Function0<? extends List<? extends w0>> function0) {
        return l.a(aVar, v0Var, i, eVar, fVar, a0Var, z, z2, z3, a0Var2, o0Var, function0);
    }

    public Void H0() {
        return null;
    }

    public v0 I0(TypeSubstitutor substitutor) {
        kotlin.jvm.internal.r.e(substitutor, "substitutor");
        if (substitutor.k()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public boolean M() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public v0 W(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, kotlin.reflect.jvm.internal.impl.name.f newName, int i) {
        kotlin.jvm.internal.r.e(newOwner, "newOwner");
        kotlin.jvm.internal.r.e(newName, "newName");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = getAnnotations();
        kotlin.jvm.internal.r.d(annotations, "annotations");
        kotlin.reflect.jvm.internal.impl.types.a0 type = getType();
        kotlin.jvm.internal.r.d(type, "type");
        boolean zX0 = x0();
        boolean zP0 = p0();
        boolean zN0 = n0();
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarT0 = t0();
        o0 NO_SOURCE = o0.f14970a;
        kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
        return new ValueParameterDescriptorImpl(newOwner, null, i, annotations, newName, type, zX0, zP0, zN0, a0VarT0, NO_SOURCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.l c(TypeSubstitutor typeSubstitutor) {
        I0(typeSubstitutor);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<v0> d() {
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> collectionD = b().d();
        kotlin.jvm.internal.r.d(collectionD, "containingDeclaration.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionD, 10));
        Iterator<T> it = collectionD.iterator();
        while (it.hasNext()) {
            arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.a) it.next()).f().get(h()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s LOCAL = kotlin.reflect.jvm.internal.impl.descriptors.r.f14976f;
        kotlin.jvm.internal.r.d(LOCAL, "LOCAL");
        return LOCAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public int h() {
        return this.f14901f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.constants.g m0() {
        return (kotlin.reflect.jvm.internal.impl.resolve.constants.g) H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public boolean n0() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public boolean p0() {
        return this.f14903h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public kotlin.reflect.jvm.internal.impl.types.a0 t0() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.v0
    public boolean x0() {
        return this.f14902g && ((CallableMemberDescriptor) b()).g().isReal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> visitor, D d2) {
        kotlin.jvm.internal.r.e(visitor, "visitor");
        return visitor.f(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.a b() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.a) super.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    public v0 a() {
        v0 v0Var = this.k;
        return v0Var == this ? this : v0Var.a();
    }
}
