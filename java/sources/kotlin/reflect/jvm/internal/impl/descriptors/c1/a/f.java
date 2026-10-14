package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements kotlin.reflect.jvm.internal.impl.load.kotlin.m {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f14880a;
    private final KotlinClassHeader b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final f a(Class<?> klass) {
            r.e(klass, "klass");
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.a aVar = new kotlin.reflect.jvm.internal.impl.load.kotlin.header.a();
            c.f14878a.b(klass, aVar);
            KotlinClassHeader kotlinClassHeaderK = aVar.k();
            o oVar = null;
            if (kotlinClassHeaderK == null) {
                return null;
            }
            return new f(klass, kotlinClassHeaderK, oVar);
        }
    }

    private f(Class<?> cls, KotlinClassHeader kotlinClassHeader) {
        this.f14880a = cls;
        this.b = kotlinClassHeader;
    }

    public /* synthetic */ f(Class cls, KotlinClassHeader kotlinClassHeader, o oVar) {
        this(cls, kotlinClassHeader);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public void a(kotlin.reflect.jvm.internal.impl.load.kotlin.m.d visitor, byte[] bArr) {
        r.e(visitor, "visitor");
        c.f14878a.i(this.f14880a, visitor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public KotlinClassHeader b() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public void c(kotlin.reflect.jvm.internal.impl.load.kotlin.m.c visitor, byte[] bArr) {
        r.e(visitor, "visitor");
        c.f14878a.b(this.f14880a, visitor);
    }

    public final Class<?> d() {
        return this.f14880a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof f) && r.a(this.f14880a, ((f) obj).f14880a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public kotlin.reflect.jvm.internal.impl.name.b g() {
        return ReflectClassUtilKt.a(this.f14880a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public String getLocation() {
        String name = this.f14880a.getName();
        r.d(name, "klass.name");
        return r.m(t.w(name, '.', '/', false, 4, null), ".class");
    }

    public int hashCode() {
        return this.f14880a.hashCode();
    }

    public String toString() {
        return f.class.getName() + ": " + this.f14880a;
    }
}
