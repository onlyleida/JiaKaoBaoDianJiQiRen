package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemCostListBinding implements a {
    private final RelativeLayout rootView;
    public final TextView tvOrder;
    public final TextView tvStatus;

    private ItemCostListBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.tvOrder = textView;
        this.tvStatus = textView2;
    }

    public static ItemCostListBinding bind(View view) {
        int i = R.id.tv_order;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_status;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new ItemCostListBinding((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemCostListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemCostListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cost_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
