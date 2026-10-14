package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamFragmentManualJudgeBinding implements a {
    public final RecyclerView deductList;
    private final FrameLayout rootView;
    public final RecyclerView stepList;

    private ExamFragmentManualJudgeBinding(FrameLayout frameLayout, RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = frameLayout;
        this.deductList = recyclerView;
        this.stepList = recyclerView2;
    }

    public static ExamFragmentManualJudgeBinding bind(View view) {
        int i = R.id.deductList;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stepList;
            RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
            if (recyclerView2 != null) {
                return new ExamFragmentManualJudgeBinding((FrameLayout) view, recyclerView, recyclerView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamFragmentManualJudgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamFragmentManualJudgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_fragment_manual_judge, viewGroup, false);
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
