package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DebugBrakeStateItemBinding implements a {
    public final TextView delta;
    private final ConstraintLayout rootView;
    public final TextView src;
    public final TextView timeStamp;
    public final TextView value;

    private DebugBrakeStateItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.delta = textView;
        this.src = textView2;
        this.timeStamp = textView3;
        this.value = textView4;
    }

    public static DebugBrakeStateItemBinding bind(View view) {
        int i = R.id.delta;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.src;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.timeStamp;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.value;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new DebugBrakeStateItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DebugBrakeStateItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DebugBrakeStateItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.debug_brake_state_item, viewGroup, false);
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
