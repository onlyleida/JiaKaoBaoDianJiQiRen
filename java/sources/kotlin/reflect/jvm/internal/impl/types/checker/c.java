package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.h0;
import kotlin.reflect.jvm.internal.impl.types.l0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.x0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public interface c extends x0, kotlin.reflect.jvm.internal.impl.types.model.o {

    public static final class a {
        public static TypeVariance A(c cVar, kotlin.reflect.jvm.internal.impl.types.model.l receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof t0) {
                Variance variance = ((t0) receiver).getVariance();
                kotlin.jvm.internal.r.d(variance, "this.variance");
                return kotlin.reflect.jvm.internal.impl.types.model.n.a(variance);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean B(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver, kotlin.reflect.jvm.internal.impl.name.c fqName) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            kotlin.jvm.internal.r.e(fqName, "fqName");
            if (receiver instanceof a0) {
                return ((a0) receiver).getAnnotations().h(fqName);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean C(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.d(cVar, receiver);
        }

        public static boolean D(c cVar, kotlin.reflect.jvm.internal.impl.types.model.l receiver, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (!(receiver instanceof t0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
            }
            if (kVar == null ? true : kVar instanceof q0) {
                return TypeUtilsKt.l((t0) receiver, (q0) kVar, null, 4, null);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean E(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h a2, kotlin.reflect.jvm.internal.impl.types.model.h b) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(a2, "a");
            kotlin.jvm.internal.r.e(b, "b");
            if (!(a2 instanceof f0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a2 + ", " + kotlin.jvm.internal.v.b(a2.getClass())).toString());
            }
            if (b instanceof f0) {
                return ((f0) a2).H0() == ((f0) b).H0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b + ", " + kotlin.jvm.internal.v.b(b.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g F(c cVar, List<? extends kotlin.reflect.jvm.internal.impl.types.model.g> types) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(types, "types");
            return e.a(types);
        }

        public static boolean G(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.u0((q0) receiver, kotlin.reflect.jvm.internal.impl.builtins.h.a.b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean H(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.e(cVar, receiver);
        }

        public static boolean I(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.f(cVar, receiver);
        }

        public static boolean J(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return ((q0) receiver).u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean K(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC : null;
                return (dVar == null || !x.a(dVar) || dVar.g() == ClassKind.ENUM_ENTRY || dVar.g() == ClassKind.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean L(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.g(cVar, receiver);
        }

        public static boolean M(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return ((q0) receiver).d();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean N(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.h(cVar, receiver);
        }

        public static boolean O(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return b0.a((a0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean P(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC : null;
                return dVar != null && kotlin.reflect.jvm.internal.impl.resolve.d.b(dVar);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean Q(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.i(cVar, receiver);
        }

        public static boolean R(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return receiver instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean S(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return receiver instanceof IntersectionTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean T(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.j(cVar, receiver);
        }

        public static boolean U(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                return ((f0) receiver).J0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean V(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.k(cVar, receiver);
        }

        public static boolean W(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.u0((q0) receiver, kotlin.reflect.jvm.internal.impl.builtins.h.a.c);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean X(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return y0.m((a0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean Y(c cVar, kotlin.reflect.jvm.internal.impl.types.model.b receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return receiver instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean Z(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.q0((a0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean a(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k c1, kotlin.reflect.jvm.internal.impl.types.model.k c2) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(c1, "c1");
            kotlin.jvm.internal.r.e(c2, "c2");
            if (!(c1 instanceof q0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c1 + ", " + kotlin.jvm.internal.v.b(c1.getClass())).toString());
            }
            if (c2 instanceof q0) {
                return kotlin.jvm.internal.r.a(c1, c2);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c2 + ", " + kotlin.jvm.internal.v.b(c2.getClass())).toString());
        }

        public static boolean a0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.b receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof i) {
                return ((i) receiver).U0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static int b(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return ((a0) receiver).H0().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean b0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (!(receiver instanceof f0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
            }
            if (!b0.a((a0) receiver)) {
                f0 f0Var = (f0) receiver;
                if (!(f0Var.I0().u() instanceof s0) && (f0Var.I0().u() != null || (receiver instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a) || (receiver instanceof i) || (receiver instanceof kotlin.reflect.jvm.internal.impl.types.k) || (f0Var.I0() instanceof IntegerLiteralTypeConstructor) || c0(cVar, receiver))) {
                    return true;
                }
            }
            return false;
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.i c(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                return (kotlin.reflect.jvm.internal.impl.types.model.i) receiver;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        private static boolean c0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar) {
            return (hVar instanceof h0) && cVar.a(((h0) hVar).B0());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.b d(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                if (receiver instanceof h0) {
                    return cVar.g(((h0) receiver).B0());
                }
                if (receiver instanceof i) {
                    return (i) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean d0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.j receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.s0) {
                return ((kotlin.reflect.jvm.internal.impl.types.s0) receiver).a();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.c e(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.k) {
                    return (kotlin.reflect.jvm.internal.impl.types.k) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean e0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                if (!(receiver instanceof kotlin.reflect.jvm.internal.impl.types.e)) {
                    if (!((receiver instanceof kotlin.reflect.jvm.internal.impl.types.k) && (((kotlin.reflect.jvm.internal.impl.types.k) receiver).U0() instanceof kotlin.reflect.jvm.internal.impl.types.e))) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.d f(c cVar, kotlin.reflect.jvm.internal.impl.types.model.e receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.v) {
                if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.q) {
                    return (kotlin.reflect.jvm.internal.impl.types.q) receiver;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean f0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                if (!(receiver instanceof l0)) {
                    if (!((receiver instanceof kotlin.reflect.jvm.internal.impl.types.k) && (((kotlin.reflect.jvm.internal.impl.types.k) receiver).U0() instanceof l0))) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.e g(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                c1 c1VarL0 = ((a0) receiver).L0();
                if (c1VarL0 instanceof kotlin.reflect.jvm.internal.impl.types.v) {
                    return (kotlin.reflect.jvm.internal.impl.types.v) c1VarL0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static boolean g0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                return fVarC != null && kotlin.reflect.jvm.internal.impl.builtins.g.z0(fVarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h h(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                c1 c1VarL0 = ((a0) receiver).L0();
                if (c1VarL0 instanceof f0) {
                    return (f0) c1VarL0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h h0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.e receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.v) {
                return ((kotlin.reflect.jvm.internal.impl.types.v) receiver).Q0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j i(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return TypeUtilsKt.a((a0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h i0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.l(cVar, receiver);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h j(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h type, CaptureStatus status) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(type, "type");
            kotlin.jvm.internal.r.e(status, "status");
            if (type instanceof f0) {
                return j.b((f0) type, status);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + kotlin.jvm.internal.v.b(type.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g j0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.b receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof i) {
                return ((i) receiver).T0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static CaptureStatus k(c cVar, kotlin.reflect.jvm.internal.impl.types.model.b receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof i) {
                return ((i) receiver).R0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g k0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof c1) {
                return d.b((c1) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g l(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h lowerBound, kotlin.reflect.jvm.internal.impl.types.model.h upperBound) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
            kotlin.jvm.internal.r.e(upperBound, "upperBound");
            if (!(lowerBound instanceof f0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + cVar + ", " + kotlin.jvm.internal.v.b(cVar.getClass())).toString());
            }
            if (upperBound instanceof f0) {
                return KotlinTypeFactory.d((f0) lowerBound, (f0) upperBound);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + cVar + ", " + kotlin.jvm.internal.v.b(cVar.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g l0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return x0.a.a(cVar, receiver);
        }

        public static List<kotlin.reflect.jvm.internal.impl.types.model.h> m(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver, kotlin.reflect.jvm.internal.impl.types.model.k constructor) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            kotlin.jvm.internal.r.e(constructor, "constructor");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.a(cVar, receiver, constructor);
        }

        public static AbstractTypeCheckerContext m0(c cVar, boolean z, boolean z2) {
            kotlin.jvm.internal.r.e(cVar, "this");
            return new kotlin.reflect.jvm.internal.impl.types.checker.a(z, z2, false, null, null, cVar, 28, null);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j n(c cVar, kotlin.reflect.jvm.internal.impl.types.model.i receiver, int i) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.b(cVar, receiver, i);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h n0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.c receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.k) {
                return ((kotlin.reflect.jvm.internal.impl.types.k) receiver).U0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j o(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver, int i) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return ((a0) receiver).H0().get(i);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static int o0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                return ((q0) receiver).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j p(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver, int i) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.c(cVar, receiver, i);
        }

        public static Collection<kotlin.reflect.jvm.internal.impl.types.model.g> p0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            kotlin.reflect.jvm.internal.impl.types.model.k kVarD = cVar.d(receiver);
            if (kVarD instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) kVarD).i();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.name.d q(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                Objects.requireNonNull(fVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return DescriptorUtilsKt.j((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j q0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.a receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof NewCapturedTypeConstructor) {
                return ((NewCapturedTypeConstructor) receiver).getProjection();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.l r(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver, int i) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                t0 t0Var = ((q0) receiver).getParameters().get(i);
                kotlin.jvm.internal.r.d(t0Var, "this.parameters[index]");
                return t0Var;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static int r0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.i receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.m(cVar, receiver);
        }

        public static PrimitiveType s(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                Objects.requireNonNull(fVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return kotlin.reflect.jvm.internal.impl.builtins.g.P((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static Collection<kotlin.reflect.jvm.internal.impl.types.model.g> s0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                Collection<a0> collectionA = ((q0) receiver).a();
                kotlin.jvm.internal.r.d(collectionA, "this.supertypes");
                return collectionA;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static PrimitiveType t(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                Objects.requireNonNull(fVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return kotlin.reflect.jvm.internal.impl.builtins.g.S((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.a t0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.b receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof i) {
                return ((i) receiver).I0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g u(c cVar, kotlin.reflect.jvm.internal.impl.types.model.l receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof t0) {
                return TypeUtilsKt.i((t0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.k u0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.n(cVar, receiver);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g v(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof a0) {
                return kotlin.reflect.jvm.internal.impl.resolve.d.e((a0) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.k v0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                return ((f0) receiver).I0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g w(c cVar, kotlin.reflect.jvm.internal.impl.types.model.j receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.s0) {
                return ((kotlin.reflect.jvm.internal.impl.types.s0) receiver).getType().L0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h w0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.e receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.v) {
                return ((kotlin.reflect.jvm.internal.impl.types.v) receiver).R0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.l x(c cVar, kotlin.reflect.jvm.internal.impl.types.model.q receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof m) {
                return ((m) receiver).a();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h x0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            return kotlin.reflect.jvm.internal.impl.types.model.o.a.o(cVar, receiver);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.l y(c cVar, kotlin.reflect.jvm.internal.impl.types.model.k receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof q0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((q0) receiver).u();
                if (fVarC instanceof t0) {
                    return (t0) fVarC;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g y0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.g receiver, boolean z) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.model.h) {
                return cVar.e((kotlin.reflect.jvm.internal.impl.types.model.h) receiver, z);
            }
            if (!(receiver instanceof kotlin.reflect.jvm.internal.impl.types.model.e)) {
                throw new IllegalStateException("sealed".toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.e eVar = (kotlin.reflect.jvm.internal.impl.types.model.e) receiver;
            return cVar.p(cVar.e(cVar.b(eVar), z), cVar.e(cVar.f(eVar), z));
        }

        public static TypeVariance z(c cVar, kotlin.reflect.jvm.internal.impl.types.model.j receiver) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof kotlin.reflect.jvm.internal.impl.types.s0) {
                Variance varianceC = ((kotlin.reflect.jvm.internal.impl.types.s0) receiver).c();
                kotlin.jvm.internal.r.d(varianceC, "this.projectionKind");
                return kotlin.reflect.jvm.internal.impl.types.model.n.a(varianceC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h z0(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h receiver, boolean z) {
            kotlin.jvm.internal.r.e(cVar, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            if (receiver instanceof f0) {
                return ((f0) receiver).M0(z);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + kotlin.jvm.internal.v.b(receiver.getClass())).toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    boolean a(kotlin.reflect.jvm.internal.impl.types.model.h hVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.h b(kotlin.reflect.jvm.internal.impl.types.model.e eVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.h c(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.k d(kotlin.reflect.jvm.internal.impl.types.model.h hVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.h e(kotlin.reflect.jvm.internal.impl.types.model.h hVar, boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.h f(kotlin.reflect.jvm.internal.impl.types.model.e eVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.m
    kotlin.reflect.jvm.internal.impl.types.model.b g(kotlin.reflect.jvm.internal.impl.types.model.h hVar);

    kotlin.reflect.jvm.internal.impl.types.model.g p(kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2);
}
