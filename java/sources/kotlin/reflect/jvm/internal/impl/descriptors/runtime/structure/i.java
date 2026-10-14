package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.h {
    private final Class<?> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(kotlin.reflect.jvm.internal.impl.name.f fVar, Class<?> klass) {
        super(fVar, null);
        kotlin.jvm.internal.r.e(klass, "klass");
        this.c = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.h
    public kotlin.reflect.jvm.internal.impl.load.java.structure.x b() {
        return u.f14994a.a(this.c);
    }
}
