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
public final class CollectErrorLightBinding implements a {
    public final RadioButton leftLightRb;
    public final CheckBox lightCb;
    public final RadioGroup lightRg;
    public final TextView lightTv;
    public final RadioButton offRb;
    public final RadioButton rightLightRb;
    private final ConstraintLayout rootView;

    private CollectErrorLightBinding(ConstraintLayout constraintLayout, RadioButton radioButton, CheckBox checkBox, RadioGroup radioGroup, TextView textView, RadioButton radioButton2, RadioButton radioButton3) {
        this.rootView = constraintLayout;
        this.leftLightRb = radioButton;
        this.lightCb = checkBox;
        this.lightRg = radioGroup;
        this.lightTv = textView;
        this.offRb = radioButton2;
        this.rightLightRb = radioButton3;
    }

    public static CollectErrorLightBinding bind(View view) {
        int i = R.id.leftLightRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.lightCb;
            CheckBox checkBox = (CheckBox) view.findViewById(i);
            if (checkBox != null) {
                i = R.id.lightRg;
                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                if (radioGroup != null) {
                    i = R.id.lightTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.offRb;
                        RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                        if (radioButton2 != null) {
                            i = R.id.rightLightRb;
                            RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                            if (radioButton3 != null) {
                                return new CollectErrorLightBinding((ConstraintLayout) view, radioButton, checkBox, radioGroup, textView, radioButton2, radioButton3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorLightBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorLightBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_light, viewGroup, false);
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
