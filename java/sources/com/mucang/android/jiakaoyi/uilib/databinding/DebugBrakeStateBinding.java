package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DebugBrakeStateBinding implements a {
    public final TextView action;
    public final RecyclerView dataRcv;
    private final ConstraintLayout rootView;

    private DebugBrakeStateBinding(ConstraintLayout constraintLayout, TextView textView, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.action = textView;
        this.dataRcv = recyclerView;
    }

    public static DebugBrakeStateBinding bind(View view) {
        int i = R.id.action;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.dataRcv;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                return new DebugBrakeStateBinding((ConstraintLayout) view, textView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DebugBrakeStateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DebugBrakeStateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.debug_brake_state, viewGroup, false);
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
