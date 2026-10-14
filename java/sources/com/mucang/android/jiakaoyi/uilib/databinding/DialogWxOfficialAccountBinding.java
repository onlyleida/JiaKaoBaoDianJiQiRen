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
public final class DialogWxOfficialAccountBinding implements a {
    public final ImageView closeDialog;
    public final TextView dialogTitle;
    private final FrameLayout rootView;
    public final FrameLayout webViewContainer;

    private DialogWxOfficialAccountBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.closeDialog = imageView;
        this.dialogTitle = textView;
        this.webViewContainer = frameLayout2;
    }

    public static DialogWxOfficialAccountBinding bind(View view) {
        int i = R.id.close_dialog;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dialog_title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.web_view_container;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    return new DialogWxOfficialAccountBinding((FrameLayout) view, imageView, textView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogWxOfficialAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogWxOfficialAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_wx_official_account, viewGroup, false);
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
