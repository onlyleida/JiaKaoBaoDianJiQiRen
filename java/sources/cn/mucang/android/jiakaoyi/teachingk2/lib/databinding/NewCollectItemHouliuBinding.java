package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemHouliuBinding implements a {
    public final RadioButton bigRb;
    public final EditText houliuEt;
    public final TextView name;
    public final RadioGroup radioGroup;
    private final ConstraintLayout rootView;
    public final CheckBox select;
    public final RadioButton smallRb;

    private NewCollectItemHouliuBinding(ConstraintLayout constraintLayout, RadioButton radioButton, EditText editText, TextView textView, RadioGroup radioGroup, CheckBox checkBox, RadioButton radioButton2) {
        this.rootView = constraintLayout;
        this.bigRb = radioButton;
        this.houliuEt = editText;
        this.name = textView;
        this.radioGroup = radioGroup;
        this.select = checkBox;
        this.smallRb = radioButton2;
    }

    public static NewCollectItemHouliuBinding bind(View view) {
        int i = R.id.bigRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.houliuEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.name;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.radioGroup;
                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                    if (radioGroup != null) {
                        i = R.id.select;
                        CheckBox checkBox = (CheckBox) view.findViewById(i);
                        if (checkBox != null) {
                            i = R.id.smallRb;
                            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                            if (radioButton2 != null) {
                                return new NewCollectItemHouliuBinding((ConstraintLayout) view, radioButton, editText, textView, radioGroup, checkBox, radioButton2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemHouliuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemHouliuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_houliu, viewGroup, false);
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
