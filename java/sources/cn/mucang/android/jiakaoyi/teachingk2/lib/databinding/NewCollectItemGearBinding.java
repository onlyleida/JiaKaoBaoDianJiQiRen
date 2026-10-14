package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemGearBinding implements a {
    public final RadioButton equalRb;
    public final TextView gearTv;
    public final TextView name;
    public final RadioButton notEqualRb;
    public final RadioGroup radioGroup;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final CheckBox select;

    private NewCollectItemGearBinding(ConstraintLayout constraintLayout, RadioButton radioButton, TextView textView, TextView textView2, RadioButton radioButton2, RadioGroup radioGroup, ImageView imageView, CheckBox checkBox) {
        this.rootView = constraintLayout;
        this.equalRb = radioButton;
        this.gearTv = textView;
        this.name = textView2;
        this.notEqualRb = radioButton2;
        this.radioGroup = radioGroup;
        this.refresh = imageView;
        this.select = checkBox;
    }

    public static NewCollectItemGearBinding bind(View view) {
        int i = R.id.equalRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.gearTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.name;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.notEqualRb;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                        if (radioGroup != null) {
                            i = R.id.refresh;
                            ImageView imageView = (ImageView) view.findViewById(i);
                            if (imageView != null) {
                                i = R.id.select;
                                CheckBox checkBox = (CheckBox) view.findViewById(i);
                                if (checkBox != null) {
                                    return new NewCollectItemGearBinding((ConstraintLayout) view, radioButton, textView, textView2, radioButton2, radioGroup, imageView, checkBox);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemGearBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemGearBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_gear, viewGroup, false);
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
