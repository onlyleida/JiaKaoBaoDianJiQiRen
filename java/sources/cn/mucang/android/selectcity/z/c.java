package cn.mucang.android.selectcity.z;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.mucang.android.framework.select.city.R;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c extends a {
    public c(Context context, List<cn.mucang.android.selectcity.a0.a> list) {
        super(context, list);
    }

    @Override // cn.mucang.android.wuhan.widget.PinnedHeaderListView.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public TextView b(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(viewGroup.getContext(), R.layout.select_city__list_section_header, null);
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        }
        TextView textView = (TextView) view;
        textView.setText(e(i));
        return textView;
    }
}
