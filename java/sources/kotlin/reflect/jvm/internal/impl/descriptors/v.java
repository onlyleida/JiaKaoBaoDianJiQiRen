package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.types.model.h;

/* JADX INFO: loaded from: classes6.dex */
public final class v<Type extends kotlin.reflect.jvm.internal.impl.types.model.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.f f14999a;
    private final Type b;

    public v(kotlin.reflect.jvm.internal.impl.name.f underlyingPropertyName, Type underlyingType) {
        kotlin.jvm.internal.r.e(underlyingPropertyName, "underlyingPropertyName");
        kotlin.jvm.internal.r.e(underlyingType, "underlyingType");
        this.f14999a = underlyingPropertyName;
        this.b = underlyingType;
    }

    public final kotlin.reflect.jvm.internal.impl.name.f a() {
        return this.f14999a;
    }

    public final Type b() {
        return this.b;
    }
}
