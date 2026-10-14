package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityStatusCheckBinding implements a {
    public final ProgressBar loadingBar;
    private final ConstraintLayout rootView;
    public final TextView tipTv;
    public final TextView titleTv;

    private ActivityStatusCheckBinding(ConstraintLayout constraintLayout, ProgressBar progressBar, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.loadingBar = progressBar;
        this.tipTv = textView;
        this.titleTv = textView2;
    }

    public static ActivityStatusCheckBinding bind(View view) {
        int i = R.id.loadingBar;
        ProgressBar progressBar = (ProgressBar) view.findViewById(i);
        if (progressBar != null) {
            i = R.id.tipTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.titleTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new ActivityStatusCheckBinding((ConstraintLayout) view, progressBar, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityStatusCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityStatusCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_status_check, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
