package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.l0;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.collections.u0;
import kotlin.collections.v0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
public class SpecialGenericSignatures {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15015a = new a(null);
    private static final List<a.C0328a> b;
    private static final List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<a.C0328a, TypeSafeBarrierDescription> f15016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, TypeSafeBarrierDescription> f15017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.f> f15018f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f15019g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a.C0328a f15020h;
    private static final Map<a.C0328a, kotlin.reflect.jvm.internal.impl.name.f> i;
    private static final Map<String, kotlin.reflect.jvm.internal.impl.name.f> j;
    private static final List<kotlin.reflect.jvm.internal.impl.name.f> k;
    private static final Map<kotlin.reflect.jvm.internal.impl.name.f, List<kotlin.reflect.jvm.internal.impl.name.f>> l;

    public enum SpecialSignatureInfo {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);

        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        SpecialSignatureInfo(String str, boolean z) {
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TypeSafeBarrierDescription {
        private final Object defaultValue;
        public static final TypeSafeBarrierDescription NULL = new TypeSafeBarrierDescription("NULL", 0, null);
        public static final TypeSafeBarrierDescription INDEX = new TypeSafeBarrierDescription("INDEX", 1, -1);
        public static final TypeSafeBarrierDescription FALSE = new TypeSafeBarrierDescription("FALSE", 2, Boolean.FALSE);
        public static final TypeSafeBarrierDescription MAP_GET_OR_DEFAULT = new MAP_GET_OR_DEFAULT("MAP_GET_OR_DEFAULT", 3);
        private static final /* synthetic */ TypeSafeBarrierDescription[] $VALUES = $values();

        static final class MAP_GET_OR_DEFAULT extends TypeSafeBarrierDescription {
            /* JADX WARN: Illegal instructions before constructor call */
            MAP_GET_OR_DEFAULT(String str, int i) {
                kotlin.jvm.internal.o oVar = null;
                super(str, i, oVar, oVar);
            }
        }

        private static final /* synthetic */ TypeSafeBarrierDescription[] $values() {
            return new TypeSafeBarrierDescription[]{NULL, INDEX, FALSE, MAP_GET_OR_DEFAULT};
        }

        private TypeSafeBarrierDescription(String str, int i, Object obj) {
            super(str, i);
            this.defaultValue = obj;
        }

        public /* synthetic */ TypeSafeBarrierDescription(String str, int i, Object obj, kotlin.jvm.internal.o oVar) {
            this(str, i, obj);
        }

        public static TypeSafeBarrierDescription valueOf(String str) {
            return (TypeSafeBarrierDescription) Enum.valueOf(TypeSafeBarrierDescription.class, str);
        }

        public static TypeSafeBarrierDescription[] values() {
            return (TypeSafeBarrierDescription[]) $VALUES.clone();
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$a$a, reason: collision with other inner class name */
        public static final class C0328a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final kotlin.reflect.jvm.internal.impl.name.f f15021a;
            private final String b;

            public C0328a(kotlin.reflect.jvm.internal.impl.name.f name, String signature) {
                kotlin.jvm.internal.r.e(name, "name");
                kotlin.jvm.internal.r.e(signature, "signature");
                this.f15021a = name;
                this.b = signature;
            }

            public final kotlin.reflect.jvm.internal.impl.name.f a() {
                return this.f15021a;
            }

            public final String b() {
                return this.b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0328a)) {
                    return false;
                }
                C0328a c0328a = (C0328a) obj;
                return kotlin.jvm.internal.r.a(this.f15021a, c0328a.f15021a) && kotlin.jvm.internal.r.a(this.b, c0328a.b);
            }

            public int hashCode() {
                return (this.f15021a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return "NameAndSignature(name=" + this.f15021a + ", signature=" + this.b + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final C0328a m(String str, String str2, String str3, String str4) {
            kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(str2);
            kotlin.jvm.internal.r.d(fVarG, "identifier(name)");
            return new C0328a(fVarG, SignatureBuildingComponents.f15194a.k(str, str2 + '(' + str3 + ')' + str4));
        }

        public final List<kotlin.reflect.jvm.internal.impl.name.f> b(kotlin.reflect.jvm.internal.impl.name.f name) {
            kotlin.jvm.internal.r.e(name, "name");
            List<kotlin.reflect.jvm.internal.impl.name.f> list = f().get(name);
            return list == null ? kotlin.collections.u.j() : list;
        }

        public final List<String> c() {
            return SpecialGenericSignatures.c;
        }

        public final Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            return SpecialGenericSignatures.f15018f;
        }

        public final Set<String> e() {
            return SpecialGenericSignatures.f15019g;
        }

        public final Map<kotlin.reflect.jvm.internal.impl.name.f, List<kotlin.reflect.jvm.internal.impl.name.f>> f() {
            return SpecialGenericSignatures.l;
        }

        public final List<kotlin.reflect.jvm.internal.impl.name.f> g() {
            return SpecialGenericSignatures.k;
        }

        public final C0328a h() {
            return SpecialGenericSignatures.f15020h;
        }

        public final Map<String, TypeSafeBarrierDescription> i() {
            return SpecialGenericSignatures.f15017e;
        }

        public final Map<String, kotlin.reflect.jvm.internal.impl.name.f> j() {
            return SpecialGenericSignatures.j;
        }

        public final boolean k(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            kotlin.jvm.internal.r.e(fVar, "<this>");
            return g().contains(fVar);
        }

        public final SpecialSignatureInfo l(String builtinSignature) {
            kotlin.jvm.internal.r.e(builtinSignature, "builtinSignature");
            if (c().contains(builtinSignature)) {
                return SpecialSignatureInfo.ONE_COLLECTION_PARAMETER;
            }
            return ((TypeSafeBarrierDescription) l0.i(i(), builtinSignature)) == TypeSafeBarrierDescription.NULL ? SpecialSignatureInfo.OBJECT_PARAMETER_GENERIC : SpecialSignatureInfo.OBJECT_PARAMETER_NON_GENERIC;
        }
    }

    static {
        Set<String> setF = u0.f("containsAll", "removeAll", "retainAll");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(setF, 10));
        for (String str : setF) {
            a aVar = f15015a;
            String desc = JvmPrimitiveType.BOOLEAN.getDesc();
            kotlin.jvm.internal.r.d(desc, "BOOLEAN.desc");
            arrayList.add(aVar.m("java/util/Collection", str, "Ljava/util/Collection;", desc));
        }
        b = arrayList;
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((a.C0328a) it.next()).b());
        }
        c = arrayList2;
        List<a.C0328a> list = b;
        ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((a.C0328a) it2.next()).a().b());
        }
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
        a aVar2 = f15015a;
        String strI = signatureBuildingComponents.i("Collection");
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BOOLEAN;
        String desc2 = jvmPrimitiveType.getDesc();
        kotlin.jvm.internal.r.d(desc2, "BOOLEAN.desc");
        a.C0328a c0328aM = aVar2.m(strI, "contains", "Ljava/lang/Object;", desc2);
        TypeSafeBarrierDescription typeSafeBarrierDescription = TypeSafeBarrierDescription.FALSE;
        String strI2 = signatureBuildingComponents.i("Collection");
        String desc3 = jvmPrimitiveType.getDesc();
        kotlin.jvm.internal.r.d(desc3, "BOOLEAN.desc");
        String strI3 = signatureBuildingComponents.i("Map");
        String desc4 = jvmPrimitiveType.getDesc();
        kotlin.jvm.internal.r.d(desc4, "BOOLEAN.desc");
        String strI4 = signatureBuildingComponents.i("Map");
        String desc5 = jvmPrimitiveType.getDesc();
        kotlin.jvm.internal.r.d(desc5, "BOOLEAN.desc");
        String strI5 = signatureBuildingComponents.i("Map");
        String desc6 = jvmPrimitiveType.getDesc();
        kotlin.jvm.internal.r.d(desc6, "BOOLEAN.desc");
        a.C0328a c0328aM2 = aVar2.m(signatureBuildingComponents.i("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        TypeSafeBarrierDescription typeSafeBarrierDescription2 = TypeSafeBarrierDescription.NULL;
        String strI6 = signatureBuildingComponents.i("List");
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.INT;
        String desc7 = jvmPrimitiveType2.getDesc();
        kotlin.jvm.internal.r.d(desc7, "INT.desc");
        a.C0328a c0328aM3 = aVar2.m(strI6, "indexOf", "Ljava/lang/Object;", desc7);
        TypeSafeBarrierDescription typeSafeBarrierDescription3 = TypeSafeBarrierDescription.INDEX;
        String strI7 = signatureBuildingComponents.i("List");
        String desc8 = jvmPrimitiveType2.getDesc();
        kotlin.jvm.internal.r.d(desc8, "INT.desc");
        Map<a.C0328a, TypeSafeBarrierDescription> mapK = o0.k(kotlin.l.a(c0328aM, typeSafeBarrierDescription), kotlin.l.a(aVar2.m(strI2, "remove", "Ljava/lang/Object;", desc3), typeSafeBarrierDescription), kotlin.l.a(aVar2.m(strI3, "containsKey", "Ljava/lang/Object;", desc4), typeSafeBarrierDescription), kotlin.l.a(aVar2.m(strI4, "containsValue", "Ljava/lang/Object;", desc5), typeSafeBarrierDescription), kotlin.l.a(aVar2.m(strI5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", desc6), typeSafeBarrierDescription), kotlin.l.a(aVar2.m(signatureBuildingComponents.i("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), TypeSafeBarrierDescription.MAP_GET_OR_DEFAULT), kotlin.l.a(c0328aM2, typeSafeBarrierDescription2), kotlin.l.a(aVar2.m(signatureBuildingComponents.i("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), typeSafeBarrierDescription2), kotlin.l.a(c0328aM3, typeSafeBarrierDescription3), kotlin.l.a(aVar2.m(strI7, "lastIndexOf", "Ljava/lang/Object;", desc8), typeSafeBarrierDescription3));
        f15016d = mapK;
        LinkedHashMap linkedHashMap = new LinkedHashMap(n0.d(mapK.size()));
        Iterator<T> it3 = mapK.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            linkedHashMap.put(((a.C0328a) entry.getKey()).b(), entry.getValue());
        }
        f15017e = linkedHashMap;
        Set setH = v0.h(f15016d.keySet(), b);
        ArrayList arrayList4 = new ArrayList(kotlin.collections.v.u(setH, 10));
        Iterator it4 = setH.iterator();
        while (it4.hasNext()) {
            arrayList4.add(((a.C0328a) it4.next()).a());
        }
        f15018f = CollectionsKt___CollectionsKt.Q0(arrayList4);
        ArrayList arrayList5 = new ArrayList(kotlin.collections.v.u(setH, 10));
        Iterator it5 = setH.iterator();
        while (it5.hasNext()) {
            arrayList5.add(((a.C0328a) it5.next()).b());
        }
        f15019g = CollectionsKt___CollectionsKt.Q0(arrayList5);
        a aVar3 = f15015a;
        JvmPrimitiveType jvmPrimitiveType3 = JvmPrimitiveType.INT;
        String desc9 = jvmPrimitiveType3.getDesc();
        kotlin.jvm.internal.r.d(desc9, "INT.desc");
        a.C0328a c0328aM4 = aVar3.m("java/util/List", "removeAt", desc9, "Ljava/lang/Object;");
        f15020h = c0328aM4;
        SignatureBuildingComponents signatureBuildingComponents2 = SignatureBuildingComponents.f15194a;
        String strH = signatureBuildingComponents2.h("Number");
        String desc10 = JvmPrimitiveType.BYTE.getDesc();
        kotlin.jvm.internal.r.d(desc10, "BYTE.desc");
        String strH2 = signatureBuildingComponents2.h("Number");
        String desc11 = JvmPrimitiveType.SHORT.getDesc();
        kotlin.jvm.internal.r.d(desc11, "SHORT.desc");
        String strH3 = signatureBuildingComponents2.h("Number");
        String desc12 = jvmPrimitiveType3.getDesc();
        kotlin.jvm.internal.r.d(desc12, "INT.desc");
        String strH4 = signatureBuildingComponents2.h("Number");
        String desc13 = JvmPrimitiveType.LONG.getDesc();
        kotlin.jvm.internal.r.d(desc13, "LONG.desc");
        String strH5 = signatureBuildingComponents2.h("Number");
        String desc14 = JvmPrimitiveType.FLOAT.getDesc();
        kotlin.jvm.internal.r.d(desc14, "FLOAT.desc");
        String strH6 = signatureBuildingComponents2.h("Number");
        String desc15 = JvmPrimitiveType.DOUBLE.getDesc();
        kotlin.jvm.internal.r.d(desc15, "DOUBLE.desc");
        String strH7 = signatureBuildingComponents2.h("CharSequence");
        String desc16 = jvmPrimitiveType3.getDesc();
        kotlin.jvm.internal.r.d(desc16, "INT.desc");
        String desc17 = JvmPrimitiveType.CHAR.getDesc();
        kotlin.jvm.internal.r.d(desc17, "CHAR.desc");
        Map<a.C0328a, kotlin.reflect.jvm.internal.impl.name.f> mapK2 = o0.k(kotlin.l.a(aVar3.m(strH, "toByte", "", desc10), kotlin.reflect.jvm.internal.impl.name.f.g("byteValue")), kotlin.l.a(aVar3.m(strH2, "toShort", "", desc11), kotlin.reflect.jvm.internal.impl.name.f.g("shortValue")), kotlin.l.a(aVar3.m(strH3, "toInt", "", desc12), kotlin.reflect.jvm.internal.impl.name.f.g("intValue")), kotlin.l.a(aVar3.m(strH4, "toLong", "", desc13), kotlin.reflect.jvm.internal.impl.name.f.g("longValue")), kotlin.l.a(aVar3.m(strH5, "toFloat", "", desc14), kotlin.reflect.jvm.internal.impl.name.f.g("floatValue")), kotlin.l.a(aVar3.m(strH6, "toDouble", "", desc15), kotlin.reflect.jvm.internal.impl.name.f.g("doubleValue")), kotlin.l.a(c0328aM4, kotlin.reflect.jvm.internal.impl.name.f.g("remove")), kotlin.l.a(aVar3.m(strH7, "get", desc16, desc17), kotlin.reflect.jvm.internal.impl.name.f.g("charAt")));
        i = mapK2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(n0.d(mapK2.size()));
        Iterator<T> it6 = mapK2.entrySet().iterator();
        while (it6.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it6.next();
            linkedHashMap2.put(((a.C0328a) entry2.getKey()).b(), entry2.getValue());
        }
        j = linkedHashMap2;
        Set<a.C0328a> setKeySet = i.keySet();
        ArrayList arrayList6 = new ArrayList(kotlin.collections.v.u(setKeySet, 10));
        Iterator<T> it7 = setKeySet.iterator();
        while (it7.hasNext()) {
            arrayList6.add(((a.C0328a) it7.next()).a());
        }
        k = arrayList6;
        Set<Map.Entry<a.C0328a, kotlin.reflect.jvm.internal.impl.name.f>> setEntrySet = i.entrySet();
        ArrayList<Pair> arrayList7 = new ArrayList(kotlin.collections.v.u(setEntrySet, 10));
        Iterator<T> it8 = setEntrySet.iterator();
        while (it8.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it8.next();
            arrayList7.add(new Pair(((a.C0328a) entry3.getKey()).a(), entry3.getValue()));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Pair pair : arrayList7) {
            kotlin.reflect.jvm.internal.impl.name.f fVar = (kotlin.reflect.jvm.internal.impl.name.f) pair.getSecond();
            Object arrayList8 = linkedHashMap3.get(fVar);
            if (arrayList8 == null) {
                arrayList8 = new ArrayList();
                linkedHashMap3.put(fVar, arrayList8);
            }
            ((List) arrayList8).add((kotlin.reflect.jvm.internal.impl.name.f) pair.getFirst());
        }
        l = linkedHashMap3;
    }
}
