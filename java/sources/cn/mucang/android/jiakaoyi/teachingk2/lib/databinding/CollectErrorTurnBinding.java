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
public final class CollectErrorTurnBinding implements a {
    public final RadioButton leftRb;
    public final RadioButton noRb;
    public final RadioButton rightRb;
    private final ConstraintLayout rootView;
    public final CheckBox selectCb;
    public final RadioGroup turnRg;
    public final TextView turnTv;

    private CollectErrorTurnBinding(ConstraintLayout constraintLayout, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, CheckBox checkBox, RadioGroup radioGroup, TextView textView) {
        this.rootView = constraintLayout;
        this.leftRb = radioButton;
        this.noRb = radioButton2;
        this.rightRb = radioButton3;
        this.selectCb = checkBox;
        this.turnRg = radioGroup;
        this.turnTv = textView;
    }

    public static CollectErrorTurnBinding bind(View view) {
        int i = R.id.leftRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.noRb;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                i = R.id.rightRb;
                RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                if (radioButton3 != null) {
                    i = R.id.selectCb;
                    CheckBox checkBox = (CheckBox) view.findViewById(i);
                    if (checkBox != null) {
                        i = R.id.turnRg;
                        RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                        if (radioGroup != null) {
                            i = R.id.turnTv;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                return new CollectErrorTurnBinding((ConstraintLayout) view, radioButton, radioButton2, radioButton3, checkBox, radioGroup, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorTurnBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorTurnBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_turn, viewGroup, false);
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
