package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.b0;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends l implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f14996a;
    private final Annotation[] b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14997d;

    public w(u type, Annotation[] reflectAnnotations, String str, boolean z) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(reflectAnnotations, "reflectAnnotations");
        this.f14996a = type;
        this.b = reflectAnnotations;
        this.c = str;
        this.f14997d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public b d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return f.a(this.b, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return f.b(this.b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.b0
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public u getType() {
        return this.f14996a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.b0
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        String str = this.c;
        if (str == null) {
            return null;
        }
        return kotlin.reflect.jvm.internal.impl.name.f.e(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.b0
    public boolean h() {
        return this.f14997d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(w.class.getName());
        sb.append(": ");
        sb.append(h() ? "vararg " : "");
        sb.append(getName());
        sb.append(": ");
        sb.append(getType());
        return sb.toString();
    }
}
