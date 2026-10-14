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
public final class RuleRelevancyItemDeductBinding implements a {
    public final TextView codeTv;
    public final EditText descTv;
    public final TextView manualJudgeTv;
    private final FrameLayout rootView;
    public final EditText scoreTv;
    public final TextView systemJudgeTv;
    public final ImageView voice;

    private RuleRelevancyItemDeductBinding(FrameLayout frameLayout, TextView textView, EditText editText, TextView textView2, EditText editText2, TextView textView3, ImageView imageView) {
        this.rootView = frameLayout;
        this.codeTv = textView;
        this.descTv = editText;
        this.manualJudgeTv = textView2;
        this.scoreTv = editText2;
        this.systemJudgeTv = textView3;
        this.voice = imageView;
    }

    public static RuleRelevancyItemDeductBinding bind(View view) {
        int i = R.id.codeTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.manualJudgeTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.scoreTv;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.systemJudgeTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.voice;
                            ImageView imageView = (ImageView) view.findViewById(i);
                            if (imageView != null) {
                                return new RuleRelevancyItemDeductBinding((FrameLayout) view, textView, editText, textView2, editText2, textView3, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RuleRelevancyItemDeductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RuleRelevancyItemDeductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rule_relevancy_item_deduct, viewGroup, false);
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
