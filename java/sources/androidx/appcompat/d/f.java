package androidx.appcompat.d;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f190a;
    final b b;

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f191a;
        final Context b;
        final ArrayList<f> c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final androidx.collection.g<Menu, Menu> f192d = new androidx.collection.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.f191a = callback;
        }

        private Menu f(Menu menu) {
            Menu menu2 = this.f192d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            o oVar = new o(this.b, (androidx.core.b.a.a) menu);
            this.f192d.put(menu, oVar);
            return oVar;
        }

        @Override // androidx.appcompat.d.b.a
        public void a(b bVar) {
            this.f191a.onDestroyActionMode(e(bVar));
        }

        @Override // androidx.appcompat.d.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f191a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override // androidx.appcompat.d.b.a
        public boolean c(b bVar, MenuItem menuItem) {
            return this.f191a.onActionItemClicked(e(bVar), new j(this.b, (androidx.core.b.a.b) menuItem));
        }

        @Override // androidx.appcompat.d.b.a
        public boolean d(b bVar, Menu menu) {
            return this.f191a.onPrepareActionMode(e(bVar), f(menu));
        }

        public ActionMode e(b bVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.c.get(i);
                if (fVar != null && fVar.b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.b, bVar);
            this.c.add(fVar2);
            return fVar2;
        }
    }

    public f(Context context, b bVar) {
        this.f190a = context;
        this.b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.b.a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.b.b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new o(this.f190a, (androidx.core.b.a.a) this.b.c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.b.d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.b.e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.b.h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.b.n(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.b.p(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.b.q(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.l(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.o(i);
    }
}
