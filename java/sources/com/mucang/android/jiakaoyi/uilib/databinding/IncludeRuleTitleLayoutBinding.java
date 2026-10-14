package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class IncludeRuleTitleLayoutBinding implements a {
    public final ImageView backIv;
    public final ImageView clearTv;
    public final EditText queryEt;
    private final RelativeLayout rootView;
    public final TextView titleTv;

    private IncludeRuleTitleLayoutBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, EditText editText, TextView textView) {
        this.rootView = relativeLayout;
        this.backIv = imageView;
        this.clearTv = imageView2;
        this.queryEt = editText;
        this.titleTv = textView;
    }

    public static IncludeRuleTitleLayoutBinding bind(View view) {
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.clearTv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.queryEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.titleTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new IncludeRuleTitleLayoutBinding((RelativeLayout) view, imageView, imageView2, editText, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static IncludeRuleTitleLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static IncludeRuleTitleLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.include_rule_title_layout, viewGroup, false);
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
