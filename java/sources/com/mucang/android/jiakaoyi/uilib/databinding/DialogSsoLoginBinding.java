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
public final class DialogSsoLoginBinding implements a {
    public final ImageView closeDialog;
    public final TextView dialogTitle;
    public final LinearLayout qrCodeErrorFl;
    public final FrameLayout qrCodeFl;
    public final ImageView qrCodeIv;
    public final TextView refresh;
    private final FrameLayout rootView;
    public final TextView tipTv;

    private DialogSsoLoginBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, LinearLayout linearLayout, FrameLayout frameLayout2, ImageView imageView2, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.closeDialog = imageView;
        this.dialogTitle = textView;
        this.qrCodeErrorFl = linearLayout;
        this.qrCodeFl = frameLayout2;
        this.qrCodeIv = imageView2;
        this.refresh = textView2;
        this.tipTv = textView3;
    }

    public static DialogSsoLoginBinding bind(View view) {
        int i = R.id.close_dialog;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dialog_title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.qrCodeErrorFl;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.qrCodeFl;
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                    if (frameLayout != null) {
                        i = R.id.qrCodeIv;
                        ImageView imageView2 = (ImageView) view.findViewById(i);
                        if (imageView2 != null) {
                            i = R.id.refresh;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tipTv;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    return new DialogSsoLoginBinding((FrameLayout) view, imageView, textView, linearLayout, frameLayout, imageView2, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSsoLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSsoLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sso_login, viewGroup, false);
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
