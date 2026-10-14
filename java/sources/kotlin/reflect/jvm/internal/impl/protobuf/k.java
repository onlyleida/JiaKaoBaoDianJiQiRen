package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public class k extends AbstractList<String> implements RandomAccess, l {
    public static final l b = new k().k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Object> f15434a;

    public k() {
        this.f15434a = new ArrayList();
    }

    private static d b(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        return obj instanceof String ? d.l((String) obj) : d.i((byte[]) obj);
    }

    private static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof d ? ((d) obj).z() : h.b((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int i, String str) {
        this.f15434a.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public List<?> c() {
        return Collections.unmodifiableList(this.f15434a);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f15434a.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public d e(int i) {
        Object obj = this.f15434a.get(i);
        d dVarB = b(obj);
        if (dVarB != obj) {
            this.f15434a.set(i, dVarB);
        }
        return dVarB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public void g(d dVar) {
        this.f15434a.add(dVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public String get(int i) {
        Object obj = this.f15434a.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            String strZ = dVar.z();
            if (dVar.q()) {
                this.f15434a.set(i, strZ);
            }
            return strZ;
        }
        byte[] bArr = (byte[]) obj;
        String strB = h.b(bArr);
        if (h.a(bArr)) {
            this.f15434a.set(i, strB);
        }
        return strB;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String remove(int i) {
        Object objRemove = this.f15434a.remove(i);
        ((AbstractList) this).modCount++;
        return f(objRemove);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    public l k() {
        return new t(this);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public String set(int i, String str) {
        return f(this.f15434a.set(i, str));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15434a.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        if (collection instanceof l) {
            collection = ((l) collection).c();
        }
        boolean zAddAll = this.f15434a.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public k(l lVar) {
        this.f15434a = new ArrayList(lVar.size());
        addAll(lVar);
    }
}
