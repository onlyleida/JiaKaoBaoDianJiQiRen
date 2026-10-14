package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTestSpeedControlBinding implements a {
    public final Button action;
    public final TextView info;
    private final FrameLayout rootView;

    private ActivityTestSpeedControlBinding(FrameLayout frameLayout, Button button, TextView textView) {
        this.rootView = frameLayout;
        this.action = button;
        this.info = textView;
    }

    public static ActivityTestSpeedControlBinding bind(View view) {
        int i = R.id.action;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.info;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new ActivityTestSpeedControlBinding((FrameLayout) view, button, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTestSpeedControlBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestSpeedControlBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_speed_control, viewGroup, false);
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
