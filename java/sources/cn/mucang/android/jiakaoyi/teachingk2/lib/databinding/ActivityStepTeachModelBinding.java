package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityStepTeachModelBinding implements a {
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final StateLayout stateLayout;
    public final TeachingTitleBinding title;

    private ActivityStepTeachModelBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, StateLayout stateLayout, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.title = teachingTitleBinding;
    }

    public static ActivityStepTeachModelBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stateLayout;
            StateLayout stateLayout = (StateLayout) view.findViewById(i);
            if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                return new ActivityStepTeachModelBinding((ConstraintLayout) view, recyclerView, stateLayout, TeachingTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityStepTeachModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityStepTeachModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_step_teach_model, viewGroup, false);
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
