package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityMapPreviewBinding implements a {
    public final MapView mapView;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityMapPreviewBinding(LinearLayout linearLayout, MapView mapView, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.mapView = mapView;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityMapPreviewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.mapView;
        MapView mapView = (MapView) view.findViewById(i);
        if (mapView == null || (viewFindViewById = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivityMapPreviewBinding((LinearLayout) view, mapView, CommonTitleBinding.bind(viewFindViewById));
    }

    public static ActivityMapPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMapPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_map_preview, viewGroup, false);
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
