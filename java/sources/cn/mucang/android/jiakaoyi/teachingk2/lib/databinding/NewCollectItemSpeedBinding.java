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
public final class NewCollectItemSpeedBinding implements a {
    public final RadioButton bigRb;
    public final RadioButton equalRb;
    public final TextView name;
    public final RadioGroup radioGroup;
    private final ConstraintLayout rootView;
    public final CheckBox select;
    public final RadioButton smallRb;
    public final EditText speedTv;

    private NewCollectItemSpeedBinding(ConstraintLayout constraintLayout, RadioButton radioButton, RadioButton radioButton2, TextView textView, RadioGroup radioGroup, CheckBox checkBox, RadioButton radioButton3, EditText editText) {
        this.rootView = constraintLayout;
        this.bigRb = radioButton;
        this.equalRb = radioButton2;
        this.name = textView;
        this.radioGroup = radioGroup;
        this.select = checkBox;
        this.smallRb = radioButton3;
        this.speedTv = editText;
    }

    public static NewCollectItemSpeedBinding bind(View view) {
        int i = R.id.bigRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.equalRb;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
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
                            RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                            if (radioButton3 != null) {
                                i = R.id.speedTv;
                                EditText editText = (EditText) view.findViewById(i);
                                if (editText != null) {
                                    return new NewCollectItemSpeedBinding((ConstraintLayout) view, radioButton, radioButton2, textView, radioGroup, checkBox, radioButton3, editText);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemSpeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemSpeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_speed, viewGroup, false);
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
