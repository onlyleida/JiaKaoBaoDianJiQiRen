package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogExamHpPreviewFragmentBinding implements a {
    public final ImageView closeIv;
    public final MapView mapView;
    public final ProgressBar progress;
    private final RelativeLayout rootView;

    private DialogExamHpPreviewFragmentBinding(RelativeLayout relativeLayout, ImageView imageView, MapView mapView, ProgressBar progressBar) {
        this.rootView = relativeLayout;
        this.closeIv = imageView;
        this.mapView = mapView;
        this.progress = progressBar;
    }

    public static DialogExamHpPreviewFragmentBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.mapView;
            MapView mapView = (MapView) view.findViewById(i);
            if (mapView != null) {
                i = R.id.progress;
                ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                if (progressBar != null) {
                    return new DialogExamHpPreviewFragmentBinding((RelativeLayout) view, imageView, mapView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogExamHpPreviewFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogExamHpPreviewFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_exam_hp_preview_fragment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
