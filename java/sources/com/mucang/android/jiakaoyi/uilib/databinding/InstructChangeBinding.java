package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class InstructChangeBinding implements a {
    public final RecyclerView instructRv;
    private final ConstraintLayout rootView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private InstructChangeBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.instructRv = recyclerView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static InstructChangeBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.instruct_rv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stateLayout;
            StateLayout stateLayout = (StateLayout) view.findViewById(i);
            if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                return new InstructChangeBinding((ConstraintLayout) view, recyclerView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static InstructChangeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static InstructChangeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.instruct_change, viewGroup, false);
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
