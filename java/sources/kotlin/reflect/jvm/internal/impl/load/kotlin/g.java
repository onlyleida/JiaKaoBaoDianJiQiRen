package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.p0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d {
    private final kotlin.reflect.jvm.internal.impl.resolve.jvm.d b;
    private final kotlin.reflect.jvm.internal.impl.resolve.jvm.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f15211d;

    public g(kotlin.reflect.jvm.internal.impl.resolve.jvm.d className, kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVar, ProtoBuf$Package packageProto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.serialization.deserialization.n<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> nVar, boolean z, DeserializedContainerAbiStability abiStability, m mVar) {
        kotlin.jvm.internal.r.e(className, "className");
        kotlin.jvm.internal.r.e(packageProto, "packageProto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(abiStability, "abiStability");
        this.b = className;
        this.c = dVar;
        this.f15211d = mVar;
        GeneratedMessageLite.e<ProtoBuf$Package, Integer> packageModuleName = JvmProtoBuf.m;
        kotlin.jvm.internal.r.d(packageModuleName, "packageModuleName");
        Integer num = (Integer) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(packageProto, packageModuleName);
        if (num == null) {
            return;
        }
        nameResolver.getString(num.intValue());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d
    public String a() {
        return "Class '" + d().b().b() + '\'';
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
    public p0 b() {
        p0 NO_SOURCE_FILE = p0.f14972a;
        kotlin.jvm.internal.r.d(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public final kotlin.reflect.jvm.internal.impl.name.b d() {
        return new kotlin.reflect.jvm.internal.impl.name.b(this.b.g(), g());
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.jvm.d e() {
        return this.c;
    }

    public final m f() {
        return this.f15211d;
    }

    public final kotlin.reflect.jvm.internal.impl.name.f g() {
        String strF = this.b.f();
        kotlin.jvm.internal.r.d(strF, "className.internalName");
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(StringsKt__StringsKt.C0(strF, '/', null, 2, null));
        kotlin.jvm.internal.r.d(fVarG, "identifier(className.int….substringAfterLast('/'))");
        return fVarG;
    }

    public String toString() {
        return ((Object) g.class.getSimpleName()) + ": " + this.b;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public g(m kotlinClass, ProtoBuf$Package packageProto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.serialization.deserialization.n<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> nVar, boolean z, DeserializedContainerAbiStability abiStability) {
        kotlin.jvm.internal.r.e(kotlinClass, "kotlinClass");
        kotlin.jvm.internal.r.e(packageProto, "packageProto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(abiStability, "abiStability");
        kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVarB = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.b(kotlinClass.g());
        kotlin.jvm.internal.r.d(dVarB, "byClassId(kotlinClass.classId)");
        String strE = kotlinClass.b().e();
        kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVarD = null;
        if (strE != null) {
            if (strE.length() > 0) {
                dVarD = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.d(strE);
            }
        }
        this(dVarB, dVarD, packageProto, nameResolver, nVar, z, abiStability, kotlinClass);
    }
}
