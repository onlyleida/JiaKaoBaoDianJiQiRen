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
public final class TeachCollectVItemStopBinding implements a {
    public final RadioButton needNotStop;
    public final RadioButton needStop;
    private final LinearLayout rootView;
    public final RadioGroup stopGroup;

    private TeachCollectVItemStopBinding(LinearLayout linearLayout, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.needNotStop = radioButton;
        this.needStop = radioButton2;
        this.stopGroup = radioGroup;
    }

    public static TeachCollectVItemStopBinding bind(View view) {
        int i = R.id.needNotStop;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.needStop;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                i = R.id.stopGroup;
                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                if (radioGroup != null) {
                    return new TeachCollectVItemStopBinding((LinearLayout) view, radioButton, radioButton2, radioGroup);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemStopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemStopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_stop, viewGroup, false);
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
