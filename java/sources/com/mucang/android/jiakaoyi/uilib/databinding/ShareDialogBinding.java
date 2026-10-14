package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ShareDialogBinding implements a {
    public final ImageView closeIv;
    public final ImageView line1;
    public final LinearLayout nameLayout;
    public final TextView okTv;
    public final EditText phoneEt;
    private final FrameLayout rootView;
    public final TextView titleTv;

    private ShareDialogBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, TextView textView, EditText editText, TextView textView2) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.line1 = imageView2;
        this.nameLayout = linearLayout;
        this.okTv = textView;
        this.phoneEt = editText;
        this.titleTv = textView2;
    }

    public static ShareDialogBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.line1;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.nameLayout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.okTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.phoneEt;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.titleTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                return new ShareDialogBinding((FrameLayout) view, imageView, imageView2, linearLayout, textView, editText, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ShareDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ShareDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.share_dialog, viewGroup, false);
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
