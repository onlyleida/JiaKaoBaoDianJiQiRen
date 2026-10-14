package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemDebugToolsBinding implements a {
    public final Button btnDownload;
    private final FrameLayout rootView;
    public final TextView tvName;

    private ItemDebugToolsBinding(FrameLayout frameLayout, Button button, TextView textView) {
        this.rootView = frameLayout;
        this.btnDownload = button;
        this.tvName = textView;
    }

    public static ItemDebugToolsBinding bind(View view) {
        int i = R.id.btnDownload;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.tvName;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new ItemDebugToolsBinding((FrameLayout) view, button, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemDebugToolsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemDebugToolsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_debug_tools, viewGroup, false);
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
