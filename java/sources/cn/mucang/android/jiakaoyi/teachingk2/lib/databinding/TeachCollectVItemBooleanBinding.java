package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemBooleanBinding implements a {
    public final RadioButton isNo;
    public final RadioButton isYes;
    private final LinearLayout rootView;

    private TeachCollectVItemBooleanBinding(LinearLayout linearLayout, RadioButton radioButton, RadioButton radioButton2) {
        this.rootView = linearLayout;
        this.isNo = radioButton;
        this.isYes = radioButton2;
    }

    public static TeachCollectVItemBooleanBinding bind(View view) {
        int i = R.id.isNo;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.isYes;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                return new TeachCollectVItemBooleanBinding((LinearLayout) view, radioButton, radioButton2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemBooleanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemBooleanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_boolean, viewGroup, false);
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
