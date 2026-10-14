package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class RuleSettingItemSwitchBinding implements a {
    public final TextView checkDeducts;
    public final TextView descTv;
    private final RelativeLayout rootView;
    public final TextView valueTv;

    private RuleSettingItemSwitchBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.checkDeducts = textView;
        this.descTv = textView2;
        this.valueTv = textView3;
    }

    public static RuleSettingItemSwitchBinding bind(View view) {
        int i = R.id.checkDeducts;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.valueTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new RuleSettingItemSwitchBinding((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RuleSettingItemSwitchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RuleSettingItemSwitchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rule_setting_item_switch, viewGroup, false);
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
