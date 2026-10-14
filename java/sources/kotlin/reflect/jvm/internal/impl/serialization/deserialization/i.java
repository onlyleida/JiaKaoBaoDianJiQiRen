package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f15593a;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c b;
    private final kotlin.reflect.jvm.internal.impl.descriptors.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g f15594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.i f15595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.a f15596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d f15597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TypeDeserializer f15598h;
    private final MemberDeserializer i;

    public i(g components, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> typeParameters) {
        String strA;
        kotlin.jvm.internal.r.e(components, "components");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.r.e(typeTable, "typeTable");
        kotlin.jvm.internal.r.e(versionRequirementTable, "versionRequirementTable");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.r.e(typeParameters, "typeParameters");
        this.f15593a = components;
        this.b = nameResolver;
        this.c = containingDeclaration;
        this.f15594d = typeTable;
        this.f15595e = versionRequirementTable;
        this.f15596f = metadataVersion;
        this.f15597g = dVar;
        this.f15598h = new TypeDeserializer(this, typeDeserializer, typeParameters, "Deserializer for \"" + containingDeclaration.getName() + '\"', (dVar == null || (strA = dVar.a()) == null) ? "[container not found]" : strA, false, 32, null);
        this.i = new MemberDeserializer(this);
    }

    public static /* synthetic */ i b(i iVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, List list, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, kotlin.reflect.jvm.internal.impl.metadata.c.i iVar2, kotlin.reflect.jvm.internal.impl.metadata.c.a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            cVar = iVar.b;
        }
        kotlin.reflect.jvm.internal.impl.metadata.c.c cVar2 = cVar;
        if ((i & 8) != 0) {
            gVar = iVar.f15594d;
        }
        kotlin.reflect.jvm.internal.impl.metadata.c.g gVar2 = gVar;
        if ((i & 16) != 0) {
            iVar2 = iVar.f15595e;
        }
        kotlin.reflect.jvm.internal.impl.metadata.c.i iVar3 = iVar2;
        if ((i & 32) != 0) {
            aVar = iVar.f15596f;
        }
        return iVar.a(kVar, list, cVar2, gVar2, iVar3, aVar);
    }

    public final i a(kotlin.reflect.jvm.internal.impl.descriptors.k descriptor, List<ProtoBuf$TypeParameter> typeParameterProtos, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.i iVar, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion) {
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(typeParameterProtos, "typeParameterProtos");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(typeTable, "typeTable");
        kotlin.reflect.jvm.internal.impl.metadata.c.i versionRequirementTable = iVar;
        kotlin.jvm.internal.r.e(versionRequirementTable, "versionRequirementTable");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        g gVar = this.f15593a;
        if (!kotlin.reflect.jvm.internal.impl.metadata.c.j.b(metadataVersion)) {
            versionRequirementTable = this.f15595e;
        }
        return new i(gVar, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, this.f15597g, this.f15598h, typeParameterProtos);
    }

    public final g c() {
        return this.f15593a;
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d d() {
        return this.f15597g;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.k e() {
        return this.c;
    }

    public final MemberDeserializer f() {
        return this.i;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.c g() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.storage.m h() {
        return this.f15593a.u();
    }

    public final TypeDeserializer i() {
        return this.f15598h;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.g j() {
        return this.f15594d;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.i k() {
        return this.f15595e;
    }
}
