package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.z;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements e {
    private final List<e> b;

    /* JADX WARN: Multi-variable type inference failed */
    public a(List<? extends e> inner) {
        r.e(inner, "inner");
        this.b = inner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.e
    public List<f> a(kotlin.reflect.jvm.internal.impl.descriptors.d thisDescriptor) {
        r.e(thisDescriptor, "thisDescriptor");
        List<e> list = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            z.B(arrayList, ((e) it.next()).a(thisDescriptor));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.e
    public void b(kotlin.reflect.jvm.internal.impl.descriptors.d thisDescriptor, List<kotlin.reflect.jvm.internal.impl.descriptors.c> result) {
        r.e(thisDescriptor, "thisDescriptor");
        r.e(result, "result");
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).b(thisDescriptor, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.e
    public void c(kotlin.reflect.jvm.internal.impl.descriptors.d thisDescriptor, f name, Collection<n0> result) {
        r.e(thisDescriptor, "thisDescriptor");
        r.e(name, "name");
        r.e(result, "result");
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).c(thisDescriptor, name, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.e
    public void d(kotlin.reflect.jvm.internal.impl.descriptors.d thisDescriptor, f name, Collection<n0> result) {
        r.e(thisDescriptor, "thisDescriptor");
        r.e(name, "name");
        r.e(result, "result");
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).d(thisDescriptor, name, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.e
    public List<f> e(kotlin.reflect.jvm.internal.impl.descriptors.d thisDescriptor) {
        r.e(thisDescriptor, "thisDescriptor");
        List<e> list = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            z.B(arrayList, ((e) it.next()).e(thisDescriptor));
        }
        return arrayList;
    }
}
