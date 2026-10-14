package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogGyroUnstableBinding implements a {
    public final TextView agree;
    private final LinearLayout rootView;

    private DialogGyroUnstableBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.agree = textView;
    }

    public static DialogGyroUnstableBinding bind(View view) {
        int i = R.id.agree;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new DialogGyroUnstableBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogGyroUnstableBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogGyroUnstableBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_gyro_unstable, viewGroup, false);
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
