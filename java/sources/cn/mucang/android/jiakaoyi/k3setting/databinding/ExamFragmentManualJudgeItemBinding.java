package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamFragmentManualJudgeItemBinding implements a {
    public final TextView deductAction;
    public final TextView deductId;
    public final TextView deductName;
    public final TextView deductScore;
    private final RelativeLayout rootView;

    private ExamFragmentManualJudgeItemBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.deductAction = textView;
        this.deductId = textView2;
        this.deductName = textView3;
        this.deductScore = textView4;
    }

    public static ExamFragmentManualJudgeItemBinding bind(View view) {
        int i = R.id.deductAction;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deductId;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.deductName;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.deductScore;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new ExamFragmentManualJudgeItemBinding((RelativeLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamFragmentManualJudgeItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamFragmentManualJudgeItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_fragment_manual_judge_item, viewGroup, false);
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
