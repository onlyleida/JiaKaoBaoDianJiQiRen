package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class GearsGearsItemBinding implements a {
    public final LinearLayout activityMain;
    public final TextView editGearsItem;
    public final TextView gearsItemTip;
    public final TextView gearsItemValue;
    private final LinearLayout rootView;

    private GearsGearsItemBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.activityMain = linearLayout2;
        this.editGearsItem = textView;
        this.gearsItemTip = textView2;
        this.gearsItemValue = textView3;
    }

    public static GearsGearsItemBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R.id.edit_gears_item;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.gears_item_tip;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.gears_item_value;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new GearsGearsItemBinding(linearLayout, linearLayout, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static GearsGearsItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GearsGearsItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gears__gears_item, viewGroup, false);
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
