package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExtensionSelectItemBinding implements a {
    private final FrameLayout rootView;
    public final TextView tv;

    private ExtensionSelectItemBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.tv = textView;
    }

    public static ExtensionSelectItemBinding bind(View view) {
        int i = R.id.tv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new ExtensionSelectItemBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExtensionSelectItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExtensionSelectItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.extension_select_item, viewGroup, false);
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
