package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DeductSettingItemStepBinding implements a {
    private final FrameLayout rootView;
    public final TextView stepName;

    private DeductSettingItemStepBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.stepName = textView;
    }

    public static DeductSettingItemStepBinding bind(View view) {
        int i = R.id.stepName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new DeductSettingItemStepBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DeductSettingItemStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DeductSettingItemStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.deduct_setting_item_step, viewGroup, false);
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
