package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DeductSettingModifyItemBinding implements a {
    public final TextView descTv;
    private final RelativeLayout rootView;
    public final TextView stepRuleCode;
    public final TextView valueTv;

    private DeductSettingModifyItemBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.descTv = textView;
        this.stepRuleCode = textView2;
        this.valueTv = textView3;
    }

    public static DeductSettingModifyItemBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.step_rule_code;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.valueTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new DeductSettingModifyItemBinding((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DeductSettingModifyItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DeductSettingModifyItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.deduct_setting_modify_item, viewGroup, false);
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
