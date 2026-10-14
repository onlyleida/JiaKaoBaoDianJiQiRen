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
public final class TeachCollectVItemTriggerlineBinding implements a {
    public final RadioGroup crossLayout;
    public final RadioGroup extendLayout;
    public final RadioButton need;
    public final RadioButton needExt;
    public final RadioButton noNeed;
    public final RadioButton noNeedExt;
    private final LinearLayout rootView;

    private TeachCollectVItemTriggerlineBinding(LinearLayout linearLayout, RadioGroup radioGroup, RadioGroup radioGroup2, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioButton radioButton4) {
        this.rootView = linearLayout;
        this.crossLayout = radioGroup;
        this.extendLayout = radioGroup2;
        this.need = radioButton;
        this.needExt = radioButton2;
        this.noNeed = radioButton3;
        this.noNeedExt = radioButton4;
    }

    public static TeachCollectVItemTriggerlineBinding bind(View view) {
        int i = R.id.crossLayout;
        RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
        if (radioGroup != null) {
            i = R.id.extendLayout;
            RadioGroup radioGroup2 = (RadioGroup) view.findViewById(i);
            if (radioGroup2 != null) {
                i = R.id.need;
                RadioButton radioButton = (RadioButton) view.findViewById(i);
                if (radioButton != null) {
                    i = R.id.needExt;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.noNeed;
                        RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                        if (radioButton3 != null) {
                            i = R.id.noNeedExt;
                            RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                            if (radioButton4 != null) {
                                return new TeachCollectVItemTriggerlineBinding((LinearLayout) view, radioGroup, radioGroup2, radioButton, radioButton2, radioButton3, radioButton4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemTriggerlineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemTriggerlineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_triggerline, viewGroup, false);
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
