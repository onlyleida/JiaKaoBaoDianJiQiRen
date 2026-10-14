package cn.mucang.android.selectcity.adapter.mvp;

import cn.mucang.android.selectcity.CityNameCodeMapping;

/* JADX INFO: loaded from: classes4.dex */
public class a extends cn.mucang.android.ui.framework.mvp.a<CityListItemView, CityNameCodeMapping.MucangPOI> {
    public a(CityListItemView cityListItemView) {
        super(cityListItemView);
    }

    @Override // cn.mucang.android.ui.framework.mvp.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void a(CityNameCodeMapping.MucangPOI mucangPOI) {
        if (mucangPOI == null) {
            return;
        }
        ((CityListItemView) this.f8977a).getCityName().setText(mucangPOI.name);
    }
}
