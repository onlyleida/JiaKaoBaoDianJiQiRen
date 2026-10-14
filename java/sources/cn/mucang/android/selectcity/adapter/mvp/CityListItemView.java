package cn.mucang.android.selectcity.adapter.mvp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.t0;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.ui.framework.mvp.b;

/* JADX INFO: loaded from: classes4.dex */
public class CityListItemView extends LinearLayout implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f8916a;

    public CityListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.f8916a = (TextView) findViewById(R.id.city_name);
    }

    public static CityListItemView b(ViewGroup viewGroup) {
        return (CityListItemView) t0.b(viewGroup, R.layout.core__select_city_list_item);
    }

    public TextView getCityName() {
        return this.f8916a;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }
}
