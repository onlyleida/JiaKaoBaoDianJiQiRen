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
public final class DialogGearCalibrateBinding implements a {
    public final ImageView closeIv;
    public final TextView descTv;
    public final TextView leftTv;
    public final TextView rightTv;
    public final FrameLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private DialogGearCalibrateBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, FrameLayout frameLayout, TextView textView4) {
        this.rootView = linearLayout;
        this.closeIv = imageView;
        this.descTv = textView;
        this.leftTv = textView2;
        this.rightTv = textView3;
        this.rootLayout = frameLayout;
        this.titleTv = textView4;
    }

    public static DialogGearCalibrateBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.leftTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.rightTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.rootLayout;
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                        if (frameLayout != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                return new DialogGearCalibrateBinding((LinearLayout) view, imageView, textView, textView2, textView3, frameLayout, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogGearCalibrateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogGearCalibrateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_gear_calibrate, viewGroup, false);
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
