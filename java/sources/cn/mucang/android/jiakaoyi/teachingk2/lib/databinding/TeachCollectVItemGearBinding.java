package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemGearBinding implements a {
    public final RadioButton equal;
    public final RadioGroup gearRadio;
    public final RadioButton notEqual;
    private final LinearLayout rootView;

    private TeachCollectVItemGearBinding(LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, RadioButton radioButton2) {
        this.rootView = linearLayout;
        this.equal = radioButton;
        this.gearRadio = radioGroup;
        this.notEqual = radioButton2;
    }

    public static TeachCollectVItemGearBinding bind(View view) {
        int i = R.id.equal;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.gearRadio;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.notEqual;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    return new TeachCollectVItemGearBinding((LinearLayout) view, radioButton, radioGroup, radioButton2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemGearBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemGearBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_gear, viewGroup, false);
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
