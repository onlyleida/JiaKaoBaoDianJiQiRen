package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemArrearsCoachBinding implements a {
    private final LinearLayout rootView;
    public final TextView tvAmount;
    public final TextView tvName;

    private ItemArrearsCoachBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.tvAmount = textView;
        this.tvName = textView2;
    }

    public static ItemArrearsCoachBinding bind(View view) {
        int i = R.id.tv_amount;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_name;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new ItemArrearsCoachBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemArrearsCoachBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemArrearsCoachBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_arrears_coach, viewGroup, false);
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
