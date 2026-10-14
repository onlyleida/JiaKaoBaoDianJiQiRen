package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ArgumentList extends ArrayList<j> implements i {
    public ArgumentList(int i) {
        super(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof j) {
            return contains((j) obj);
        }
        return false;
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof j) {
            return indexOf((j) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof j) {
            return lastIndexOf((j) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof j) {
            return remove((j) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    public /* bridge */ boolean contains(j jVar) {
        return super.contains((Object) jVar);
    }

    public /* bridge */ int indexOf(j jVar) {
        return super.indexOf((Object) jVar);
    }

    public /* bridge */ int lastIndexOf(j jVar) {
        return super.lastIndexOf((Object) jVar);
    }

    public /* bridge */ boolean remove(j jVar) {
        return super.remove((Object) jVar);
    }
}
