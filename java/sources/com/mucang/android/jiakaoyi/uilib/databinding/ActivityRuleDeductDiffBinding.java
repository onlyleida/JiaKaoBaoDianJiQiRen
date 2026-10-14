package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityRuleDeductDiffBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final StateLayout stateLayout;
    public final RecyclerView stepRecyclerView;
    public final CommonTitleBinding titleLayout;
    public final TextView tvHint;

    private ActivityRuleDeductDiffBinding(LinearLayout linearLayout, RecyclerView recyclerView, StateLayout stateLayout, RecyclerView recyclerView2, CommonTitleBinding commonTitleBinding, TextView textView) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.stepRecyclerView = recyclerView2;
        this.titleLayout = commonTitleBinding;
        this.tvHint = textView;
    }

    public static ActivityRuleDeductDiffBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stateLayout;
            StateLayout stateLayout = (StateLayout) view.findViewById(i);
            if (stateLayout != null) {
                i = R.id.stepRecyclerView;
                RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                if (recyclerView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                    CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                    i = R.id.tv_hint;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new ActivityRuleDeductDiffBinding((LinearLayout) view, recyclerView, stateLayout, recyclerView2, commonTitleBindingBind, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityRuleDeductDiffBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityRuleDeductDiffBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_rule_deduct_diff, viewGroup, false);
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
