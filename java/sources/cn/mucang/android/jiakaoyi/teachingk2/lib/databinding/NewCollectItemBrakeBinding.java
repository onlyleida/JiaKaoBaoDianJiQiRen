package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemBrakeBinding implements a {
    public final RadioButton brakeRb;
    public final TextView name;
    public final RadioButton notBrakeRb;
    public final RadioGroup radioGroup;
    private final ConstraintLayout rootView;
    public final CheckBox select;

    private NewCollectItemBrakeBinding(ConstraintLayout constraintLayout, RadioButton radioButton, TextView textView, RadioButton radioButton2, RadioGroup radioGroup, CheckBox checkBox) {
        this.rootView = constraintLayout;
        this.brakeRb = radioButton;
        this.name = textView;
        this.notBrakeRb = radioButton2;
        this.radioGroup = radioGroup;
        this.select = checkBox;
    }

    public static NewCollectItemBrakeBinding bind(View view) {
        int i = R.id.brakeRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.notBrakeRb;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    i = R.id.radioGroup;
                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                    if (radioGroup != null) {
                        i = R.id.select;
                        CheckBox checkBox = (CheckBox) view.findViewById(i);
                        if (checkBox != null) {
                            return new NewCollectItemBrakeBinding((ConstraintLayout) view, radioButton, textView, radioButton2, radioGroup, checkBox);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemBrakeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemBrakeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_brake, viewGroup, false);
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
