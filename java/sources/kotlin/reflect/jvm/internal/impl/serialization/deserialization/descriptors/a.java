package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public class a implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.e {
    static final /* synthetic */ KProperty<Object>[] b = {v.i(new PropertyReference1Impl(v.b(a.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f15580a;

    public a(m storageManager, Function0<? extends List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>> compute) {
        r.e(storageManager, "storageManager");
        r.e(compute, "compute");
        this.f15580a = storageManager.c(compute);
    }

    private final List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> a() {
        return (List) l.a(this.f15580a, this, b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.c d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.b.a(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.b.b(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        return a().isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> iterator() {
        return a().iterator();
    }
}
