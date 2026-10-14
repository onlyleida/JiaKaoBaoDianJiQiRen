package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SelfCheckItemBinding implements a {
    public final TextView nameTv;
    private final FrameLayout rootView;
    public final ImageView stateIv;

    private SelfCheckItemBinding(FrameLayout frameLayout, TextView textView, ImageView imageView) {
        this.rootView = frameLayout;
        this.nameTv = textView;
        this.stateIv = imageView;
    }

    public static SelfCheckItemBinding bind(View view) {
        int i = R.id.nameTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.stateIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                return new SelfCheckItemBinding((FrameLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SelfCheckItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SelfCheckItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.self_check_item, viewGroup, false);
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
