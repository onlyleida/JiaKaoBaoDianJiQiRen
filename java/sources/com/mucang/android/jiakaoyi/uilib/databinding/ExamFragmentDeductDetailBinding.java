package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExamFragmentDeductDetailBinding implements a {
    public final RecyclerView deductDetailList;
    public final TextView deductReason;
    public final LinearLayout deductTitle;
    private final LinearLayout rootView;

    private ExamFragmentDeductDetailBinding(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView, LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.deductDetailList = recyclerView;
        this.deductReason = textView;
        this.deductTitle = linearLayout2;
    }

    public static ExamFragmentDeductDetailBinding bind(View view) {
        int i = R.id.deductDetailList;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.deductReason;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.deductTitle;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    return new ExamFragmentDeductDetailBinding((LinearLayout) view, recyclerView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamFragmentDeductDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamFragmentDeductDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_fragment_deduct_detail, viewGroup, false);
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
