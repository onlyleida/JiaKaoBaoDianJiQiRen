package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogFragmentCoachArrearsOverBinding implements a {
    public final ImageView closeDialog;
    public final TextView dialogTitle;
    public final TextView hintContent;
    private final FrameLayout rootView;

    private DialogFragmentCoachArrearsOverBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.closeDialog = imageView;
        this.dialogTitle = textView;
        this.hintContent = textView2;
    }

    public static DialogFragmentCoachArrearsOverBinding bind(View view) {
        int i = R.id.close_dialog;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dialog_title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.hint_content;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new DialogFragmentCoachArrearsOverBinding((FrameLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogFragmentCoachArrearsOverBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogFragmentCoachArrearsOverBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_fragment_coach_arrears_over, viewGroup, false);
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
