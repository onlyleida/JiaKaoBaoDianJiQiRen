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
public final class CommonTitleBinding implements a {
    public final TextView actionTv;
    public final ImageView backIv;
    public final View divider;
    private final RelativeLayout rootView;
    public final RelativeLayout titleLayout;
    public final TextView titleTv;

    private CommonTitleBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, View view, RelativeLayout relativeLayout2, TextView textView2) {
        this.rootView = relativeLayout;
        this.actionTv = textView;
        this.backIv = imageView;
        this.divider = view;
        this.titleLayout = relativeLayout2;
        this.titleTv = textView2;
    }

    public static CommonTitleBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.actionTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.backIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.titleTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new CommonTitleBinding(relativeLayout, textView, imageView, viewFindViewById, relativeLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CommonTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CommonTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.common_title, viewGroup, false);
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
