package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c f15553a;
    private final ProtoBuf$Class b;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o0 f15554d;

    public d(kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, o0 sourceElement) {
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(classProto, "classProto");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.r.e(sourceElement, "sourceElement");
        this.f15553a = nameResolver;
        this.b = classProto;
        this.c = metadataVersion;
        this.f15554d = sourceElement;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.c a() {
        return this.f15553a;
    }

    public final ProtoBuf$Class b() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.a c() {
        return this.c;
    }

    public final o0 d() {
        return this.f15554d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return kotlin.jvm.internal.r.a(this.f15553a, dVar.f15553a) && kotlin.jvm.internal.r.a(this.b, dVar.b) && kotlin.jvm.internal.r.a(this.c, dVar.c) && kotlin.jvm.internal.r.a(this.f15554d, dVar.f15554d);
    }

    public int hashCode() {
        return (((((this.f15553a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.f15554d.hashCode();
    }

    public String toString() {
        return "ClassData(nameResolver=" + this.f15553a + ", classProto=" + this.b + ", metadataVersion=" + this.c + ", sourceElement=" + this.f15554d + ')';
    }
}
