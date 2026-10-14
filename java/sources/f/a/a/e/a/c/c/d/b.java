package f.a.a.e.a.c.c.d;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.ui.framework.widget.tab.PagerSlidingTabStrip;

/* JADX INFO: loaded from: classes4.dex */
public class b extends f.a.a.e.a.c.c.b implements PagerSlidingTabStrip.i {
    @Override // cn.mucang.android.ui.framework.widget.tab.PagerSlidingTabStrip.i
    public PagerSlidingTabStrip.g a(int i) {
        if (!g.b(this.c) && i >= 0 && i < this.c.size()) {
            f.a.a.e.a.c.c.a aVar = this.c.get(i);
            if (aVar instanceof a) {
                return ((a) aVar).b();
            }
        }
        return null;
    }
}
