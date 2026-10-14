package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityModifyPersonalBinding implements a {
    private final LinearLayout rootView;
    public final RecyclerView ruleRecyclerView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivityModifyPersonalBinding(LinearLayout linearLayout, RecyclerView recyclerView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.ruleRecyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityModifyPersonalBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.ruleRecyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stateLayout;
            StateLayout stateLayout = (StateLayout) view.findViewById(i);
            if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                return new ActivityModifyPersonalBinding((LinearLayout) view, recyclerView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityModifyPersonalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityModifyPersonalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_modify_personal, viewGroup, false);
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
