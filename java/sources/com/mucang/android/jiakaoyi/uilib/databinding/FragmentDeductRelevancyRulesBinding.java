package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentDeductRelevancyRulesBinding implements a {
    public final ImageView closeIv;
    public final TextView deductName;
    public final ImageView line1;
    private final ConstraintLayout rootView;
    public final RecyclerView ruleRecyclerView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final TextView titleTv;

    private FragmentDeductRelevancyRulesBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, ImageView imageView2, RecyclerView recyclerView, TextView textView2, StateLayout stateLayout, TextView textView3) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.deductName = textView;
        this.line1 = imageView2;
        this.ruleRecyclerView = recyclerView;
        this.saveTv = textView2;
        this.stateLayout = stateLayout;
        this.titleTv = textView3;
    }

    public static FragmentDeductRelevancyRulesBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.deductName;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.line1;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
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
                                    return new FragmentDeductRelevancyRulesBinding((ConstraintLayout) view, imageView, textView, imageView2, recyclerView, textView2, stateLayout, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragmentDeductRelevancyRulesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDeductRelevancyRulesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_deduct_relevancy_rules, viewGroup, false);
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
