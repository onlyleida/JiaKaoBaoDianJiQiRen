package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogPrivacyAgreementBinding implements a {
    public final TextView agree;
    public final ImageView closeIv;
    public final FrameLayout container;
    public final TextView exit;
    public final View line;
    private final LinearLayout rootView;

    private DialogPrivacyAgreementBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, FrameLayout frameLayout, TextView textView2, View view) {
        this.rootView = linearLayout;
        this.agree = textView;
        this.closeIv = imageView;
        this.container = frameLayout;
        this.exit = textView2;
        this.line = view;
    }

    public static DialogPrivacyAgreementBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.agree;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.container;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.exit;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.line))) != null) {
                        return new DialogPrivacyAgreementBinding((LinearLayout) view, textView, imageView, frameLayout, textView2, viewFindViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogPrivacyAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPrivacyAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_privacy_agreement, viewGroup, false);
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
