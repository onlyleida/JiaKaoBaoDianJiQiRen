package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
final class g extends n {
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f0 delegate, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        super(delegate);
        kotlin.jvm.internal.r.e(delegate, "delegate");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        this.c = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public g T0(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        return new g(delegate, getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.c;
    }
}
