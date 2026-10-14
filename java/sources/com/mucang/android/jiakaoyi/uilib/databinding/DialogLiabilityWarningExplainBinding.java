package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogLiabilityWarningExplainBinding implements a {
    public final TextView descTv;
    public final TextView leftTv;
    public final TextView rightTv;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private DialogLiabilityWarningExplainBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, LinearLayout linearLayout2, TextView textView4) {
        this.rootView = linearLayout;
        this.descTv = textView;
        this.leftTv = textView2;
        this.rightTv = textView3;
        this.rootLayout = linearLayout2;
        this.titleTv = textView4;
    }

    public static DialogLiabilityWarningExplainBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.leftTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.rightTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.rootLayout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.titleTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new DialogLiabilityWarningExplainBinding((LinearLayout) view, textView, textView2, textView3, linearLayout, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogLiabilityWarningExplainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogLiabilityWarningExplainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_liability_warning_explain, viewGroup, false);
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
