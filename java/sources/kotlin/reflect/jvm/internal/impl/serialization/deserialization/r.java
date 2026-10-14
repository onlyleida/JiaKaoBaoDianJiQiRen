package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;

/* JADX INFO: loaded from: classes6.dex */
public final class r implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c f15606a;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.a b;
    private final Function1<kotlin.reflect.jvm.internal.impl.name.b, o0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<kotlin.reflect.jvm.internal.impl.name.b, ProtoBuf$Class> f15607d;

    /* JADX WARN: Multi-variable type inference failed */
    public r(ProtoBuf$PackageFragment proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, Function1<? super kotlin.reflect.jvm.internal.impl.name.b, ? extends o0> classSource) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.r.e(classSource, "classSource");
        this.f15606a = nameResolver;
        this.b = metadataVersion;
        this.c = classSource;
        List<ProtoBuf$Class> class_List = proto.getClass_List();
        kotlin.jvm.internal.r.d(class_List, "proto.class_List");
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(kotlin.collections.v.u(class_List, 10)), 16));
        for (Object obj : class_List) {
            linkedHashMap.put(q.a(this.f15606a, ((ProtoBuf$Class) obj).getFqName()), obj);
        }
        this.f15607d = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.e
    public d a(kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(classId, "classId");
        ProtoBuf$Class protoBuf$Class = this.f15607d.get(classId);
        if (protoBuf$Class == null) {
            return null;
        }
        return new d(this.f15606a, protoBuf$Class, this.b, this.c.invoke(classId));
    }

    public final Collection<kotlin.reflect.jvm.internal.impl.name.b> b() {
        return this.f15607d.keySet();
    }
}
