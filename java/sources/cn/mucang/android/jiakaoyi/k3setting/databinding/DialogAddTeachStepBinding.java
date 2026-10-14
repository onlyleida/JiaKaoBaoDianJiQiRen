package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogAddTeachStepBinding implements a {
    public final TextView addTeachStepTv;
    public final TextView cancelTv;
    public final ImageView imgMore;
    private final FrameLayout rootView;
    public final LinearLayout spinnerStepLayout;
    public final EditText teachRemark;
    public final TextView tvStepName;

    private DialogAddTeachStepBinding(FrameLayout frameLayout, TextView textView, TextView textView2, ImageView imageView, LinearLayout linearLayout, EditText editText, TextView textView3) {
        this.rootView = frameLayout;
        this.addTeachStepTv = textView;
        this.cancelTv = textView2;
        this.imgMore = imageView;
        this.spinnerStepLayout = linearLayout;
        this.teachRemark = editText;
        this.tvStepName = textView3;
    }

    public static DialogAddTeachStepBinding bind(View view) {
        int i = R.id.addTeachStepTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cancelTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.img_more;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.spinner_step_layout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.teach_remark;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.tv_step_name;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new DialogAddTeachStepBinding((FrameLayout) view, textView, textView2, imageView, linearLayout, editText, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAddTeachStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAddTeachStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_add_teach_step, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
