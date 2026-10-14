package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.model.q;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements kotlin.reflect.jvm.internal.impl.types.checker.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<q0, q0> f15508a;
    private final kotlin.reflect.jvm.internal.impl.types.checker.f.a b;
    private final kotlin.reflect.jvm.internal.impl.types.checker.g c;

    /* JADX WARN: Multi-variable type inference failed */
    public h(Map<q0, ? extends q0> map, kotlin.reflect.jvm.internal.impl.types.checker.f.a equalityAxioms, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        r.e(equalityAxioms, "equalityAxioms");
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.f15508a = map;
        this.b = equalityAxioms;
        this.c = kotlinTypeRefiner;
    }

    private final boolean y0(q0 q0Var, q0 q0Var2) {
        if (this.b.a(q0Var, q0Var2)) {
            return true;
        }
        Map<q0, q0> map = this.f15508a;
        if (map == null) {
            return false;
        }
        q0 q0Var3 = map.get(q0Var);
        q0 q0Var4 = this.f15508a.get(q0Var2);
        if (q0Var3 == null || !r.a(q0Var3, q0Var2)) {
            return q0Var4 != null && r.a(q0Var4, q0Var);
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j A(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.i(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.a B(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.t0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j C(kotlin.reflect.jvm.internal.impl.types.model.g gVar, int i) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.o(this, gVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public PrimitiveType D(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.t(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean E(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.G(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean F(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.e0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean G(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.X(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean H(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.R(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.p
    public boolean I(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.E(this, hVar, hVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean J(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.I(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean K(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.f0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j L(kotlin.reflect.jvm.internal.impl.types.model.h hVar, int i) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.p(this, hVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean M(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.Z(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int N(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.o0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public PrimitiveType O(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.s(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g P(kotlin.reflect.jvm.internal.impl.types.model.l lVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.u(this, lVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public List<kotlin.reflect.jvm.internal.impl.types.model.h> Q(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.m(this, hVar, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean R(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.W(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean S(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.Y(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean T(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.N(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.g> U(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.s0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.g> V(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.p0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.k W(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.u0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean X(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.M(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean Y(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.C(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean Z(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.L(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean a(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.b0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean a0(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.Q(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h b(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.h0(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.name.d b0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.q(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h c(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.h(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.e c0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.g(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.k d(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.v0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g d0(List<? extends kotlin.reflect.jvm.internal.impl.types.model.g> list) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.F(this, list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h e(kotlin.reflect.jvm.internal.impl.types.model.h hVar, boolean z) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.z0(this, hVar, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public CaptureStatus e0(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.k(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h f(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.w0(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g f0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.k0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.b g(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.d(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j g0(kotlin.reflect.jvm.internal.impl.types.model.a aVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.q0(this, aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean h(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.g0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g h0(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.j0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int i(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.b(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean i0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.J(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean j(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.a0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean j0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.S(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean k(kotlin.reflect.jvm.internal.impl.types.model.l lVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.D(this, lVar, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g k0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.v(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.i l(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.c(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean l0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.V(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j m(kotlin.reflect.jvm.internal.impl.types.model.i iVar, int i) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.n(this, iVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h m0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.i0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean n(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.H(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public TypeVariance n0(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.z(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l o(kotlin.reflect.jvm.internal.impl.types.model.k kVar, int i) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.r(this, kVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean o0(kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.B(this, gVar, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public kotlin.reflect.jvm.internal.impl.types.model.g p(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.l(this, hVar, hVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l p0(q qVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.x(this, qVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l q(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.y(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean q0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.T(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g r(kotlin.reflect.jvm.internal.impl.types.model.g gVar, boolean z) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.y0(this, gVar, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h r0(kotlin.reflect.jvm.internal.impl.types.model.h hVar, CaptureStatus captureStatus) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.j(this, hVar, captureStatus);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h s(kotlin.reflect.jvm.internal.impl.types.model.c cVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.n0(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.c s0(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.e(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean t(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.d0(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean t0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.K(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public TypeVariance u(kotlin.reflect.jvm.internal.impl.types.model.l lVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.A(this, lVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g u0(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.w(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int v(kotlin.reflect.jvm.internal.impl.types.model.i iVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.r0(this, iVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.d v0(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.f(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h w(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.x0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean w0(kotlin.reflect.jvm.internal.impl.types.model.k c1, kotlin.reflect.jvm.internal.impl.types.model.k c2) {
        r.e(c1, "c1");
        r.e(c2, "c2");
        if (!(c1 instanceof q0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (c2 instanceof q0) {
            return kotlin.reflect.jvm.internal.impl.types.checker.c.a.a(this, c1, c2) || y0((q0) c1, (q0) c2);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean x(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.U(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g x0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.l0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean y(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.O(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean z(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.P(this, kVar);
    }

    public AbstractTypeCheckerContext z0(boolean z, boolean z2) {
        return new kotlin.reflect.jvm.internal.impl.types.checker.a(z, z2, true, this.c, null, this, 16, null);
    }
}
