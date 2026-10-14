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
public final class ActivitySelecCarBinding implements a {
    public final RecyclerView configRv;
    public final RecyclerView modelRv;
    private final LinearLayout rootView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivitySelecCarBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.configRv = recyclerView;
        this.modelRv = recyclerView2;
        this.saveTv = textView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivitySelecCarBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.configRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.modelRv;
            RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
            if (recyclerView2 != null) {
                i = R.id.saveTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.stateLayout;
                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                    if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                        return new ActivitySelecCarBinding((LinearLayout) view, recyclerView, recyclerView2, textView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySelecCarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySelecCarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_selec_car, viewGroup, false);
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
