package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogFaceEnbaleBinding implements a {
    public final TextView btnEnable;
    public final ImageView closeDialog;
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView text;

    private DialogFaceEnbaleBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnEnable = textView;
        this.closeDialog = imageView;
        this.image = imageView2;
        this.text = textView2;
    }

    public static DialogFaceEnbaleBinding bind(View view) {
        int i = R.id.btnEnable;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.close_dialog;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.image;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.text;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new DialogFaceEnbaleBinding((ConstraintLayout) view, textView, imageView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogFaceEnbaleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogFaceEnbaleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_face_enbale, viewGroup, false);
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
