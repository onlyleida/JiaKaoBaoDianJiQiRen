package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class GearsIncludeGearsDataZoneBinding implements a {
    public final LinearLayout detailData;
    public final LinearLayout detailItems;
    public final TextView gearsItemTip;
    private final LinearLayout rootView;

    private GearsIncludeGearsDataZoneBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView) {
        this.rootView = linearLayout;
        this.detailData = linearLayout2;
        this.detailItems = linearLayout3;
        this.gearsItemTip = textView;
    }

    public static GearsIncludeGearsDataZoneBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R.id.detail_items;
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
        if (linearLayout2 != null) {
            i = R.id.gears_item_tip;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new GearsIncludeGearsDataZoneBinding(linearLayout, linearLayout, linearLayout2, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static GearsIncludeGearsDataZoneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GearsIncludeGearsDataZoneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gears__include__gears_data_zone, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
