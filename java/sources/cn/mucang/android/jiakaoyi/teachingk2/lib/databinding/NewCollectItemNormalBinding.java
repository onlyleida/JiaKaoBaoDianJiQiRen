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
public final class NewCollectItemNormalBinding implements a {
    public final RadioButton areaRb;
    public final RadioButton lineRb;
    public final TextView name;
    public final RadioGroup radioGroup;
    public final EditText rangeEt;
    public final TextView rangeTv;
    private final ConstraintLayout rootView;
    public final CheckBox selectCb;
    public final TextView temp;

    private NewCollectItemNormalBinding(ConstraintLayout constraintLayout, RadioButton radioButton, RadioButton radioButton2, TextView textView, RadioGroup radioGroup, EditText editText, TextView textView2, CheckBox checkBox, TextView textView3) {
        this.rootView = constraintLayout;
        this.areaRb = radioButton;
        this.lineRb = radioButton2;
        this.name = textView;
        this.radioGroup = radioGroup;
        this.rangeEt = editText;
        this.rangeTv = textView2;
        this.selectCb = checkBox;
        this.temp = textView3;
    }

    public static NewCollectItemNormalBinding bind(View view) {
        int i = R.id.areaRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.lineRb;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                i = R.id.name;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.radioGroup;
                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                    if (radioGroup != null) {
                        i = R.id.rangeEt;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.rangeTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.selectCb;
                                CheckBox checkBox = (CheckBox) view.findViewById(i);
                                if (checkBox != null) {
                                    i = R.id.temp;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        return new NewCollectItemNormalBinding((ConstraintLayout) view, radioButton, radioButton2, textView, radioGroup, editText, textView2, checkBox, textView3);
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

    public static NewCollectItemNormalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemNormalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_normal, viewGroup, false);
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
