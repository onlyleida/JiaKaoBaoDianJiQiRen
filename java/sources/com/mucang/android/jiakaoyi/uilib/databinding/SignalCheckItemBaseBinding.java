package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SignalCheckItemBaseBinding implements a {
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final TextView valueTv;

    private SignalCheckItemBaseBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.nameTv = textView;
        this.valueTv = textView2;
    }

    public static SignalCheckItemBaseBinding bind(View view) {
        int i = R.id.nameTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.valueTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new SignalCheckItemBaseBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SignalCheckItemBaseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SignalCheckItemBaseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.signal_check_item_base, viewGroup, false);
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
