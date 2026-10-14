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
public final class BaseDialogFragmentBinding implements a {
    public final FrameLayout contentRoot;
    public final ImageView dialogBack;
    public final View divider;
    public final TextView fragmentTitle;
    public final FrameLayout headerFl;
    public final TextView rightTopAction;
    private final FrameLayout rootView;

    private BaseDialogFragmentBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, View view, TextView textView, FrameLayout frameLayout3, TextView textView2) {
        this.rootView = frameLayout;
        this.contentRoot = frameLayout2;
        this.dialogBack = imageView;
        this.divider = view;
        this.fragmentTitle = textView;
        this.headerFl = frameLayout3;
        this.rightTopAction = textView2;
    }

    public static BaseDialogFragmentBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.content_root;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = R.id.dialog_back;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                i = R.id.fragment_title;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.headerFl;
                    FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                    if (frameLayout2 != null) {
                        i = R.id.rightTopAction;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            return new BaseDialogFragmentBinding((FrameLayout) view, frameLayout, imageView, viewFindViewById, textView, frameLayout2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static BaseDialogFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static BaseDialogFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.base_dialog_fragment, viewGroup, false);
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
