package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.RadarSignalView;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutRadarSignalSmallBinding implements a {
    public final RadarSignalView backRadar;
    public final ImageView car;
    public final RadarSignalView frontRadar;
    private final ConstraintLayout rootView;

    private LayoutRadarSignalSmallBinding(ConstraintLayout constraintLayout, RadarSignalView radarSignalView, ImageView imageView, RadarSignalView radarSignalView2) {
        this.rootView = constraintLayout;
        this.backRadar = radarSignalView;
        this.car = imageView;
        this.frontRadar = radarSignalView2;
    }

    public static LayoutRadarSignalSmallBinding bind(View view) {
        int i = R.id.backRadar;
        RadarSignalView radarSignalView = (RadarSignalView) view.findViewById(i);
        if (radarSignalView != null) {
            i = R.id.car;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.frontRadar;
                RadarSignalView radarSignalView2 = (RadarSignalView) view.findViewById(i);
                if (radarSignalView2 != null) {
                    return new LayoutRadarSignalSmallBinding((ConstraintLayout) view, radarSignalView, imageView, radarSignalView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutRadarSignalSmallBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutRadarSignalSmallBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_radar_signal_small, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
