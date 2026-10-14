package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.IntIterator;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.resolve.constants.w;
import kotlin.reflect.jvm.internal.impl.resolve.constants.x;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f15551a;
    private final NotFoundClasses b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15552a;

        static {
            int[] iArr = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
            iArr[ProtoBuf$Annotation.Argument.Value.Type.BYTE.ordinal()] = 1;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.CHAR.ordinal()] = 2;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.SHORT.ordinal()] = 3;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.INT.ordinal()] = 4;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.LONG.ordinal()] = 5;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.FLOAT.ordinal()] = 6;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.DOUBLE.ordinal()] = 7;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.BOOLEAN.ordinal()] = 8;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.STRING.ordinal()] = 9;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.CLASS.ordinal()] = 10;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.ENUM.ordinal()] = 11;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.ANNOTATION.ordinal()] = 12;
            iArr[ProtoBuf$Annotation.Argument.Value.Type.ARRAY.ordinal()] = 13;
            f15552a = iArr;
        }
    }

    public c(z module, NotFoundClasses notFoundClasses) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        this.f15551a = module;
        this.b = notFoundClasses;
    }

    private final boolean b(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, a0 a0Var, ProtoBuf$Annotation.Argument.Value value) {
        ProtoBuf$Annotation.Argument.Value.Type type = value.getType();
        int i = type == null ? -1 : a.f15552a[type.ordinal()];
        if (i == 10) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU : null;
            if (dVar != null && !kotlin.reflect.jvm.internal.impl.builtins.g.j0(dVar)) {
                return false;
            }
        } else {
            if (i != 13) {
                return kotlin.jvm.internal.r.a(gVar.a(this.f15551a), a0Var);
            }
            if (!((gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) && ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b().size() == value.getArrayElementList().size())) {
                throw new IllegalStateException(kotlin.jvm.internal.r.m("Deserialized ArrayValue should have the same number of elements as the original array value: ", gVar).toString());
            }
            a0 a0VarK = c().k(a0Var);
            kotlin.jvm.internal.r.d(a0VarK, "builtIns.getArrayElementType(expectedType)");
            kotlin.reflect.jvm.internal.impl.resolve.constants.b bVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar;
            Iterable iterableK = kotlin.collections.u.k(bVar.b());
            if (!(iterableK instanceof Collection) || !((Collection) iterableK).isEmpty()) {
                Iterator it = iterableK.iterator();
                while (it.hasNext()) {
                    int iE = ((IntIterator) it).e();
                    kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar2 = bVar.b().get(iE);
                    ProtoBuf$Annotation.Argument.Value arrayElement = value.getArrayElement(iE);
                    kotlin.jvm.internal.r.d(arrayElement, "value.getArrayElement(i)");
                    if (!b(gVar2, a0VarK, arrayElement)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private final kotlin.reflect.jvm.internal.impl.builtins.g c() {
        return this.f15551a.k();
    }

    private final Pair<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> d(ProtoBuf$Annotation.Argument argument, Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends v0> map, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar) {
        v0 v0Var = map.get(q.b(cVar, argument.getNameId()));
        if (v0Var == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(cVar, argument.getNameId());
        a0 type = v0Var.getType();
        kotlin.jvm.internal.r.d(type, "parameter.type");
        ProtoBuf$Annotation.Argument.Value value = argument.getValue();
        kotlin.jvm.internal.r.d(value, "proto.value");
        return new Pair<>(fVarB, g(type, value, cVar));
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d e(kotlin.reflect.jvm.internal.impl.name.b bVar) {
        return FindClassInModuleKt.c(this.f15551a, bVar, this.b);
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> g(a0 a0Var, ProtoBuf$Annotation.Argument.Value value, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarF = f(a0Var, value, cVar);
        if (!b(gVarF, a0Var, value)) {
            gVarF = null;
        }
        if (gVarF != null) {
            return gVarF;
        }
        return kotlin.reflect.jvm.internal.impl.resolve.constants.j.b.a("Unexpected argument value: actual type " + value.getType() + " != expected type " + a0Var);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c a(ProtoBuf$Annotation proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = e(q.a(nameResolver, proto.getId()));
        Map mapH = o0.h();
        if (proto.getArgumentCount() != 0 && !kotlin.reflect.jvm.internal.impl.types.t.r(dVarE) && kotlin.reflect.jvm.internal.impl.resolve.c.t(dVarE)) {
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = dVarE.j();
            kotlin.jvm.internal.r.d(collectionJ, "annotationClass.constructors");
            kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) kotlin.collections.s.D0(collectionJ);
            if (cVar != null) {
                List<v0> listF = cVar.f();
                kotlin.jvm.internal.r.d(listF, "constructor.valueParameters");
                LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(kotlin.collections.v.u(listF, 10)), 16));
                for (Object obj : listF) {
                    linkedHashMap.put(((v0) obj).getName(), obj);
                }
                List<ProtoBuf$Annotation.Argument> argumentList = proto.getArgumentList();
                kotlin.jvm.internal.r.d(argumentList, "proto.argumentList");
                ArrayList arrayList = new ArrayList();
                for (ProtoBuf$Annotation.Argument it : argumentList) {
                    kotlin.jvm.internal.r.d(it, "it");
                    Pair<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> pairD = d(it, linkedHashMap, nameResolver);
                    if (pairD != null) {
                        arrayList.add(pairD);
                    }
                }
                mapH = o0.q(arrayList);
            }
        }
        return new kotlin.reflect.jvm.internal.impl.descriptors.annotations.d(dVarE.n(), mapH, kotlin.reflect.jvm.internal.impl.descriptors.o0.f14970a);
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> f(a0 expectedType, ProtoBuf$Annotation.Argument.Value value, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> eVar;
        kotlin.jvm.internal.r.e(expectedType, "expectedType");
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.N.d(value.getFlags());
        kotlin.jvm.internal.r.d(boolD, "IS_UNSIGNED.get(value.flags)");
        boolean zBooleanValue = boolD.booleanValue();
        ProtoBuf$Annotation.Argument.Value.Type type = value.getType();
        switch (type == null ? -1 : a.f15552a[type.ordinal()]) {
            case 1:
                byte intValue = (byte) value.getIntValue();
                return zBooleanValue ? new kotlin.reflect.jvm.internal.impl.resolve.constants.u(intValue) : new kotlin.reflect.jvm.internal.impl.resolve.constants.d(intValue);
            case 2:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.e((char) value.getIntValue());
                break;
            case 3:
                short intValue2 = (short) value.getIntValue();
                return zBooleanValue ? new x(intValue2) : new kotlin.reflect.jvm.internal.impl.resolve.constants.s(intValue2);
            case 4:
                int intValue3 = (int) value.getIntValue();
                eVar = zBooleanValue ? new kotlin.reflect.jvm.internal.impl.resolve.constants.v(intValue3) : new kotlin.reflect.jvm.internal.impl.resolve.constants.l(intValue3);
                break;
            case 5:
                long intValue4 = value.getIntValue();
                return zBooleanValue ? new w(intValue4) : new kotlin.reflect.jvm.internal.impl.resolve.constants.p(intValue4);
            case 6:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.k(value.getFloatValue());
                break;
            case 7:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.h(value.getDoubleValue());
                break;
            case 8:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.c(value.getIntValue() != 0);
                break;
            case 9:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.t(nameResolver.getString(value.getStringValue()));
                break;
            case 10:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.o(q.a(nameResolver, value.getClassId()), value.getArrayDimensionCount());
                break;
            case 11:
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.i(q.a(nameResolver, value.getClassId()), q.b(nameResolver, value.getEnumValueId()));
                break;
            case 12:
                ProtoBuf$Annotation annotation = value.getAnnotation();
                kotlin.jvm.internal.r.d(annotation, "value.annotation");
                eVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.a(a(annotation, nameResolver));
                break;
            case 13:
                List<ProtoBuf$Annotation.Argument.Value> arrayElementList = value.getArrayElementList();
                kotlin.jvm.internal.r.d(arrayElementList, "value.arrayElementList");
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(arrayElementList, 10));
                for (ProtoBuf$Annotation.Argument.Value it : arrayElementList) {
                    f0 f0VarI = c().i();
                    kotlin.jvm.internal.r.d(f0VarI, "builtIns.anyType");
                    kotlin.jvm.internal.r.d(it, "it");
                    arrayList.add(f(f0VarI, it, nameResolver));
                }
                return new DeserializedArrayValue(arrayList, expectedType);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + value.getType() + " (expected " + expectedType + ')').toString());
        }
        return eVar;
    }
}
