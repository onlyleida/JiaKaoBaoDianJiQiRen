package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class RuleSettingItemNumberBinding implements a {
    public final TextView checkDeducts;
    public final TextView descTv;
    private final RelativeLayout rootView;
    public final EditText valueEt;

    private RuleSettingItemNumberBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, EditText editText) {
        this.rootView = relativeLayout;
        this.checkDeducts = textView;
        this.descTv = textView2;
        this.valueEt = editText;
    }

    public static RuleSettingItemNumberBinding bind(View view) {
        int i = R.id.checkDeducts;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.valueEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    return new RuleSettingItemNumberBinding((RelativeLayout) view, textView, textView2, editText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RuleSettingItemNumberBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RuleSettingItemNumberBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rule_setting_item_number, viewGroup, false);
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
