package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityFenceDetectorPageBinding implements a {
    public final ImageView back;
    public final Button collectBrakeDistance;
    public final TextView info;
    public final MapView mapView;
    private final FrameLayout rootView;
    public final TextView triggerInfo;

    private ActivityFenceDetectorPageBinding(FrameLayout frameLayout, ImageView imageView, Button button, TextView textView, MapView mapView, TextView textView2) {
        this.rootView = frameLayout;
        this.back = imageView;
        this.collectBrakeDistance = button;
        this.info = textView;
        this.mapView = mapView;
        this.triggerInfo = textView2;
    }

    public static ActivityFenceDetectorPageBinding bind(View view) {
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.collectBrakeDistance;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.info;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.mapView;
                    MapView mapView = (MapView) view.findViewById(i);
                    if (mapView != null) {
                        i = R.id.triggerInfo;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            return new ActivityFenceDetectorPageBinding((FrameLayout) view, imageView, button, textView, mapView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityFenceDetectorPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityFenceDetectorPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_fence_detector_page, viewGroup, false);
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
