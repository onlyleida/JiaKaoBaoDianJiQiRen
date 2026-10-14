package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class RuleSettingItemOptionBinding implements a {
    public final TextView checkDeducts;
    public final TextView descTv;
    private final RelativeLayout rootView;
    public final Spinner valueSpinner;

    private RuleSettingItemOptionBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, Spinner spinner) {
        this.rootView = relativeLayout;
        this.checkDeducts = textView;
        this.descTv = textView2;
        this.valueSpinner = spinner;
    }

    public static RuleSettingItemOptionBinding bind(View view) {
        int i = R.id.checkDeducts;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.valueSpinner;
                Spinner spinner = (Spinner) view.findViewById(i);
                if (spinner != null) {
                    return new RuleSettingItemOptionBinding((RelativeLayout) view, textView, textView2, spinner);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RuleSettingItemOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RuleSettingItemOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rule_setting_item_option, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
