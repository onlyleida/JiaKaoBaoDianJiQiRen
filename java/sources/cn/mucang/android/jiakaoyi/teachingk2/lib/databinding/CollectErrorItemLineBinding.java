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
public final class CollectErrorItemLineBinding implements a {
    public final RadioButton bigRb;
    public final EditText distanceTv;
    public final RadioButton equalRb;
    public final TextView lineTv;
    public final TextView name;
    public final RadioGroup radioGroup;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final RadioButton smallRb;

    private CollectErrorItemLineBinding(ConstraintLayout constraintLayout, RadioButton radioButton, EditText editText, RadioButton radioButton2, TextView textView, TextView textView2, RadioGroup radioGroup, ImageView imageView, RadioButton radioButton3) {
        this.rootView = constraintLayout;
        this.bigRb = radioButton;
        this.distanceTv = editText;
        this.equalRb = radioButton2;
        this.lineTv = textView;
        this.name = textView2;
        this.radioGroup = radioGroup;
        this.refresh = imageView;
        this.smallRb = radioButton3;
    }

    public static CollectErrorItemLineBinding bind(View view) {
        int i = R.id.bigRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.distanceTv;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.equalRb;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    i = R.id.lineTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.name;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                            if (radioGroup != null) {
                                i = R.id.refresh;
                                ImageView imageView = (ImageView) view.findViewById(i);
                                if (imageView != null) {
                                    i = R.id.smallRb;
                                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                    if (radioButton3 != null) {
                                        return new CollectErrorItemLineBinding((ConstraintLayout) view, radioButton, editText, radioButton2, textView, textView2, radioGroup, imageView, radioButton3);
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

    public static CollectErrorItemLineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorItemLineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_item_line, viewGroup, false);
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
