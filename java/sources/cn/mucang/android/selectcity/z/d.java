package cn.mucang.android.selectcity.z;

import android.view.View;
import android.view.ViewGroup;
import cn.mucang.android.selectcity.CityNameCodeMapping;
import cn.mucang.android.selectcity.adapter.mvp.CityListItemView;

/* JADX INFO: loaded from: classes4.dex */
public class d extends f.a.a.e.a.b.a<CityNameCodeMapping.MucangPOI> {
    @Override // f.a.a.e.a.b.a
    protected cn.mucang.android.ui.framework.mvp.a c(View view, int i) {
        return new cn.mucang.android.selectcity.adapter.mvp.a((CityListItemView) view);
    }

    @Override // f.a.a.e.a.b.a
    protected cn.mucang.android.ui.framework.mvp.b d(ViewGroup viewGroup, int i) {
        return CityListItemView.b(viewGroup);
    }
}
