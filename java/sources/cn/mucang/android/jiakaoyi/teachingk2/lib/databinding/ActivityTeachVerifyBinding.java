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
public final class ActivityTeachVerifyBinding implements a {
    public final ImageView backIv;
    public final View head;
    public final FrameLayout mapFl;
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private ActivityTeachVerifyBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, FrameLayout frameLayout, MapView mapView, TextView textView) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.head = view;
        this.mapFl = frameLayout;
        this.mapView = mapView;
        this.titleTv = textView;
    }

    public static ActivityTeachVerifyBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.head))) != null) {
            i = R.id.mapFl;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                i = R.id.mapView;
                MapView mapView = (MapView) view.findViewById(i);
                if (mapView != null) {
                    i = R.id.titleTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new ActivityTeachVerifyBinding((ConstraintLayout) view, imageView, viewFindViewById, frameLayout, mapView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTeachVerifyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTeachVerifyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_teach_verify, viewGroup, false);
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
