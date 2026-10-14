package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class AddRuleExamSiteBinding implements a {
    public final TextView cancelTv;
    public final ImageView closeIv;
    public final TextView confirmTv;
    public final LinearLayout examSiteLL;
    public final EditText examSiteNameTv;
    public final View line;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private AddRuleExamSiteBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, LinearLayout linearLayout, EditText editText, View view, TextView textView3) {
        this.rootView = constraintLayout;
        this.cancelTv = textView;
        this.closeIv = imageView;
        this.confirmTv = textView2;
        this.examSiteLL = linearLayout;
        this.examSiteNameTv = editText;
        this.line = view;
        this.titleTv = textView3;
    }

    public static AddRuleExamSiteBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cancelTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.confirmTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.examSiteLL;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.examSiteNameTv;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null && (viewFindViewById = view.findViewById((i = R.id.line))) != null) {
                            i = R.id.titleTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new AddRuleExamSiteBinding((ConstraintLayout) view, textView, imageView, textView2, linearLayout, editText, viewFindViewById, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AddRuleExamSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AddRuleExamSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.add_rule_exam_site, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
