package kotlin.reflect.jvm.internal.impl.resolve.scopes.i;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public class c implements d, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f15534a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d b;

    public c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, c cVar) {
        r.e(classDescriptor, "classDescriptor");
        this.f15534a = classDescriptor;
        this.b = classDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f0 getType() {
        f0 f0VarN = this.f15534a.n();
        r.d(f0VarN, "classDescriptor.defaultType");
        return f0VarN;
    }

    public boolean equals(Object obj) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f15534a;
        c cVar = obj instanceof c ? (c) obj : null;
        return r.a(dVar, cVar != null ? cVar.f15534a : null);
    }

    public int hashCode() {
        return this.f15534a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.i.f
    public final kotlin.reflect.jvm.internal.impl.descriptors.d r() {
        return this.f15534a;
    }

    public String toString() {
        return "Class{" + getType() + '}';
    }
}
