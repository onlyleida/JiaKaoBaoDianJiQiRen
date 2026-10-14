package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f14875a;
    private final boolean b;
    private final Function1<kotlin.reflect.jvm.internal.impl.name.c, Boolean> c;

    /* JADX WARN: Multi-variable type inference failed */
    public h(e delegate, boolean z, Function1<? super kotlin.reflect.jvm.internal.impl.name.c, Boolean> fqNameFilter) {
        r.e(delegate, "delegate");
        r.e(fqNameFilter, "fqNameFilter");
        this.f14875a = delegate;
        this.b = z;
        this.c = fqNameFilter;
    }

    private final boolean a(c cVar) {
        kotlin.reflect.jvm.internal.impl.name.c cVarE = cVar.e();
        return cVarE != null && this.c.invoke(cVarE).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public c d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        if (this.c.invoke(fqName).booleanValue()) {
            return this.f14875a.d(fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        if (this.c.invoke(fqName).booleanValue()) {
            return this.f14875a.h(fqName);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        boolean z;
        e eVar = this.f14875a;
        if (!(eVar instanceof Collection) || !((Collection) eVar).isEmpty()) {
            Iterator<c> it = eVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (a(it.next())) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (this.b) {
            return !z;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public Iterator<c> iterator() {
        e eVar = this.f14875a;
        ArrayList arrayList = new ArrayList();
        for (c cVar : eVar) {
            if (a(cVar)) {
                arrayList.add(cVar);
            }
        }
        return arrayList.iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(e delegate, Function1<? super kotlin.reflect.jvm.internal.impl.name.c, Boolean> fqNameFilter) {
        this(delegate, false, fqNameFilter);
        r.e(delegate, "delegate");
        r.e(fqNameFilter, "fqNameFilter");
    }
}
