package cn.mucang.android.ui.widget.pulltorefresh;

import android.graphics.drawable.Drawable;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet<e> f9060a = new HashSet<>();

    f() {
    }

    public void a(e eVar) {
        if (eVar != null) {
            this.f9060a.add(eVar);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setLastUpdatedLabel(CharSequence charSequence) {
        Iterator<e> it = this.f9060a.iterator();
        while (it.hasNext()) {
            it.next().setLastUpdatedLabel(charSequence);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setLoadingDrawable(Drawable drawable) {
        Iterator<e> it = this.f9060a.iterator();
        while (it.hasNext()) {
            it.next().setLoadingDrawable(drawable);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setPullLabel(CharSequence charSequence) {
        Iterator<e> it = this.f9060a.iterator();
        while (it.hasNext()) {
            it.next().setPullLabel(charSequence);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setRefreshingLabel(CharSequence charSequence) {
        Iterator<e> it = this.f9060a.iterator();
        while (it.hasNext()) {
            it.next().setRefreshingLabel(charSequence);
        }
    }

    @Override // cn.mucang.android.ui.widget.pulltorefresh.c
    public void setReleaseLabel(CharSequence charSequence) {
        Iterator<e> it = this.f9060a.iterator();
        while (it.hasNext()) {
            it.next().setReleaseLabel(charSequence);
        }
    }
}
