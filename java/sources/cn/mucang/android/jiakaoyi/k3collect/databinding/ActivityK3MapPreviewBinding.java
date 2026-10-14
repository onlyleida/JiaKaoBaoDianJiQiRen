package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3MapPreviewBinding implements a {
    public final MapView mapView;
    public final ProgressBar pbPreview;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityK3MapPreviewBinding(ConstraintLayout constraintLayout, MapView mapView, ProgressBar progressBar, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.mapView = mapView;
        this.pbPreview = progressBar;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityK3MapPreviewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.mapView;
        MapView mapView = (MapView) view.findViewById(i);
        if (mapView != null) {
            i = R.id.pbPreview;
            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
            if (progressBar != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                return new ActivityK3MapPreviewBinding((ConstraintLayout) view, mapView, progressBar, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityK3MapPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3MapPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_map_preview, viewGroup, false);
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
