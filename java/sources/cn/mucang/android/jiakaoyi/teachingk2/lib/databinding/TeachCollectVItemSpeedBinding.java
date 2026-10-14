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
public final class TeachCollectVItemSpeedBinding implements a {
    public final RadioButton bigThan;
    public final RadioGroup disRadio;
    public final RadioButton equal;
    private final LinearLayout rootView;
    public final RadioButton smallThan;

    private TeachCollectVItemSpeedBinding(LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, RadioButton radioButton2, RadioButton radioButton3) {
        this.rootView = linearLayout;
        this.bigThan = radioButton;
        this.disRadio = radioGroup;
        this.equal = radioButton2;
        this.smallThan = radioButton3;
    }

    public static TeachCollectVItemSpeedBinding bind(View view) {
        int i = R.id.bigThan;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.disRadio;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.equal;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    i = R.id.smallThan;
                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                    if (radioButton3 != null) {
                        return new TeachCollectVItemSpeedBinding((LinearLayout) view, radioButton, radioGroup, radioButton2, radioButton3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemSpeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemSpeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_speed, viewGroup, false);
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
