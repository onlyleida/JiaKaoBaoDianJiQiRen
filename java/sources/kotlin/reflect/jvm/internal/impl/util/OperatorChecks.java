package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class OperatorChecks extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OperatorChecks f15728a = new OperatorChecks();
    private static final List<Checks> b;

    static {
        kotlin.reflect.jvm.internal.impl.name.f fVar = h.i;
        e.b bVar = e.b.b;
        b[] bVarArr = {bVar, new i.a(1)};
        kotlin.reflect.jvm.internal.impl.name.f fVar2 = h.j;
        b[] bVarArr2 = {bVar, new i.a(2)};
        kotlin.reflect.jvm.internal.impl.name.f fVar3 = h.f15738a;
        g gVar = g.f15737a;
        d dVar = d.f15734a;
        kotlin.reflect.jvm.internal.impl.name.f fVar4 = h.f15741f;
        i.d dVar2 = i.d.b;
        ReturnsCheck.ReturnsBoolean returnsBoolean = ReturnsCheck.ReturnsBoolean.f15730d;
        kotlin.reflect.jvm.internal.impl.name.f fVar5 = h.f15743h;
        i.c cVar = i.c.b;
        b = u.m(new Checks(fVar, bVarArr, (Function1) null, 4, (o) null), new Checks(fVar2, bVarArr2, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.u, String>() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$checks$1
            /* JADX WARN: Code duplicated, block: B:4:0x0018  */
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.u $receiver) {
                boolean z;
                r.e($receiver, "$this$$receiver");
                List<v0> valueParameters = $receiver.f();
                r.d(valueParameters, "valueParameters");
                v0 v0Var = (v0) s.q0(valueParameters);
                if (v0Var != null) {
                    z = !DescriptorUtilsKt.a(v0Var) && v0Var.t0() == null;
                }
                OperatorChecks operatorChecks = OperatorChecks.f15728a;
                if (z) {
                    return null;
                }
                return "last parameter should not have a default value or be a vararg";
            }
        }), new Checks(fVar3, new b[]{bVar, gVar, new i.a(2), dVar}, (Function1) null, 4, (o) null), new Checks(h.b, new b[]{bVar, gVar, new i.a(3), dVar}, (Function1) null, 4, (o) null), new Checks(h.c, new b[]{bVar, gVar, new i.b(2), dVar}, (Function1) null, 4, (o) null), new Checks(h.f15742g, new b[]{bVar}, (Function1) null, 4, (o) null), new Checks(fVar4, new b[]{bVar, dVar2, gVar, returnsBoolean}, (Function1) null, 4, (o) null), new Checks(fVar5, new b[]{bVar, cVar}, (Function1) null, 4, (o) null), new Checks(h.k, new b[]{bVar, cVar}, (Function1) null, 4, (o) null), new Checks(h.l, new b[]{bVar, cVar, returnsBoolean}, (Function1) null, 4, (o) null), new Checks(h.y, new b[]{bVar, dVar2, gVar}, (Function1) null, 4, (o) null), new Checks(h.f15739d, new b[]{e.a.b}, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.u, String>() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$checks$2
            private static final boolean invoke$isAny(k kVar) {
                return (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && kotlin.reflect.jvm.internal.impl.builtins.g.a0((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.u $receiver) {
                boolean z;
                r.e($receiver, "$this$$receiver");
                OperatorChecks operatorChecks = OperatorChecks.f15728a;
                k containingDeclaration = $receiver.b();
                r.d(containingDeclaration, "containingDeclaration");
                boolean z2 = true;
                if (!invoke$isAny(containingDeclaration)) {
                    Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> overriddenDescriptors = $receiver.d();
                    r.d(overriddenDescriptors, "overriddenDescriptors");
                    if (!overriddenDescriptors.isEmpty()) {
                        Iterator<T> it = overriddenDescriptors.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            k kVarB = ((kotlin.reflect.jvm.internal.impl.descriptors.u) it.next()).b();
                            r.d(kVarB, "it.containingDeclaration");
                            if (invoke$isAny(kVarB)) {
                                z = true;
                                break;
                            }
                        }
                    } else {
                        z = false;
                        break;
                    }
                    if (!z) {
                        z2 = false;
                    }
                }
                if (z2) {
                    return null;
                }
                return "must override ''equals()'' in Any";
            }
        }), new Checks(h.f15740e, new b[]{bVar, ReturnsCheck.ReturnsInt.f15731d, dVar2, gVar}, (Function1) null, 4, (o) null), new Checks(h.G, new b[]{bVar, dVar2, gVar}, (Function1) null, 4, (o) null), new Checks(h.F, new b[]{bVar, cVar}, (Function1) null, 4, (o) null), new Checks(u.m(h.n, h.o), new b[]{bVar}, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.u, String>() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$checks$3
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.u $receiver) {
                boolean zM;
                r.e($receiver, "$this$$receiver");
                m0 m0VarK = $receiver.K();
                if (m0VarK == null) {
                    m0VarK = $receiver.O();
                }
                OperatorChecks operatorChecks = OperatorChecks.f15728a;
                boolean z = false;
                if (m0VarK != null) {
                    a0 returnType = $receiver.getReturnType();
                    if (returnType == null) {
                        zM = false;
                    } else {
                        a0 type = m0VarK.getType();
                        r.d(type, "receiver.type");
                        zM = TypeUtilsKt.m(returnType, type);
                    }
                    if (zM) {
                        z = true;
                    }
                }
                if (z) {
                    return null;
                }
                return "receiver must be a supertype of the return type";
            }
        }), new Checks(h.H, new b[]{bVar, ReturnsCheck.ReturnsUnit.f15732d, dVar2, gVar}, (Function1) null, 4, (o) null), new Checks(h.m, new b[]{bVar, cVar}, (Function1) null, 4, (o) null));
    }

    private OperatorChecks() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.a
    public List<Checks> b() {
        return b;
    }
}
