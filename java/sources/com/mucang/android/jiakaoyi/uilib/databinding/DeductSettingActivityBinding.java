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
public final class DeductSettingActivityBinding implements a {
    public final TextView actionTv;
    public final RecyclerView deductRecyclerView;
    public final View divider;
    public final TextView resetTv;
    private final LinearLayout rootView;
    public final TextView ruleRelevancy;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final RecyclerView stepRecyclerView;
    public final IncludeRuleTitleLayoutBinding titleLayout;

    private DeductSettingActivityBinding(LinearLayout linearLayout, TextView textView, RecyclerView recyclerView, View view, TextView textView2, TextView textView3, TextView textView4, StateLayout stateLayout, RecyclerView recyclerView2, IncludeRuleTitleLayoutBinding includeRuleTitleLayoutBinding) {
        this.rootView = linearLayout;
        this.actionTv = textView;
        this.deductRecyclerView = recyclerView;
        this.divider = view;
        this.resetTv = textView2;
        this.ruleRelevancy = textView3;
        this.saveTv = textView4;
        this.stateLayout = stateLayout;
        this.stepRecyclerView = recyclerView2;
        this.titleLayout = includeRuleTitleLayoutBinding;
    }

    public static DeductSettingActivityBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.actionTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deductRecyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                i = R.id.resetTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.ruleRelevancy;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.saveTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.stateLayout;
                            StateLayout stateLayout = (StateLayout) view.findViewById(i);
                            if (stateLayout != null) {
                                i = R.id.stepRecyclerView;
                                RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                if (recyclerView2 != null && (viewFindViewById2 = view.findViewById((i = R.id.title_layout))) != null) {
                                    return new DeductSettingActivityBinding((LinearLayout) view, textView, recyclerView, viewFindViewById, textView2, textView3, textView4, stateLayout, recyclerView2, IncludeRuleTitleLayoutBinding.bind(viewFindViewById2));
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DeductSettingActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DeductSettingActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.deduct_setting_activity, viewGroup, false);
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
