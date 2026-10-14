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
public final class TeachCollectVItemDis2lineBinding implements a {
    public final RadioButton bigThan;
    public final RadioGroup disRadio;
    public final EditText disValue;
    public final RadioButton equal;
    public final LinearLayout equalLayout;
    public final EditText equalValue;
    private final LinearLayout rootView;
    public final RadioButton smallThan;

    private TeachCollectVItemDis2lineBinding(LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, EditText editText, RadioButton radioButton2, LinearLayout linearLayout2, EditText editText2, RadioButton radioButton3) {
        this.rootView = linearLayout;
        this.bigThan = radioButton;
        this.disRadio = radioGroup;
        this.disValue = editText;
        this.equal = radioButton2;
        this.equalLayout = linearLayout2;
        this.equalValue = editText2;
        this.smallThan = radioButton3;
    }

    public static TeachCollectVItemDis2lineBinding bind(View view) {
        int i = R.id.bigThan;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.disRadio;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.disValue;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.equal;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.equalLayout;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                        if (linearLayout != null) {
                            i = R.id.equalValue;
                            EditText editText2 = (EditText) view.findViewById(i);
                            if (editText2 != null) {
                                i = R.id.smallThan;
                                RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                if (radioButton3 != null) {
                                    return new TeachCollectVItemDis2lineBinding((LinearLayout) view, radioButton, radioGroup, editText, radioButton2, linearLayout, editText2, radioButton3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemDis2lineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemDis2lineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_dis2line, viewGroup, false);
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
