package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamFragmentManualJudgeStepItemBinding implements a {
    private final FrameLayout rootView;
    public final TextView stepName;

    private ExamFragmentManualJudgeStepItemBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.stepName = textView;
    }

    public static ExamFragmentManualJudgeStepItemBinding bind(View view) {
        int i = R.id.stepName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new ExamFragmentManualJudgeStepItemBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamFragmentManualJudgeStepItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamFragmentManualJudgeStepItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_fragment_manual_judge_step_item, viewGroup, false);
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
