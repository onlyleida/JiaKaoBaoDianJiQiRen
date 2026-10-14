package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.p0;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d {
    private final m b;

    public o(m binaryClass, kotlin.reflect.jvm.internal.impl.serialization.deserialization.n<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> nVar, boolean z, DeserializedContainerAbiStability abiStability) {
        kotlin.jvm.internal.r.e(binaryClass, "binaryClass");
        kotlin.jvm.internal.r.e(abiStability, "abiStability");
        this.b = binaryClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d
    public String a() {
        return "Class '" + this.b.g().b().b() + '\'';
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
    public p0 b() {
        p0 NO_SOURCE_FILE = p0.f14972a;
        kotlin.jvm.internal.r.d(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public final m d() {
        return this.b;
    }

    public String toString() {
        return ((Object) o.class.getSimpleName()) + ": " + this.b;
    }
}
