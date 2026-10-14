package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingGearLearnItemBinding implements a {
    public final TextView gearTv;
    public final TextView learnTv;
    public final EditText maxTv;
    public final EditText minTv;
    private final LinearLayout rootView;

    private SettingGearLearnItemBinding(LinearLayout linearLayout, TextView textView, TextView textView2, EditText editText, EditText editText2) {
        this.rootView = linearLayout;
        this.gearTv = textView;
        this.learnTv = textView2;
        this.maxTv = editText;
        this.minTv = editText2;
    }

    public static SettingGearLearnItemBinding bind(View view) {
        int i = R.id.gearTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.learnTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.maxTv;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.minTv;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        return new SettingGearLearnItemBinding((LinearLayout) view, textView, textView2, editText, editText2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SettingGearLearnItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingGearLearnItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_gear_learn_item, viewGroup, false);
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
