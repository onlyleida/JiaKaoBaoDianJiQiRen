package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ApkUpdateDialogBinding implements a {
    public final TextView descTv;
    public final TextView leftTv;
    public final LinearLayout llBtn;
    public final TextView rightTv;
    public final ConstraintLayout rootLayout;
    private final ConstraintLayout rootView;
    public final TextView titleTv;
    public final TextView txtProgress;
    public final ProgressBar upgradeBar;
    public final TextView versionTv;

    private ApkUpdateDialogBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LinearLayout linearLayout, TextView textView3, ConstraintLayout constraintLayout2, TextView textView4, TextView textView5, ProgressBar progressBar, TextView textView6) {
        this.rootView = constraintLayout;
        this.descTv = textView;
        this.leftTv = textView2;
        this.llBtn = linearLayout;
        this.rightTv = textView3;
        this.rootLayout = constraintLayout2;
        this.titleTv = textView4;
        this.txtProgress = textView5;
        this.upgradeBar = progressBar;
        this.versionTv = textView6;
    }

    public static ApkUpdateDialogBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.leftTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.ll_btn;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.rightTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i = R.id.titleTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.txt_progress;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.upgradeBar;
                                ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                                if (progressBar != null) {
                                    i = R.id.versionTv;
                                    TextView textView6 = (TextView) view.findViewById(i);
                                    if (textView6 != null) {
                                        return new ApkUpdateDialogBinding(constraintLayout, textView, textView2, linearLayout, textView3, constraintLayout, textView4, textView5, progressBar, textView6);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ApkUpdateDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ApkUpdateDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.apk_update_dialog, viewGroup, false);
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
