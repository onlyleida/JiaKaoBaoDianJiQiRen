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
public final class SignalReverseItemBinding implements a {
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final ImageView stateIv;

    private SignalReverseItemBinding(LinearLayout linearLayout, TextView textView, ImageView imageView) {
        this.rootView = linearLayout;
        this.nameTv = textView;
        this.stateIv = imageView;
    }

    public static SignalReverseItemBinding bind(View view) {
        int i = R.id.nameTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.stateIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                return new SignalReverseItemBinding((LinearLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SignalReverseItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SignalReverseItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.signal_reverse_item, viewGroup, false);
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
