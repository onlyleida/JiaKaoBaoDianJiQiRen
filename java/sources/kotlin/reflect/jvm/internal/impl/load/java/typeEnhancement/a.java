package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
final class a implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15161a = new a();

    private a() {
    }

    private final Void b() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        b();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.c.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public a0 getType() {
        b();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public o0 o() {
        b();
        throw null;
    }

    public String toString() {
        return "[EnhancedType]";
    }
}
