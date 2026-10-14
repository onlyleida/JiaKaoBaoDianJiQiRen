package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingItemDiverBinding implements a {
    private final FrameLayout rootView;

    private SettingItemDiverBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static SettingItemDiverBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new SettingItemDiverBinding((FrameLayout) view);
    }

    public static SettingItemDiverBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingItemDiverBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_item_diver, viewGroup, false);
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
