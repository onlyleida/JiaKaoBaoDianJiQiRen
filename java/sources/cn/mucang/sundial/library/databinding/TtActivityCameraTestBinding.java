package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.widget.CornerPathFrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityCameraTestBinding implements a {
    public final CornerPathFrameLayout cameraContainer;
    public final FrameLayout cameraLayout;
    public final TextureView cameraView;
    private final ConstraintLayout rootView;

    private TtActivityCameraTestBinding(ConstraintLayout constraintLayout, CornerPathFrameLayout cornerPathFrameLayout, FrameLayout frameLayout, TextureView textureView) {
        this.rootView = constraintLayout;
        this.cameraContainer = cornerPathFrameLayout;
        this.cameraLayout = frameLayout;
        this.cameraView = textureView;
    }

    public static TtActivityCameraTestBinding bind(View view) {
        String str;
        CornerPathFrameLayout cornerPathFrameLayout = (CornerPathFrameLayout) view.findViewById(R.id.camera_container);
        if (cornerPathFrameLayout != null) {
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.cameraLayout);
            if (frameLayout != null) {
                TextureView textureView = (TextureView) view.findViewById(R.id.camera_view);
                if (textureView != null) {
                    return new TtActivityCameraTestBinding((ConstraintLayout) view, cornerPathFrameLayout, frameLayout, textureView);
                }
                str = "cameraView";
            } else {
                str = "cameraLayout";
            }
        } else {
            str = "cameraContainer";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityCameraTestBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityCameraTestBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt_activity_camera_test, viewGroup, false);
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
