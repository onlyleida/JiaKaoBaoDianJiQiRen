package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

/* JADX INFO: loaded from: classes6.dex */
public final class p {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15236a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final p a(String name, String desc) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(desc, "desc");
            return new p(name + '#' + desc, null);
        }

        public final p b(kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d signature) {
            kotlin.jvm.internal.r.e(signature, "signature");
            if (signature instanceof kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.b) {
                return d(signature.c(), signature.b());
            }
            if (signature instanceof kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.a) {
                return a(signature.c(), signature.b());
            }
            throw new NoWhenBranchMatchedException();
        }

        public final p c(kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, JvmProtoBuf.JvmMethodSignature signature) {
            kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
            kotlin.jvm.internal.r.e(signature, "signature");
            return d(nameResolver.getString(signature.getName()), nameResolver.getString(signature.getDesc()));
        }

        public final p d(String name, String desc) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(desc, "desc");
            return new p(kotlin.jvm.internal.r.m(name, desc), null);
        }

        public final p e(p signature, int i) {
            kotlin.jvm.internal.r.e(signature, "signature");
            return new p(signature.a() + '@' + i, null);
        }
    }

    private p(String str) {
        this.f15236a = str;
    }

    public /* synthetic */ p(String str, kotlin.jvm.internal.o oVar) {
        this(str);
    }

    public final String a() {
        return this.f15236a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && kotlin.jvm.internal.r.a(this.f15236a, ((p) obj).f15236a);
    }

    public int hashCode() {
        return this.f15236a.hashCode();
    }

    public String toString() {
        return "MemberSignature(signature=" + this.f15236a + ')';
    }
}
