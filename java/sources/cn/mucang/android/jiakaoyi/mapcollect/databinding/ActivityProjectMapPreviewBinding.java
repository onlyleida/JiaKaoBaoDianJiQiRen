package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityProjectMapPreviewBinding implements a {
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityProjectMapPreviewBinding(ConstraintLayout constraintLayout, MapView mapView, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.mapView = mapView;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityProjectMapPreviewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.mapView;
        MapView mapView = (MapView) view.findViewById(i);
        if (mapView == null || (viewFindViewById = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivityProjectMapPreviewBinding((ConstraintLayout) view, mapView, CommonTitleBinding.bind(viewFindViewById));
    }

    public static ActivityProjectMapPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityProjectMapPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_project_map_preview, viewGroup, false);
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
