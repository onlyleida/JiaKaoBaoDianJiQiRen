package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogDeductDescBinding implements a {
    public final ImageView closeIv;
    public final EditText etDesc;
    public final ImageView line1;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final TextView titleTv;
    public final TextView tvDesc;

    private DialogDeductDescBinding(ConstraintLayout constraintLayout, ImageView imageView, EditText editText, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.etDesc = editText;
        this.line1 = imageView2;
        this.saveTv = textView;
        this.titleTv = textView2;
        this.tvDesc = textView3;
    }

    public static DialogDeductDescBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.etDesc;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.line1;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.saveTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.titleTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.tvDesc;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new DialogDeductDescBinding((ConstraintLayout) view, imageView, editText, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogDeductDescBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogDeductDescBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_deduct_desc, viewGroup, false);
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
