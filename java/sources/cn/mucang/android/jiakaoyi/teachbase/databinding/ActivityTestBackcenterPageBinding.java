package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTestBackcenterPageBinding implements a {
    public final Button back;
    public final TextView info;
    public final MapView mapView;
    private final FrameLayout rootView;

    private ActivityTestBackcenterPageBinding(FrameLayout frameLayout, Button button, TextView textView, MapView mapView) {
        this.rootView = frameLayout;
        this.back = button;
        this.info = textView;
        this.mapView = mapView;
    }

    public static ActivityTestBackcenterPageBinding bind(View view) {
        int i = R.id.back;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.info;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.mapView;
                MapView mapView = (MapView) view.findViewById(i);
                if (mapView != null) {
                    return new ActivityTestBackcenterPageBinding((FrameLayout) view, button, textView, mapView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTestBackcenterPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestBackcenterPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_backcenter_page, viewGroup, false);
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
