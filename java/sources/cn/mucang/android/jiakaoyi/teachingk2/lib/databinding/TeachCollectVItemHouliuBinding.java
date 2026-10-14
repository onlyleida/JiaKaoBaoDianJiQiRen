package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemHouliuBinding implements a {
    public final RadioButton bigThan;
    public final RadioGroup disRadio;
    public final EditText houliuValue;
    private final LinearLayout rootView;
    public final RadioButton smallThan;

    private TeachCollectVItemHouliuBinding(LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, EditText editText, RadioButton radioButton2) {
        this.rootView = linearLayout;
        this.bigThan = radioButton;
        this.disRadio = radioGroup;
        this.houliuValue = editText;
        this.smallThan = radioButton2;
    }

    public static TeachCollectVItemHouliuBinding bind(View view) {
        int i = R.id.bigThan;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.disRadio;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.houliuValue;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.smallThan;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        return new TeachCollectVItemHouliuBinding((LinearLayout) view, radioButton, radioGroup, editText, radioButton2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemHouliuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemHouliuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_houliu, viewGroup, false);
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
