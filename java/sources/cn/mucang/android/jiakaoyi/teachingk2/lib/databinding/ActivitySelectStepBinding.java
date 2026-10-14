package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivitySelectStepBinding implements a {
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final TeachingTitleBinding title;

    private ActivitySelectStepBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.recyclerView = recyclerView;
        this.title = teachingTitleBinding;
    }

    public static ActivitySelectStepBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView == null || (viewFindViewById = view.findViewById((i = R.id.title))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivitySelectStepBinding((ConstraintLayout) view, recyclerView, TeachingTitleBinding.bind(viewFindViewById));
    }

    public static ActivitySelectStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySelectStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_select_step, viewGroup, false);
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
