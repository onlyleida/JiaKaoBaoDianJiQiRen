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
public final class NewCollectItemDirectionBinding implements a {
    public final RadioButton backRb;
    public final RadioButton forwardRb;
    public final TextView name;
    public final RadioGroup radioGroup;
    private final ConstraintLayout rootView;
    public final CheckBox select;
    public final RadioButton stopRb;

    private NewCollectItemDirectionBinding(ConstraintLayout constraintLayout, RadioButton radioButton, RadioButton radioButton2, TextView textView, RadioGroup radioGroup, CheckBox checkBox, RadioButton radioButton3) {
        this.rootView = constraintLayout;
        this.backRb = radioButton;
        this.forwardRb = radioButton2;
        this.name = textView;
        this.radioGroup = radioGroup;
        this.select = checkBox;
        this.stopRb = radioButton3;
    }

    public static NewCollectItemDirectionBinding bind(View view) {
        int i = R.id.backRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.forwardRb;
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
                            i = R.id.stopRb;
                            RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                            if (radioButton3 != null) {
                                return new NewCollectItemDirectionBinding((ConstraintLayout) view, radioButton, radioButton2, textView, radioGroup, checkBox, radioButton3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemDirectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemDirectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_direction, viewGroup, false);
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
