package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u0;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;

/* JADX INFO: loaded from: classes6.dex */
public class e extends DeserializedMemberScope {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f15581g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f15582h;
    private final kotlin.reflect.jvm.internal.impl.name.c i;

    public e(b0 packageDescriptor, ProtoBuf$Package proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, d dVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.g components, String debugName, Function0<? extends Collection<kotlin.reflect.jvm.internal.impl.name.f>> classNames) {
        r.e(packageDescriptor, "packageDescriptor");
        r.e(proto, "proto");
        r.e(nameResolver, "nameResolver");
        r.e(metadataVersion, "metadataVersion");
        r.e(components, "components");
        r.e(debugName, "debugName");
        r.e(classNames, "classNames");
        ProtoBuf$TypeTable typeTable = proto.getTypeTable();
        r.d(typeTable, "proto.typeTable");
        kotlin.reflect.jvm.internal.impl.metadata.c.g gVar = new kotlin.reflect.jvm.internal.impl.metadata.c.g(typeTable);
        kotlin.reflect.jvm.internal.impl.metadata.c.i.a aVar = kotlin.reflect.jvm.internal.impl.metadata.c.i.b;
        ProtoBuf$VersionRequirementTable versionRequirementTable = proto.getVersionRequirementTable();
        r.d(versionRequirementTable, "proto.versionRequirementTable");
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.i iVarA = components.a(packageDescriptor, nameResolver, gVar, aVar.a(versionRequirementTable), metadataVersion, dVar);
        List<ProtoBuf$Function> functionList = proto.getFunctionList();
        r.d(functionList, "proto.functionList");
        List<ProtoBuf$Property> propertyList = proto.getPropertyList();
        r.d(propertyList, "proto.propertyList");
        List<ProtoBuf$TypeAlias> typeAliasList = proto.getTypeAliasList();
        r.d(typeAliasList, "proto.typeAliasList");
        super(iVarA, functionList, propertyList, typeAliasList, classNames);
        this.f15581g = packageDescriptor;
        this.f15582h = debugName;
        this.i = packageDescriptor.e();
    }

    public void A(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        kotlin.reflect.jvm.internal.s.b.a.b(q().c().o(), location, this.f15581g, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        A(name, location);
        return super.f(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected void j(Collection<k> result, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(result, "result");
        r.e(nameFilter, "nameFilter");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected kotlin.reflect.jvm.internal.impl.name.b n(kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(name, "name");
        return new kotlin.reflect.jvm.internal.impl.name.b(this.i, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> t() {
        return u0.b();
    }

    public String toString() {
        return this.f15582h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> u() {
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> v() {
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    protected boolean x(kotlin.reflect.jvm.internal.impl.name.f name) {
        boolean z;
        r.e(name, "name");
        if (super.x(name)) {
            return true;
        }
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> iterableK = q().c().k();
        if ((iterableK instanceof Collection) && ((Collection) iterableK).isEmpty()) {
            z = false;
        } else {
            Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> it = iterableK.iterator();
            while (it.hasNext()) {
                if (it.next().b(this.i, name)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public List<k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        Collection<k> collectionK = k(kindFilter, nameFilter, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> iterableK = q().c().k();
        ArrayList arrayList = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> it = iterableK.iterator();
        while (it.hasNext()) {
            z.B(arrayList, it.next().a(this.i));
        }
        return CollectionsKt___CollectionsKt.x0(collectionK, arrayList);
    }
}
