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
public final class TeachCollectVItemRectPosBinding implements a {
    public final RadioButton isLeft;
    public final RadioButton isMiddle;
    public final RadioButton isRight;
    public final RadioGroup posRadio;
    private final LinearLayout rootView;

    private TeachCollectVItemRectPosBinding(LinearLayout linearLayout, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.isLeft = radioButton;
        this.isMiddle = radioButton2;
        this.isRight = radioButton3;
        this.posRadio = radioGroup;
    }

    public static TeachCollectVItemRectPosBinding bind(View view) {
        int i = R.id.isLeft;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.isMiddle;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                i = R.id.isRight;
                RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                if (radioButton3 != null) {
                    i = R.id.posRadio;
                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                    if (radioGroup != null) {
                        return new TeachCollectVItemRectPosBinding((LinearLayout) view, radioButton, radioButton2, radioButton3, radioGroup);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemRectPosBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemRectPosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_rect_pos, viewGroup, false);
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
