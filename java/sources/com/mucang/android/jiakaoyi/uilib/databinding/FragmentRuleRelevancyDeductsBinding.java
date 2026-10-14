package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentRuleRelevancyDeductsBinding implements a {
    public final ImageView closeIv;
    public final RecyclerView deductRecyclerView;
    public final ImageView line1;
    private final ConstraintLayout rootView;
    public final TextView ruleName;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final LinearLayout titleLl;
    public final TextView titleTv;

    private FragmentRuleRelevancyDeductsBinding(ConstraintLayout constraintLayout, ImageView imageView, RecyclerView recyclerView, ImageView imageView2, TextView textView, TextView textView2, StateLayout stateLayout, LinearLayout linearLayout, TextView textView3) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.deductRecyclerView = recyclerView;
        this.line1 = imageView2;
        this.ruleName = textView;
        this.saveTv = textView2;
        this.stateLayout = stateLayout;
        this.titleLl = linearLayout;
        this.titleTv = textView3;
    }

    public static FragmentRuleRelevancyDeductsBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.deductRecyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.line1;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.ruleName;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.saveTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.stateLayout;
                            StateLayout stateLayout = (StateLayout) view.findViewById(i);
                            if (stateLayout != null) {
                                i = R.id.title_ll;
                                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                if (linearLayout != null) {
                                    i = R.id.titleTv;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        return new FragmentRuleRelevancyDeductsBinding((ConstraintLayout) view, imageView, recyclerView, imageView2, textView, textView2, stateLayout, linearLayout, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragmentRuleRelevancyDeductsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentRuleRelevancyDeductsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_rule_relevancy_deducts, viewGroup, false);
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
