package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingCollectGpsActivityBinding implements a {
    public final Button action;
    public final Button back;
    private final LinearLayout rootView;

    private SettingCollectGpsActivityBinding(LinearLayout linearLayout, Button button, Button button2) {
        this.rootView = linearLayout;
        this.action = button;
        this.back = button2;
    }

    public static SettingCollectGpsActivityBinding bind(View view) {
        int i = R.id.action;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.back;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                return new SettingCollectGpsActivityBinding((LinearLayout) view, button, button2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SettingCollectGpsActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingCollectGpsActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_collect_gps_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
