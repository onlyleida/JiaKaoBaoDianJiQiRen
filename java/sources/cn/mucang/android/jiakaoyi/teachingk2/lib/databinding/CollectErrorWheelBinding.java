package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectErrorWheelBinding implements a {
    public final EditText angleEt;
    public final TextView directionTv;
    public final RadioButton leftRb;
    public final Space middle;
    public final RadioButton middleR;
    public final RadioGroup radioGroup;
    public final EditText radiusEt;
    public final RadioButton rightRb;
    private final ConstraintLayout rootView;
    public final CheckBox steeringCb;
    public final TextView title1;
    public final TextView title2;

    private CollectErrorWheelBinding(ConstraintLayout constraintLayout, EditText editText, TextView textView, RadioButton radioButton, Space space, RadioButton radioButton2, RadioGroup radioGroup, EditText editText2, RadioButton radioButton3, CheckBox checkBox, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.angleEt = editText;
        this.directionTv = textView;
        this.leftRb = radioButton;
        this.middle = space;
        this.middleR = radioButton2;
        this.radioGroup = radioGroup;
        this.radiusEt = editText2;
        this.rightRb = radioButton3;
        this.steeringCb = checkBox;
        this.title1 = textView2;
        this.title2 = textView3;
    }

    public static CollectErrorWheelBinding bind(View view) {
        int i = R.id.angleEt;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.directionTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.leftRb;
                RadioButton radioButton = (RadioButton) view.findViewById(i);
                if (radioButton != null) {
                    i = R.id.middle;
                    Space space = (Space) view.findViewById(i);
                    if (space != null) {
                        i = R.id.middleR;
                        RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                        if (radioButton2 != null) {
                            i = R.id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                            if (radioGroup != null) {
                                i = R.id.radiusEt;
                                EditText editText2 = (EditText) view.findViewById(i);
                                if (editText2 != null) {
                                    i = R.id.rightRb;
                                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                    if (radioButton3 != null) {
                                        i = R.id.steeringCb;
                                        CheckBox checkBox = (CheckBox) view.findViewById(i);
                                        if (checkBox != null) {
                                            i = R.id.title1;
                                            TextView textView2 = (TextView) view.findViewById(i);
                                            if (textView2 != null) {
                                                i = R.id.title2;
                                                TextView textView3 = (TextView) view.findViewById(i);
                                                if (textView3 != null) {
                                                    return new CollectErrorWheelBinding((ConstraintLayout) view, editText, textView, radioButton, space, radioButton2, radioGroup, editText2, radioButton3, checkBox, textView2, textView3);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorWheelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorWheelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_wheel, viewGroup, false);
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
