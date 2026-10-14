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
public final class RuleSettingItemScopeBinding implements a {
    public final TextView checkDeducts;
    public final TextView descTv;
    public final EditText maxEt;
    public final EditText minEt;
    private final RelativeLayout rootView;
    public final TextView splitTv;

    private RuleSettingItemScopeBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, EditText editText, EditText editText2, TextView textView3) {
        this.rootView = relativeLayout;
        this.checkDeducts = textView;
        this.descTv = textView2;
        this.maxEt = editText;
        this.minEt = editText2;
        this.splitTv = textView3;
    }

    public static RuleSettingItemScopeBinding bind(View view) {
        int i = R.id.checkDeducts;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.maxEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.minEt;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.splitTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            return new RuleSettingItemScopeBinding((RelativeLayout) view, textView, textView2, editText, editText2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RuleSettingItemScopeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RuleSettingItemScopeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rule_setting_item_scope, viewGroup, false);
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
