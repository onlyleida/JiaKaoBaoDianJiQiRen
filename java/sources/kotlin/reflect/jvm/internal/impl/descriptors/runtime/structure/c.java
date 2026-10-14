package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c implements kotlin.reflect.jvm.internal.impl.load.java.structure.b {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.f f14986a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final c a(Object value, kotlin.reflect.jvm.internal.impl.name.f fVar) {
            kotlin.jvm.internal.r.e(value, "value");
            if (ReflectClassUtilKt.g(value.getClass())) {
                return new m(fVar, (Enum) value);
            }
            if (value instanceof Annotation) {
                return new d(fVar, (Annotation) value);
            }
            if (value instanceof Object[]) {
                return new g(fVar, (Object[]) value);
            }
            return value instanceof Class ? new i(fVar, (Class) value) : new o(fVar, value);
        }
    }

    private c(kotlin.reflect.jvm.internal.impl.name.f fVar) {
        this.f14986a = fVar;
    }

    public /* synthetic */ c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.jvm.internal.o oVar) {
        this(fVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.b
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        return this.f14986a;
    }
}
