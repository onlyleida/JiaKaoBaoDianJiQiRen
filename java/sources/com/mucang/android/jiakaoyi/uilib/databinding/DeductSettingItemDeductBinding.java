package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DeductSettingItemDeductBinding implements a {
    public final TextView checkRules;
    public final TextView codeTv;
    public final TextView infoTv;
    public final TextView manualJudgeTv;
    private final FrameLayout rootView;
    public final EditText scoreTv;
    public final TextView systemJudgeTv;
    public final ImageView voice;

    private DeductSettingItemDeductBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, EditText editText, TextView textView5, ImageView imageView) {
        this.rootView = frameLayout;
        this.checkRules = textView;
        this.codeTv = textView2;
        this.infoTv = textView3;
        this.manualJudgeTv = textView4;
        this.scoreTv = editText;
        this.systemJudgeTv = textView5;
        this.voice = imageView;
    }

    public static DeductSettingItemDeductBinding bind(View view) {
        int i = R.id.checkRules;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.codeTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.infoTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.manualJudgeTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.scoreTv;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.systemJudgeTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.voice;
                                ImageView imageView = (ImageView) view.findViewById(i);
                                if (imageView != null) {
                                    return new DeductSettingItemDeductBinding((FrameLayout) view, textView, textView2, textView3, textView4, editText, textView5, imageView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DeductSettingItemDeductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DeductSettingItemDeductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.deduct_setting_item_deduct, viewGroup, false);
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
