package me.drakeet.multitype;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class e implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Class<?>> f16135a = new ArrayList();
    private final List<b<?, ?>> b = new ArrayList();
    private final List<c<?>> c = new ArrayList();

    @Override // me.drakeet.multitype.g
    public int a(Class<?> cls) {
        f.a(cls);
        int iIndexOf = this.f16135a.indexOf(cls);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        for (int i = 0; i < this.f16135a.size(); i++) {
            if (this.f16135a.get(i).isAssignableFrom(cls)) {
                return i;
            }
        }
        return -1;
    }

    @Override // me.drakeet.multitype.g
    public boolean b(Class<?> cls) {
        f.a(cls);
        boolean z = false;
        while (true) {
            int iIndexOf = this.f16135a.indexOf(cls);
            if (iIndexOf == -1) {
                return z;
            }
            this.f16135a.remove(iIndexOf);
            this.b.remove(iIndexOf);
            this.c.remove(iIndexOf);
            z = true;
        }
    }

    @Override // me.drakeet.multitype.g
    public b<?, ?> c(int i) {
        return this.b.get(i);
    }

    @Override // me.drakeet.multitype.g
    public c<?> d(int i) {
        return this.c.get(i);
    }

    @Override // me.drakeet.multitype.g
    public <T> void e(Class<? extends T> cls, b<T, ?> bVar, c<T> cVar) {
        f.a(cls);
        f.a(bVar);
        f.a(cVar);
        this.f16135a.add(cls);
        this.b.add(bVar);
        this.c.add(cVar);
    }
}
