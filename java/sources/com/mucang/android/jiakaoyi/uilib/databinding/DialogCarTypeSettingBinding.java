package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogCarTypeSettingBinding implements a {
    public final TextView descTv;
    public final ProgressBar progress;
    public final TextView rightTv;
    private final FrameLayout rootView;

    private DialogCarTypeSettingBinding(FrameLayout frameLayout, TextView textView, ProgressBar progressBar, TextView textView2) {
        this.rootView = frameLayout;
        this.descTv = textView;
        this.progress = progressBar;
        this.rightTv = textView2;
    }

    public static DialogCarTypeSettingBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.progress;
            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
            if (progressBar != null) {
                i = R.id.rightTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new DialogCarTypeSettingBinding((FrameLayout) view, textView, progressBar, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogCarTypeSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCarTypeSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_car_type_setting, viewGroup, false);
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
