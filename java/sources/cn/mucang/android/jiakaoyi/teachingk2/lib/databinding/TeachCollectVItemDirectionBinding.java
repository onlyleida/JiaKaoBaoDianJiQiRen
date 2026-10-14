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
public final class TeachCollectVItemDirectionBinding implements a {
    public final RadioButton back;
    public final RadioGroup directionLayout;
    public final RadioButton forward;
    private final LinearLayout rootView;
    public final RadioButton stop;

    private TeachCollectVItemDirectionBinding(LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, RadioButton radioButton2, RadioButton radioButton3) {
        this.rootView = linearLayout;
        this.back = radioButton;
        this.directionLayout = radioGroup;
        this.forward = radioButton2;
        this.stop = radioButton3;
    }

    public static TeachCollectVItemDirectionBinding bind(View view) {
        int i = R.id.back;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.directionLayout;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.forward;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    i = R.id.stop;
                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                    if (radioButton3 != null) {
                        return new TeachCollectVItemDirectionBinding((LinearLayout) view, radioButton, radioGroup, radioButton2, radioButton3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemDirectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemDirectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_direction, viewGroup, false);
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
