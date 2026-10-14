package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutItemSystemLogBinding implements a {
    private final LinearLayout rootView;
    public final TextView tvContent;

    private LayoutItemSystemLogBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.tvContent = textView;
    }

    public static LayoutItemSystemLogBinding bind(View view) {
        int i = R.id.tvContent;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new LayoutItemSystemLogBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutItemSystemLogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutItemSystemLogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_item_system_log, viewGroup, false);
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
