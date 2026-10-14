package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u implements kotlin.reflect.jvm.internal.impl.load.java.structure.x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14994a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final u a(Type type) {
            u hVar;
            kotlin.jvm.internal.r.e(type, "type");
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new t(cls);
                }
            }
            if ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) {
                hVar = new h(type);
            } else {
                hVar = type instanceof WildcardType ? new x((WildcardType) type) : new j(type);
            }
            return hVar;
        }
    }

    protected abstract Type P();

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public kotlin.reflect.jvm.internal.impl.load.java.structure.a d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.load.java.structure.x.a.a(this, cVar);
    }

    public boolean equals(Object obj) {
        return (obj instanceof u) && kotlin.jvm.internal.r.a(P(), ((u) obj).P());
    }

    public int hashCode() {
        return P().hashCode();
    }

    public String toString() {
        return getClass().getName() + ": " + P();
    }
}
