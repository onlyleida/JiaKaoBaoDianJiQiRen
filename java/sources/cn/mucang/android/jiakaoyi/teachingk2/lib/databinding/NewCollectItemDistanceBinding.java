package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemDistanceBinding implements a {
    public final RadioButton bigRb;
    public final ImageView deleteIv;
    public final EditText distanceTv;
    public final RadioButton equalRb;
    public final TextView name;
    public final RadioGroup radioGroup;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final RadioButton smallRb;

    private NewCollectItemDistanceBinding(ConstraintLayout constraintLayout, RadioButton radioButton, ImageView imageView, EditText editText, RadioButton radioButton2, TextView textView, RadioGroup radioGroup, ImageView imageView2, RadioButton radioButton3) {
        this.rootView = constraintLayout;
        this.bigRb = radioButton;
        this.deleteIv = imageView;
        this.distanceTv = editText;
        this.equalRb = radioButton2;
        this.name = textView;
        this.radioGroup = radioGroup;
        this.refresh = imageView2;
        this.smallRb = radioButton3;
    }

    public static NewCollectItemDistanceBinding bind(View view) {
        int i = R.id.bigRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.deleteIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.distanceTv;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.equalRb;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.name;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                            if (radioGroup != null) {
                                i = R.id.refresh;
                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                if (imageView2 != null) {
                                    i = R.id.smallRb;
                                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                    if (radioButton3 != null) {
                                        return new NewCollectItemDistanceBinding((ConstraintLayout) view, radioButton, imageView, editText, radioButton2, textView, radioGroup, imageView2, radioButton3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemDistanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemDistanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_distance, viewGroup, false);
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
