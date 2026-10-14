package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f15380a = new g();
    private static final kotlin.reflect.jvm.internal.impl.protobuf.f b;

    static {
        kotlin.reflect.jvm.internal.impl.protobuf.f fVarD = kotlin.reflect.jvm.internal.impl.protobuf.f.d();
        JvmProtoBuf.a(fVarD);
        r.d(fVarD, "newInstance().apply(JvmP…f::registerAllExtensions)");
        b = fVarD;
    }

    private g() {
    }

    public static /* synthetic */ d.a d(g gVar, ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return gVar.c(protoBuf$Property, cVar, gVar2, z);
    }

    public static final boolean f(ProtoBuf$Property proto) {
        r.e(proto, "proto");
        kotlin.reflect.jvm.internal.impl.metadata.c.b.C0343b c0343bA = c.f15370a.a();
        Object extension = proto.getExtension(JvmProtoBuf.f15354e);
        r.d(extension, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean boolD = c0343bA.d(((Number) extension).intValue());
        r.d(boolD, "JvmFlags.IS_MOVED_FROM_I…nsion(JvmProtoBuf.flags))");
        return boolD.booleanValue();
    }

    private final String g(ProtoBuf$Type protoBuf$Type, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar) {
        if (protoBuf$Type.hasClassName()) {
            return b.b(cVar.b(protoBuf$Type.getClassName()));
        }
        return null;
    }

    public static final Pair<f, ProtoBuf$Class> h(byte[] bytes, String[] strings) {
        r.e(bytes, "bytes");
        r.e(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new Pair<>(f15380a.k(byteArrayInputStream, strings), ProtoBuf$Class.parseFrom(byteArrayInputStream, b));
    }

    public static final Pair<f, ProtoBuf$Class> i(String[] data, String[] strings) {
        r.e(data, "data");
        r.e(strings, "strings");
        byte[] bArrE = a.e(data);
        r.d(bArrE, "decodeBytes(data)");
        return h(bArrE, strings);
    }

    public static final Pair<f, ProtoBuf$Function> j(String[] data, String[] strings) {
        r.e(data, "data");
        r.e(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.e(data));
        return new Pair<>(f15380a.k(byteArrayInputStream, strings), ProtoBuf$Function.parseFrom(byteArrayInputStream, b));
    }

    private final f k(InputStream inputStream, String[] strArr) throws IOException {
        JvmProtoBuf.StringTableTypes delimitedFrom = JvmProtoBuf.StringTableTypes.parseDelimitedFrom(inputStream, b);
        r.d(delimitedFrom, "parseDelimitedFrom(this, EXTENSION_REGISTRY)");
        return new f(delimitedFrom, strArr);
    }

    public static final Pair<f, ProtoBuf$Package> l(byte[] bytes, String[] strings) {
        r.e(bytes, "bytes");
        r.e(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new Pair<>(f15380a.k(byteArrayInputStream, strings), ProtoBuf$Package.parseFrom(byteArrayInputStream, b));
    }

    public static final Pair<f, ProtoBuf$Package> m(String[] data, String[] strings) {
        r.e(data, "data");
        r.e(strings, "strings");
        byte[] bArrE = a.e(data);
        r.d(bArrE, "decodeBytes(data)");
        return l(bArrE, strings);
    }

    public final kotlin.reflect.jvm.internal.impl.protobuf.f a() {
        return b;
    }

    public final d.b b(ProtoBuf$Constructor proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable) {
        String strM0;
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        GeneratedMessageLite.e<ProtoBuf$Constructor, JvmProtoBuf.JvmMethodSignature> constructorSignature = JvmProtoBuf.f15352a;
        r.d(constructorSignature, "constructorSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(proto, constructorSignature);
        String string = (jvmMethodSignature == null || !jvmMethodSignature.hasName()) ? "<init>" : nameResolver.getString(jvmMethodSignature.getName());
        if (jvmMethodSignature == null || !jvmMethodSignature.hasDesc()) {
            List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
            r.d(valueParameterList, "proto.valueParameterList");
            ArrayList arrayList = new ArrayList(v.u(valueParameterList, 10));
            for (ProtoBuf$ValueParameter it : valueParameterList) {
                g gVar = f15380a;
                r.d(it, "it");
                String strG = gVar.g(kotlin.reflect.jvm.internal.impl.metadata.c.f.n(it, typeTable), nameResolver);
                if (strG == null) {
                    return null;
                }
                arrayList.add(strG);
            }
            strM0 = CollectionsKt___CollectionsKt.m0(arrayList, "", "(", ")V", 0, null, null, 56, null);
        } else {
            strM0 = nameResolver.getString(jvmMethodSignature.getDesc());
        }
        return new d.b(string, strM0);
    }

    public final d.a c(ProtoBuf$Property proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, boolean z) {
        String strG;
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        GeneratedMessageLite.e<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.f15353d;
        r.d(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(proto, propertySignature);
        if (jvmPropertySignature == null) {
            return null;
        }
        JvmProtoBuf.JvmFieldSignature field = jvmPropertySignature.hasField() ? jvmPropertySignature.getField() : null;
        if (field == null && z) {
            return null;
        }
        int name = (field == null || !field.hasName()) ? proto.getName() : field.getName();
        if (field == null || !field.hasDesc()) {
            strG = g(kotlin.reflect.jvm.internal.impl.metadata.c.f.k(proto, typeTable), nameResolver);
            if (strG == null) {
                return null;
            }
        } else {
            strG = nameResolver.getString(field.getDesc());
        }
        return new d.a(nameResolver.getString(name), strG);
    }

    public final d.b e(ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable) {
        String strM;
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(typeTable, "typeTable");
        GeneratedMessageLite.e<ProtoBuf$Function, JvmProtoBuf.JvmMethodSignature> methodSignature = JvmProtoBuf.b;
        r.d(methodSignature, "methodSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(proto, methodSignature);
        int name = (jvmMethodSignature == null || !jvmMethodSignature.hasName()) ? proto.getName() : jvmMethodSignature.getName();
        if (jvmMethodSignature == null || !jvmMethodSignature.hasDesc()) {
            List listN = u.n(kotlin.reflect.jvm.internal.impl.metadata.c.f.h(proto, typeTable));
            List<ProtoBuf$ValueParameter> valueParameterList = proto.getValueParameterList();
            r.d(valueParameterList, "proto.valueParameterList");
            ArrayList arrayList = new ArrayList(v.u(valueParameterList, 10));
            for (ProtoBuf$ValueParameter it : valueParameterList) {
                r.d(it, "it");
                arrayList.add(kotlin.reflect.jvm.internal.impl.metadata.c.f.n(it, typeTable));
            }
            List listX0 = CollectionsKt___CollectionsKt.x0(listN, arrayList);
            ArrayList arrayList2 = new ArrayList(v.u(listX0, 10));
            Iterator it2 = listX0.iterator();
            while (it2.hasNext()) {
                String strG = f15380a.g((ProtoBuf$Type) it2.next(), nameResolver);
                if (strG == null) {
                    return null;
                }
                arrayList2.add(strG);
            }
            String strG2 = g(kotlin.reflect.jvm.internal.impl.metadata.c.f.j(proto, typeTable), nameResolver);
            if (strG2 == null) {
                return null;
            }
            strM = r.m(CollectionsKt___CollectionsKt.m0(arrayList2, "", "(", ")", 0, null, null, 56, null), strG2);
        } else {
            strM = nameResolver.getString(jvmMethodSignature.getDesc());
        }
        return new d.b(nameResolver.getString(name), strM);
    }
}
