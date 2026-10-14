package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.t;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.j;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends kotlin.reflect.jvm.internal.impl.descriptors.impl.b {
    private final e k;
    private final y l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e c, y javaTypeParameter, int i, k containingDeclaration) {
        super(c.e(), containingDeclaration, new LazyJavaAnnotations(c, javaTypeParameter, false, 4, null), javaTypeParameter.getName(), Variance.INVARIANT, false, i, o0.f14970a, c.a().v());
        r.e(c, "c");
        r.e(javaTypeParameter, "javaTypeParameter");
        r.e(containingDeclaration, "containingDeclaration");
        this.k = c;
        this.l = javaTypeParameter;
    }

    private final List<a0> I0() {
        Collection<j> upperBounds = this.l.getUpperBounds();
        if (upperBounds.isEmpty()) {
            f0 f0VarI = this.k.d().k().i();
            r.d(f0VarI, "c.module.builtIns.anyType");
            f0 f0VarI2 = this.k.d().k().I();
            r.d(f0VarI2, "c.module.builtIns.nullableAnyType");
            return t.d(KotlinTypeFactory.d(f0VarI, f0VarI2));
        }
        ArrayList arrayList = new ArrayList(v.u(upperBounds, 10));
        Iterator<T> it = upperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(this.k.g().o((j) it.next(), kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, this, 1, null)));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected List<a0> B0(List<? extends a0> bounds) {
        r.e(bounds, "bounds");
        return this.k.a().r().g(this, bounds, this.k);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected void G0(a0 type) {
        r.e(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected List<a0> H0() {
        return I0();
    }
}
