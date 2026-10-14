package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAcceptanceMapBinding implements a {
    public final ImageView backIv;
    public final TextView infoTv;
    public final FrameLayout mapFl;
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final RobotStatusBarBinding statusBar;
    public final TextView submitTv;
    public final TextView titleTv;

    private ActivityAcceptanceMapBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, FrameLayout frameLayout, MapView mapView, TextView textView2, RobotStatusBarBinding robotStatusBarBinding, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.infoTv = textView;
        this.mapFl = frameLayout;
        this.mapView = mapView;
        this.saveTv = textView2;
        this.statusBar = robotStatusBarBinding;
        this.submitTv = textView3;
        this.titleTv = textView4;
    }

    public static ActivityAcceptanceMapBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.infoTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.mapFl;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.mapView;
                    MapView mapView = (MapView) view.findViewById(i);
                    if (mapView != null) {
                        i = R.id.saveTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.statusBar))) != null) {
                            RobotStatusBarBinding robotStatusBarBindingBind = RobotStatusBarBinding.bind(viewFindViewById);
                            i = R.id.submitTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.titleTv;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    return new ActivityAcceptanceMapBinding((ConstraintLayout) view, imageView, textView, frameLayout, mapView, textView2, robotStatusBarBindingBind, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityAcceptanceMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAcceptanceMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_acceptance_map, viewGroup, false);
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
