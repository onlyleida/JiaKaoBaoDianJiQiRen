package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityCarPreviewBinding implements a {
    public final TextView infoTv;
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding title;

    private ActivityCarPreviewBinding(ConstraintLayout constraintLayout, TextView textView, MapView mapView, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.infoTv = textView;
        this.mapView = mapView;
        this.title = commonTitleBinding;
    }

    public static ActivityCarPreviewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.infoTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.mapView;
            MapView mapView = (MapView) view.findViewById(i);
            if (mapView != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                return new ActivityCarPreviewBinding((ConstraintLayout) view, textView, mapView, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCarPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCarPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_car_preview, viewGroup, false);
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
