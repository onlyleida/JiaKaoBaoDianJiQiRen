package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

/* JADX INFO: loaded from: classes6.dex */
public final class m extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.m {
    private final Enum<?> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(kotlin.reflect.jvm.internal.impl.name.f fVar, Enum<?> value) {
        super(fVar, null);
        kotlin.jvm.internal.r.e(value, "value");
        this.c = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.m
    public kotlin.reflect.jvm.internal.impl.name.b c() {
        Class<?> enumClass = this.c.getClass();
        if (!enumClass.isEnum()) {
            enumClass = enumClass.getEnclosingClass();
        }
        kotlin.jvm.internal.r.d(enumClass, "enumClass");
        return ReflectClassUtilKt.a(enumClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.m
    public kotlin.reflect.jvm.internal.impl.name.f d() {
        return kotlin.reflect.jvm.internal.impl.name.f.g(this.c.name());
    }
}
