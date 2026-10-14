package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.amap.api.maps.TextureMapView;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamPreviewFragmentBinding implements a {
    public final ImageView closeIv;
    public final TextureMapView mapView;
    private final FrameLayout rootView;

    private ExamPreviewFragmentBinding(FrameLayout frameLayout, ImageView imageView, TextureMapView textureMapView) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.mapView = textureMapView;
    }

    public static ExamPreviewFragmentBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.mapView;
            TextureMapView textureMapView = (TextureMapView) view.findViewById(i);
            if (textureMapView != null) {
                return new ExamPreviewFragmentBinding((FrameLayout) view, imageView, textureMapView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamPreviewFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamPreviewFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_preview_fragment, viewGroup, false);
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
