package kotlin.reflect.jvm.internal.impl.load.kotlin;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f15209a;
    private final DeserializedDescriptorResolver b;

    public d(k kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        kotlin.jvm.internal.r.e(kotlinClassFinder, "kotlinClassFinder");
        kotlin.jvm.internal.r.e(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.f15209a = kotlinClassFinder;
        this.b = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.e
    public kotlin.reflect.jvm.internal.impl.serialization.deserialization.d a(kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(classId, "classId");
        m mVarB = l.b(this.f15209a, classId);
        if (mVarB == null) {
            return null;
        }
        kotlin.jvm.internal.r.a(mVarB.g(), classId);
        return this.b.j(mVarB);
    }
}
