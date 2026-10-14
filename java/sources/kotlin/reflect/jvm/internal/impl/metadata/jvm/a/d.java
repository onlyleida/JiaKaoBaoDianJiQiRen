package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {

    public static final class a extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15371a;
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String name, String desc) {
            super(null);
            r.e(name, "name");
            r.e(desc, "desc");
            this.f15371a = name;
            this.b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String a() {
            return c() + ':' + b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String b() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String c() {
            return this.f15371a;
        }

        public final String d() {
            return c();
        }

        public final String e() {
            return b();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return r.a(c(), aVar.c()) && r.a(b(), aVar.b());
        }

        public int hashCode() {
            return (c().hashCode() * 31) + b().hashCode();
        }
    }

    public static final class b extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15372a;
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String name, String desc) {
            super(null);
            r.e(name, "name");
            r.e(desc, "desc");
            this.f15372a = name;
            this.b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String a() {
            return r.m(c(), b());
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String b() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d
        public String c() {
            return this.f15372a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return r.a(c(), bVar.c()) && r.a(b(), bVar.b());
        }

        public int hashCode() {
            return (c().hashCode() * 31) + b().hashCode();
        }
    }

    private d() {
    }

    public /* synthetic */ d(o oVar) {
        this();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public final String toString() {
        return a();
    }
}
