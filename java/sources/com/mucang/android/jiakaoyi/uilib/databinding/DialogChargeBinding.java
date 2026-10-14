package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogChargeBinding implements a {
    public final TextView chargeDesc;
    public final ImageView closeIv;
    public final ImageView imgQrCode;
    public final ProgressBar progress;
    private final LinearLayout rootView;
    public final TextView tvError;

    private DialogChargeBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, ImageView imageView2, ProgressBar progressBar, TextView textView2) {
        this.rootView = linearLayout;
        this.chargeDesc = textView;
        this.closeIv = imageView;
        this.imgQrCode = imageView2;
        this.progress = progressBar;
        this.tvError = textView2;
    }

    public static DialogChargeBinding bind(View view) {
        int i = R.id.charge_desc;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.img_qr_code;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.progress;
                    ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                    if (progressBar != null) {
                        i = R.id.tv_error;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            return new DialogChargeBinding((LinearLayout) view, textView, imageView, imageView2, progressBar, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogChargeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogChargeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_charge, viewGroup, false);
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
