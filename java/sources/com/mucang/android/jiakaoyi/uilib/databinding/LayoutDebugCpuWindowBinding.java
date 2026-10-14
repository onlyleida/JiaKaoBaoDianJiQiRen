package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutDebugCpuWindowBinding implements a {
    public final ImageView ivBg;
    private final FrameLayout rootView;
    public final TextView tvCpu;
    public final TextView tvMem;
    public final TextView tvNetMs;

    private LayoutDebugCpuWindowBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.ivBg = imageView;
        this.tvCpu = textView;
        this.tvMem = textView2;
        this.tvNetMs = textView3;
    }

    public static LayoutDebugCpuWindowBinding bind(View view) {
        int i = R.id.ivBg;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.tvCpu;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tvMem;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tvNetMs;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new LayoutDebugCpuWindowBinding((FrameLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutDebugCpuWindowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutDebugCpuWindowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_debug_cpu_window, viewGroup, false);
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
