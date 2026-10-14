package cn.mucang.android.selectcity.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.selectcity.Area;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CityFlowLayout extends cn.mucang.android.selectcity.ui.a implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f8946d;

    public interface a {
        void a(Area area);
    }

    public CityFlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        a aVar = this.f8946d;
        if (aVar == null || tag == null) {
            return;
        }
        aVar.a((Area) view.getTag());
    }

    public void setCities(List<Area> list) {
        removeAllViews();
        int i = j.i().widthPixels;
        int iA = s0.a(15.0f);
        int i2 = (int) (((i - (iA * 4)) * 1.0f) / 3.0f);
        setColumnSpacing(iA);
        setLineSpacing(s0.a(10.0f));
        for (Area area : list) {
            TextView textView = new TextView(getContext());
            textView.setTextColor(getResources().getColor(R.color.select_city__list_item_title_color));
            textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.select_city__list_item_title_size));
            textView.setGravity(17);
            textView.setBackgroundResource(R.drawable.select_city__hot_city_item_bg);
            textView.setTag(area);
            textView.setText(area.getAreaName());
            textView.setLayoutParams(new ViewGroup.LayoutParams(i2, -2));
            textView.setPadding(0, s0.a(10.0f), 0, s0.a(10.0f));
            textView.setOnClickListener(this);
            addView(textView);
        }
    }

    public void setListener(a aVar) {
        this.f8946d = aVar;
    }
}
