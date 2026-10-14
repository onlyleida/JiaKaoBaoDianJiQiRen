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
public final class CollectErrorBrakeBinding implements a {
    public final RadioButton brakeRb;
    public final RadioGroup brakeRg;
    public final TextView brakeTv;
    public final RadioButton notBrakeRb;
    private final ConstraintLayout rootView;
    public final CheckBox selectCb;

    private CollectErrorBrakeBinding(ConstraintLayout constraintLayout, RadioButton radioButton, RadioGroup radioGroup, TextView textView, RadioButton radioButton2, CheckBox checkBox) {
        this.rootView = constraintLayout;
        this.brakeRb = radioButton;
        this.brakeRg = radioGroup;
        this.brakeTv = textView;
        this.notBrakeRb = radioButton2;
        this.selectCb = checkBox;
    }

    public static CollectErrorBrakeBinding bind(View view) {
        int i = R.id.brakeRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.brakeRg;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.brakeTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.notBrakeRb;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.selectCb;
                        CheckBox checkBox = (CheckBox) view.findViewById(i);
                        if (checkBox != null) {
                            return new CollectErrorBrakeBinding((ConstraintLayout) view, radioButton, radioGroup, textView, radioButton2, checkBox);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorBrakeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorBrakeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_brake, viewGroup, false);
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
