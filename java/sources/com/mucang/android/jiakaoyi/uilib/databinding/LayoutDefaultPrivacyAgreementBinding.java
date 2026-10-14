package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutDefaultPrivacyAgreementBinding implements a {
    public final TextView agreement;
    public final TextView appName;
    public final TextView privacy;
    private final LinearLayout rootView;

    private LayoutDefaultPrivacyAgreementBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.agreement = textView;
        this.appName = textView2;
        this.privacy = textView3;
    }

    public static LayoutDefaultPrivacyAgreementBinding bind(View view) {
        int i = R.id.agreement;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.app_name;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.privacy;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new LayoutDefaultPrivacyAgreementBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutDefaultPrivacyAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutDefaultPrivacyAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_default_privacy_agreement, viewGroup, false);
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
