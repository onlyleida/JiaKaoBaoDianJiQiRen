package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f14812a = new j();
    private static final Set<kotlin.reflect.jvm.internal.impl.name.f> b;
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.b, kotlin.reflect.jvm.internal.impl.name.b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashMap<kotlin.reflect.jvm.internal.impl.name.b, kotlin.reflect.jvm.internal.impl.name.b> f14813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.f> f14814e;

    static {
        UnsignedType[] unsignedTypeArrValues = UnsignedType.values();
        ArrayList arrayList = new ArrayList(unsignedTypeArrValues.length);
        int i = 0;
        for (UnsignedType unsignedType : unsignedTypeArrValues) {
            arrayList.add(unsignedType.getTypeName());
        }
        b = CollectionsKt___CollectionsKt.Q0(arrayList);
        UnsignedArrayType[] unsignedArrayTypeArrValues = UnsignedArrayType.values();
        ArrayList arrayList2 = new ArrayList(unsignedArrayTypeArrValues.length);
        for (UnsignedArrayType unsignedArrayType : unsignedArrayTypeArrValues) {
            arrayList2.add(unsignedArrayType.getTypeName());
        }
        CollectionsKt___CollectionsKt.Q0(arrayList2);
        c = new HashMap<>();
        f14813d = new HashMap<>();
        o0.j(l.a(UnsignedArrayType.UBYTEARRAY, kotlin.reflect.jvm.internal.impl.name.f.g("ubyteArrayOf")), l.a(UnsignedArrayType.USHORTARRAY, kotlin.reflect.jvm.internal.impl.name.f.g("ushortArrayOf")), l.a(UnsignedArrayType.UINTARRAY, kotlin.reflect.jvm.internal.impl.name.f.g("uintArrayOf")), l.a(UnsignedArrayType.ULONGARRAY, kotlin.reflect.jvm.internal.impl.name.f.g("ulongArrayOf")));
        UnsignedType[] unsignedTypeArrValues2 = UnsignedType.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UnsignedType unsignedType2 : unsignedTypeArrValues2) {
            linkedHashSet.add(unsignedType2.getArrayClassId().j());
        }
        f14814e = linkedHashSet;
        UnsignedType[] unsignedTypeArrValues3 = UnsignedType.values();
        int length = unsignedTypeArrValues3.length;
        while (i < length) {
            UnsignedType unsignedType3 = unsignedTypeArrValues3[i];
            i++;
            c.put(unsignedType3.getArrayClassId(), unsignedType3.getClassId());
            f14813d.put(unsignedType3.getClassId(), unsignedType3.getArrayClassId());
        }
    }

    private j() {
    }

    public static final boolean d(a0 type) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC;
        r.e(type, "type");
        if (y0.w(type) || (fVarC = type.I0().u()) == null) {
            return false;
        }
        return f14812a.c(fVarC);
    }

    public final kotlin.reflect.jvm.internal.impl.name.b a(kotlin.reflect.jvm.internal.impl.name.b arrayClassId) {
        r.e(arrayClassId, "arrayClassId");
        return c.get(arrayClassId);
    }

    public final boolean b(kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(name, "name");
        return f14814e.contains(name);
    }

    public final boolean c(k descriptor) {
        r.e(descriptor, "descriptor");
        k kVarB = descriptor.b();
        return (kVarB instanceof b0) && r.a(((b0) kVarB).e(), h.l) && b.contains(descriptor.getName());
    }
}
