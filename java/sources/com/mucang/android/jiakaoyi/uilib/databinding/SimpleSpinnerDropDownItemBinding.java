package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SimpleSpinnerDropDownItemBinding implements a {
    private final FrameLayout rootView;
    public final TextView text;

    private SimpleSpinnerDropDownItemBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.text = textView;
    }

    public static SimpleSpinnerDropDownItemBinding bind(View view) {
        int i = R.id.text;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new SimpleSpinnerDropDownItemBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SimpleSpinnerDropDownItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SimpleSpinnerDropDownItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.simple_spinner_drop_down_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
