package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class GivenFunctionsMemberScope extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15516d = {v.i(new PropertyReference1Impl(v.b(GivenFunctionsMemberScope.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    private final kotlin.reflect.jvm.internal.impl.descriptors.d b;
    private final kotlin.reflect.jvm.internal.impl.storage.h c;

    public static final class a extends kotlin.reflect.jvm.internal.impl.resolve.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList<k> f15517a;
        final /* synthetic */ GivenFunctionsMemberScope b;

        a(ArrayList<k> arrayList, GivenFunctionsMemberScope givenFunctionsMemberScope) {
            this.f15517a = arrayList;
            this.b = givenFunctionsMemberScope;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.g
        public void a(CallableMemberDescriptor fakeOverride) {
            r.e(fakeOverride, "fakeOverride");
            OverridingUtil.L(fakeOverride, null);
            this.f15517a.add(fakeOverride);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.f
        protected void e(CallableMemberDescriptor fromSuper, CallableMemberDescriptor fromCurrent) {
            r.e(fromSuper, "fromSuper");
            r.e(fromCurrent, "fromCurrent");
            throw new IllegalStateException(("Conflict in scope of " + this.b.l() + ": " + fromSuper + " vs " + fromCurrent).toString());
        }
    }

    public GivenFunctionsMemberScope(m storageManager, kotlin.reflect.jvm.internal.impl.descriptors.d containingClass) {
        r.e(storageManager, "storageManager");
        r.e(containingClass, "containingClass");
        this.b = containingClass;
        this.c = storageManager.c(new Function0<List<? extends k>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope$allDescriptors$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends k> invoke() {
                List<u> listI = this.this$0.i();
                return CollectionsKt___CollectionsKt.x0(listI, this.this$0.j(listI));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<k> j(List<? extends u> list) {
        Collection<? extends CallableMemberDescriptor> collectionJ;
        ArrayList arrayList = new ArrayList(3);
        Collection<a0> collectionA = this.b.i().a();
        r.d(collectionA, "containingClass.typeConstructor.supertypes");
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = collectionA.iterator();
        while (it.hasNext()) {
            z.B(arrayList2, h.a.a(((a0) it.next()).m(), null, null, 3, null));
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (obj instanceof CallableMemberDescriptor) {
                arrayList3.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList3) {
            kotlin.reflect.jvm.internal.impl.name.f name = ((CallableMemberDescriptor) obj2).getName();
            Object arrayList4 = linkedHashMap.get(name);
            if (arrayList4 == null) {
                arrayList4 = new ArrayList();
                linkedHashMap.put(name, arrayList4);
            }
            ((List) arrayList4).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            kotlin.reflect.jvm.internal.impl.name.f fVar = (kotlin.reflect.jvm.internal.impl.name.f) entry.getKey();
            List list2 = (List) entry.getValue();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : list2) {
                Boolean boolValueOf = Boolean.valueOf(((CallableMemberDescriptor) obj3) instanceof u);
                Object arrayList5 = linkedHashMap2.get(boolValueOf);
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                    linkedHashMap2.put(boolValueOf, arrayList5);
                }
                ((List) arrayList5).add(obj3);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                List list3 = (List) entry2.getValue();
                OverridingUtil overridingUtil = OverridingUtil.f15481d;
                if (zBooleanValue) {
                    collectionJ = new ArrayList<>();
                    for (Object obj4 : list) {
                        if (r.a(((u) obj4).getName(), fVar)) {
                            collectionJ.add(obj4);
                        }
                    }
                } else {
                    collectionJ = kotlin.collections.u.j();
                }
                overridingUtil.w(fVar, list3, collectionJ, this.b, new a(arrayList, this));
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.c(arrayList);
    }

    private final List<k> k() {
        return (List) l.a(this.c, this, f15516d[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        List<k> listK = k();
        kotlin.reflect.jvm.internal.impl.utils.d dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
        for (Object obj : listK) {
            if ((obj instanceof n0) && r.a(((n0) obj).getName(), name)) {
                dVar.add(obj);
            }
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        List<k> listK = k();
        kotlin.reflect.jvm.internal.impl.utils.d dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
        for (Object obj : listK) {
            if ((obj instanceof j0) && r.a(((j0) obj).getName(), name)) {
                dVar.add(obj);
            }
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        return !kindFilter.a(d.p.m()) ? kotlin.collections.u.j() : k();
    }

    protected abstract List<u> i();

    protected final kotlin.reflect.jvm.internal.impl.descriptors.d l() {
        return this.b;
    }
}
