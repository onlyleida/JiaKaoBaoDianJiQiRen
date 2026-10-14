package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

/* JADX INFO: loaded from: classes6.dex */
public final class o extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.o {
    private final Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(kotlin.reflect.jvm.internal.impl.name.f fVar, Object value) {
        super(fVar, null);
        kotlin.jvm.internal.r.e(value, "value");
        this.c = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.o
    public Object getValue() {
        return this.c;
    }
}
