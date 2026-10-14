package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentModifyRulesBinding implements a {
    public final TextView cancelTv;
    public final View line;
    private final ConstraintLayout rootView;
    public final RecyclerView ruleRecyclerView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final TextView titleTv;

    private FragmentModifyRulesBinding(ConstraintLayout constraintLayout, TextView textView, View view, RecyclerView recyclerView, TextView textView2, StateLayout stateLayout, TextView textView3) {
        this.rootView = constraintLayout;
        this.cancelTv = textView;
        this.line = view;
        this.ruleRecyclerView = recyclerView;
        this.saveTv = textView2;
        this.stateLayout = stateLayout;
        this.titleTv = textView3;
    }

    public static FragmentModifyRulesBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cancelTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.line))) != null) {
            i = R.id.ruleRecyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.saveTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.stateLayout;
                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                    if (stateLayout != null) {
                        i = R.id.titleTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            return new FragmentModifyRulesBinding((ConstraintLayout) view, textView, viewFindViewById, recyclerView, textView2, stateLayout, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragmentModifyRulesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentModifyRulesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_modify_rules, viewGroup, false);
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
