package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.p;
import kotlin.reflect.jvm.internal.impl.load.java.structure.q;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public class ClassDeclaredMemberIndex implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f15078a;
    private final Function1<q, Boolean> b;
    private final Function1<r, Boolean> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<f, List<r>> f15079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<f, n> f15080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<f, w> f15081f;

    /* JADX WARN: Multi-variable type inference failed */
    public ClassDeclaredMemberIndex(g jClass, Function1<? super q, Boolean> memberFilter) {
        kotlin.jvm.internal.r.e(jClass, "jClass");
        kotlin.jvm.internal.r.e(memberFilter, "memberFilter");
        this.f15078a = jClass;
        this.b = memberFilter;
        Function1<r, Boolean> function1 = new Function1<r, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.ClassDeclaredMemberIndex$methodFilter$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(r m) {
                kotlin.jvm.internal.r.e(m, "m");
                return Boolean.valueOf(((Boolean) this.this$0.b.invoke(m)).booleanValue() && !p.c(m));
            }
        };
        this.c = function1;
        Sequence sequenceO = SequencesKt___SequencesKt.o(CollectionsKt___CollectionsKt.R(jClass.A()), function1);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sequenceO) {
            f name = ((r) obj).getName();
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.f15079d = linkedHashMap;
        Sequence sequenceO2 = SequencesKt___SequencesKt.o(CollectionsKt___CollectionsKt.R(this.f15078a.w()), this.b);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj2 : sequenceO2) {
            linkedHashMap2.put(((n) obj2).getName(), obj2);
        }
        this.f15080e = linkedHashMap2;
        Collection<w> collectionM = this.f15078a.m();
        Function1<q, Boolean> function2 = this.b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : collectionM) {
            if (function2.invoke((q) obj3).booleanValue()) {
                arrayList2.add(obj3);
            }
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(kotlin.ranges.f.b(n0.d(v.u(arrayList2, 10)), 16));
        for (Object obj4 : arrayList2) {
            linkedHashMap3.put(((w) obj4).getName(), obj4);
        }
        this.f15081f = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Set<f> a() {
        Sequence sequenceO = SequencesKt___SequencesKt.o(CollectionsKt___CollectionsKt.R(this.f15078a.A()), this.c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = sequenceO.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((r) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Set<f> b() {
        return this.f15081f.keySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Set<f> c() {
        Sequence sequenceO = SequencesKt___SequencesKt.o(CollectionsKt___CollectionsKt.R(this.f15078a.w()), this.b);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = sequenceO.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((n) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public Collection<r> d(f name) {
        kotlin.jvm.internal.r.e(name, "name");
        List<r> list = this.f15079d.get(name);
        return list == null ? u.j() : list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public w e(f name) {
        kotlin.jvm.internal.r.e(name, "name");
        return this.f15081f.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
    public n f(f name) {
        kotlin.jvm.internal.r.e(name, "name");
        return this.f15080e.get(name);
    }
}
