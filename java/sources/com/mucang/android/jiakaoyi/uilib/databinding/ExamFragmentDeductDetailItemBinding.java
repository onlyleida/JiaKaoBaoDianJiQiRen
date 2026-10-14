package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExamFragmentDeductDetailItemBinding implements a {
    public final TextView deductReason;
    public final TextView deductScore;
    public final FrameLayout deductTitle;
    public final Button delete;
    public final TextView name;
    private final FrameLayout rootView;
    public final TextView time;

    private ExamFragmentDeductDetailItemBinding(FrameLayout frameLayout, TextView textView, TextView textView2, FrameLayout frameLayout2, Button button, TextView textView3, TextView textView4) {
        this.rootView = frameLayout;
        this.deductReason = textView;
        this.deductScore = textView2;
        this.deductTitle = frameLayout2;
        this.delete = button;
        this.name = textView3;
        this.time = textView4;
    }

    public static ExamFragmentDeductDetailItemBinding bind(View view) {
        int i = R.id.deductReason;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deductScore;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i = R.id.delete;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = R.id.name;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.time;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new ExamFragmentDeductDetailItemBinding(frameLayout, textView, textView2, frameLayout, button, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamFragmentDeductDetailItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamFragmentDeductDetailItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_fragment_deduct_detail_item, viewGroup, false);
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
