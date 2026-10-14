package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes6.dex */
public interface m extends p {

    public static final class a {
        public static List<h> a(m mVar, h receiver, k constructor) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            r.e(constructor, "constructor");
            return null;
        }

        public static j b(m mVar, i receiver, int i) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            if (receiver instanceof h) {
                return mVar.C((g) receiver, i);
            }
            if (receiver instanceof ArgumentList) {
                j jVar = ((ArgumentList) receiver).get(i);
                r.d(jVar, "get(index)");
                return jVar;
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + v.b(receiver.getClass())).toString());
        }

        public static j c(m mVar, h receiver, int i) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            boolean z = false;
            if (i >= 0 && i < mVar.i(receiver)) {
                z = true;
            }
            if (z) {
                return mVar.C(receiver, i);
            }
            return null;
        }

        public static boolean d(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            return mVar.x(mVar.m0(receiver)) != mVar.x(mVar.w(receiver));
        }

        public static boolean e(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            h hVarC = mVar.c(receiver);
            return (hVarC == null ? null : mVar.g(hVarC)) != null;
        }

        public static boolean f(m mVar, h receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            return mVar.i0(mVar.d(receiver));
        }

        public static boolean g(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            h hVarC = mVar.c(receiver);
            return (hVarC == null ? null : mVar.s0(hVarC)) != null;
        }

        public static boolean h(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            e eVarC0 = mVar.c0(receiver);
            return (eVarC0 == null ? null : mVar.v0(eVarC0)) != null;
        }

        public static boolean i(m mVar, h receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            return mVar.H(mVar.d(receiver));
        }

        public static boolean j(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            return (receiver instanceof h) && mVar.x((h) receiver);
        }

        public static boolean k(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            return mVar.R(mVar.W(receiver)) && !mVar.G(receiver);
        }

        public static h l(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            e eVarC0 = mVar.c0(receiver);
            if (eVarC0 != null) {
                return mVar.b(eVarC0);
            }
            h hVarC = mVar.c(receiver);
            r.c(hVarC);
            return hVarC;
        }

        public static int m(m mVar, i receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            if (receiver instanceof h) {
                return mVar.i((g) receiver);
            }
            if (receiver instanceof ArgumentList) {
                return ((ArgumentList) receiver).size();
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + v.b(receiver.getClass())).toString());
        }

        public static k n(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            h hVarC = mVar.c(receiver);
            if (hVarC == null) {
                hVarC = mVar.m0(receiver);
            }
            return mVar.d(hVarC);
        }

        public static h o(m mVar, g receiver) {
            r.e(mVar, "this");
            r.e(receiver, "receiver");
            e eVarC0 = mVar.c0(receiver);
            if (eVarC0 != null) {
                return mVar.f(eVarC0);
            }
            h hVarC = mVar.c(receiver);
            r.c(hVarC);
            return hVarC;
        }
    }

    j A(g gVar);

    kotlin.reflect.jvm.internal.impl.types.model.a B(b bVar);

    j C(g gVar, int i);

    boolean E(k kVar);

    boolean F(h hVar);

    boolean G(g gVar);

    boolean H(k kVar);

    boolean J(h hVar);

    boolean K(h hVar);

    j L(h hVar, int i);

    boolean M(h hVar);

    int N(k kVar);

    List<h> Q(h hVar, k kVar);

    boolean R(k kVar);

    boolean S(b bVar);

    boolean T(g gVar);

    Collection<g> U(k kVar);

    Collection<g> V(h hVar);

    k W(g gVar);

    boolean X(k kVar);

    boolean Y(g gVar);

    boolean Z(g gVar);

    boolean a(h hVar);

    boolean a0(h hVar);

    h b(e eVar);

    h c(g gVar);

    e c0(g gVar);

    k d(h hVar);

    g d0(List<? extends g> list);

    h e(h hVar, boolean z);

    CaptureStatus e0(b bVar);

    h f(e eVar);

    g f0(g gVar);

    b g(h hVar);

    j g0(kotlin.reflect.jvm.internal.impl.types.model.a aVar);

    g h0(b bVar);

    int i(g gVar);

    boolean i0(k kVar);

    boolean j(b bVar);

    boolean j0(k kVar);

    boolean k(l lVar, k kVar);

    i l(h hVar);

    boolean l0(g gVar);

    j m(i iVar, int i);

    h m0(g gVar);

    boolean n(g gVar);

    TypeVariance n0(j jVar);

    l o(k kVar, int i);

    l p0(q qVar);

    l q(k kVar);

    boolean q0(g gVar);

    g r(g gVar, boolean z);

    h r0(h hVar, CaptureStatus captureStatus);

    h s(c cVar);

    c s0(h hVar);

    boolean t(j jVar);

    boolean t0(k kVar);

    TypeVariance u(l lVar);

    g u0(j jVar);

    int v(i iVar);

    d v0(e eVar);

    h w(g gVar);

    boolean w0(k kVar, k kVar2);

    boolean x(h hVar);

    boolean y(g gVar);
}
