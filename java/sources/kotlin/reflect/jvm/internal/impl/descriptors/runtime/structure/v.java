package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;

/* JADX INFO: loaded from: classes6.dex */
public final class v extends l implements e, y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TypeVariable<?> f14995a;

    public v(TypeVariable<?> typeVariable) {
        kotlin.jvm.internal.r.e(typeVariable, "typeVariable");
        this.f14995a = typeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return e.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public b d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return e.a.a(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return e.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.y
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public List<j> getUpperBounds() {
        Type[] bounds = this.f14995a.getBounds();
        kotlin.jvm.internal.r.d(bounds, "typeVariable.bounds");
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new j(type));
        }
        j jVar = (j) kotlin.collections.s.E0(arrayList);
        return kotlin.jvm.internal.r.a(jVar == null ? null : jVar.P(), Object.class) ? kotlin.collections.u.j() : arrayList;
    }

    public boolean equals(Object obj) {
        return (obj instanceof v) && kotlin.jvm.internal.r.a(this.f14995a, ((v) obj).f14995a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.e
    public AnnotatedElement getElement() {
        TypeVariable<?> typeVariable = this.f14995a;
        if (typeVariable instanceof AnnotatedElement) {
            return (AnnotatedElement) typeVariable;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.t
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(this.f14995a.getName());
        kotlin.jvm.internal.r.d(fVarG, "identifier(typeVariable.name)");
        return fVarG;
    }

    public int hashCode() {
        return this.f14995a.hashCode();
    }

    public String toString() {
        return v.class.getName() + ": " + this.f14995a;
    }
}
