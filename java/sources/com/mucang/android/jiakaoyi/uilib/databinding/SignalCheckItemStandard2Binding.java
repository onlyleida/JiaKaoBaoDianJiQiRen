package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SignalCheckItemStandard2Binding implements a {
    public final ImageView checkCb;
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final ImageView stateIv;

    private SignalCheckItemStandard2Binding(LinearLayout linearLayout, ImageView imageView, TextView textView, ImageView imageView2) {
        this.rootView = linearLayout;
        this.checkCb = imageView;
        this.nameTv = textView;
        this.stateIv = imageView2;
    }

    public static SignalCheckItemStandard2Binding bind(View view) {
        int i = R.id.checkCb;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.nameTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.stateIv;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    return new SignalCheckItemStandard2Binding((LinearLayout) view, imageView, textView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SignalCheckItemStandard2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SignalCheckItemStandard2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.signal_check_item_standard2, viewGroup, false);
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
