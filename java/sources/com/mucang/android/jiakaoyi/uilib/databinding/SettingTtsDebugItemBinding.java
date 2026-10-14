package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingTtsDebugItemBinding implements a {
    private final TextView rootView;

    private SettingTtsDebugItemBinding(TextView textView) {
        this.rootView = textView;
    }

    public static SettingTtsDebugItemBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new SettingTtsDebugItemBinding((TextView) view);
    }

    public static SettingTtsDebugItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingTtsDebugItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_tts_debug_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public TextView getRoot() {
        return this.rootView;
    }
}
