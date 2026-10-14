package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingItemBinding implements a {
    public final ImageView arrowIv;
    public final TextView descTv;
    public final ImageView dividerIv;
    public final ImageView iconIv;
    public final TextView resetTv;
    private final RelativeLayout rootView;
    public final TextView titleTv;

    private SettingItemBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, ImageView imageView2, ImageView imageView3, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.arrowIv = imageView;
        this.descTv = textView;
        this.dividerIv = imageView2;
        this.iconIv = imageView3;
        this.resetTv = textView2;
        this.titleTv = textView3;
    }

    public static SettingItemBinding bind(View view) {
        int i = R.id.arrowIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.dividerIv;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.iconIv;
                    ImageView imageView3 = (ImageView) view.findViewById(i);
                    if (imageView3 != null) {
                        i = R.id.resetTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.titleTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new SettingItemBinding((RelativeLayout) view, imageView, textView, imageView2, imageView3, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SettingItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
