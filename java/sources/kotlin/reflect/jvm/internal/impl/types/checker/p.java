package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* JADX INFO: loaded from: classes6.dex */
public final class p implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f15676a = new p();

    private p() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j A(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.i(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.a B(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return c.a.t0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j C(kotlin.reflect.jvm.internal.impl.types.model.g gVar, int i) {
        return c.a.o(this, gVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public PrimitiveType D(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.t(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean E(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.G(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean F(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.e0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean G(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.X(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean H(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.R(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.p
    public boolean I(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        return c.a.E(this, hVar, hVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean J(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.I(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean K(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.f0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j L(kotlin.reflect.jvm.internal.impl.types.model.h hVar, int i) {
        return c.a.p(this, hVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean M(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.Z(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int N(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.o0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public PrimitiveType O(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.s(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g P(kotlin.reflect.jvm.internal.impl.types.model.l lVar) {
        return c.a.u(this, lVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public List<kotlin.reflect.jvm.internal.impl.types.model.h> Q(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.m(this, hVar, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean R(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.W(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean S(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return c.a.Y(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean T(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.N(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.g> U(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.s0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.g> V(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.p0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.k W(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.u0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean X(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.M(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean Y(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.C(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean Z(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.L(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean a(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.b0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean a0(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.Q(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h b(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return c.a.h0(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.name.d b0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.q(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h c(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.h(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.e c0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.g(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.k d(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.v0(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g d0(List<? extends kotlin.reflect.jvm.internal.impl.types.model.g> list) {
        return c.a.F(this, list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h e(kotlin.reflect.jvm.internal.impl.types.model.h hVar, boolean z) {
        return c.a.z0(this, hVar, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public CaptureStatus e0(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return c.a.k(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h f(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return c.a.w0(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g f0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.k0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c, kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.b g(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.d(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j g0(kotlin.reflect.jvm.internal.impl.types.model.a aVar) {
        return c.a.q0(this, aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean h(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.g0(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g h0(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return c.a.j0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int i(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.b(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean i0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.J(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean j(kotlin.reflect.jvm.internal.impl.types.model.b bVar) {
        return c.a.a0(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean j0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.S(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean k(kotlin.reflect.jvm.internal.impl.types.model.l lVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.D(this, lVar, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g k0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.v(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.i l(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.c(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean l0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.V(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.j m(kotlin.reflect.jvm.internal.impl.types.model.i iVar, int i) {
        return c.a.n(this, iVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h m0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.i0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean n(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.H(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public TypeVariance n0(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return c.a.z(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l o(kotlin.reflect.jvm.internal.impl.types.model.k kVar, int i) {
        return c.a.r(this, kVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean o0(kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return c.a.B(this, gVar, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.c
    public kotlin.reflect.jvm.internal.impl.types.model.g p(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        return c.a.l(this, hVar, hVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l p0(kotlin.reflect.jvm.internal.impl.types.model.q qVar) {
        return c.a.x(this, qVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.l q(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.y(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean q0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.T(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g r(kotlin.reflect.jvm.internal.impl.types.model.g gVar, boolean z) {
        return c.a.y0(this, gVar, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h r0(kotlin.reflect.jvm.internal.impl.types.model.h hVar, CaptureStatus captureStatus) {
        return c.a.j(this, hVar, captureStatus);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h s(kotlin.reflect.jvm.internal.impl.types.model.c cVar) {
        return c.a.n0(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.c s0(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.e(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean t(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return c.a.d0(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean t0(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.K(this, kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public TypeVariance u(kotlin.reflect.jvm.internal.impl.types.model.l lVar) {
        return c.a.A(this, lVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.g u0(kotlin.reflect.jvm.internal.impl.types.model.j jVar) {
        return c.a.w(this, jVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public int v(kotlin.reflect.jvm.internal.impl.types.model.i iVar) {
        return c.a.r0(this, iVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.d v0(kotlin.reflect.jvm.internal.impl.types.model.e eVar) {
        return c.a.f(this, eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public kotlin.reflect.jvm.internal.impl.types.model.h w(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.x0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean w0(kotlin.reflect.jvm.internal.impl.types.model.k kVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar2) {
        return c.a.a(this, kVar, kVar2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean x(kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
        return c.a.U(this, hVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public kotlin.reflect.jvm.internal.impl.types.model.g x0(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.l0(this, gVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    public boolean y(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        return c.a.O(this, gVar);
    }

    public AbstractTypeCheckerContext y0(boolean z, boolean z2) {
        return c.a.m0(this, z, z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.x0
    public boolean z(kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        return c.a.P(this, kVar);
    }
}
