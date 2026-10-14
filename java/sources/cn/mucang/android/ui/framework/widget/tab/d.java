package cn.mucang.android.ui.framework.widget.tab;

import androidx.viewpager.widget.PagerAdapter;
import cn.mucang.android.ui.framework.widget.tab.e.a;

/* JADX INFO: loaded from: classes4.dex */
public interface d<L extends cn.mucang.android.ui.framework.widget.tab.e.a> extends cn.mucang.android.ui.framework.mvp.b {
    PagerAdapter getAdapter();

    int getCurrentItem();

    void setCurrentItem(int i);
}
