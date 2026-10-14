package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: classes.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f235a;
    private androidx.collection.g<androidx.core.b.a.b, MenuItem> b;
    private androidx.collection.g<androidx.core.b.a.c, SubMenu> c;

    c(Context context) {
        this.f235a = context;
    }

    final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof androidx.core.b.a.b)) {
            return menuItem;
        }
        androidx.core.b.a.b bVar = (androidx.core.b.a.b) menuItem;
        if (this.b == null) {
            this.b = new androidx.collection.g<>();
        }
        MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.f235a, bVar);
        this.b.put(bVar, jVar);
        return jVar;
    }

    final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof androidx.core.b.a.c)) {
            return subMenu;
        }
        androidx.core.b.a.c cVar = (androidx.core.b.a.c) subMenu;
        if (this.c == null) {
            this.c = new androidx.collection.g<>();
        }
        SubMenu subMenu2 = this.c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.f235a, cVar);
        this.c.put(cVar, sVar);
        return sVar;
    }

    final void e() {
        androidx.collection.g<androidx.core.b.a.b, MenuItem> gVar = this.b;
        if (gVar != null) {
            gVar.clear();
        }
        androidx.collection.g<androidx.core.b.a.c, SubMenu> gVar2 = this.c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    final void f(int i) {
        if (this.b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.b.size()) {
            if (this.b.keyAt(i2).getGroupId() == i) {
                this.b.removeAt(i2);
                i2--;
            }
            i2++;
        }
    }

    final void g(int i) {
        if (this.b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (this.b.keyAt(i2).getItemId() == i) {
                this.b.removeAt(i2);
                return;
            }
        }
    }
}
