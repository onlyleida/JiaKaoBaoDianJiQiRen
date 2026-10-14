package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivitySplashBinding implements a {
    private final FrameLayout rootView;
    public final TextView tipTv;
    public final TextView tvApkTime;
    public final TextView tvTime;
    public final TextView tvVersion;

    private ActivitySplashBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = frameLayout;
        this.tipTv = textView;
        this.tvApkTime = textView2;
        this.tvTime = textView3;
        this.tvVersion = textView4;
    }

    public static ActivitySplashBinding bind(View view) {
        int i = R.id.tipTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvApkTime;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tvTime;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.tvVersion;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new ActivitySplashBinding((FrameLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySplashBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySplashBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_splash, viewGroup, false);
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
