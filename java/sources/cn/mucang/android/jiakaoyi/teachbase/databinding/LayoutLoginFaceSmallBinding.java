package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutLoginFaceSmallBinding implements a {
    public final SurfaceViewRenderer aiCamera;
    public final UVCCameraTextureView camera;
    public final FrameLayout cameraContainer;
    public final ImageView circleIv;
    public final TextView faceTipTv;
    public final ImageView mask;
    private final ConstraintLayout rootView;
    public final CardView scanCard;
    public final View scanView;

    private LayoutLoginFaceSmallBinding(ConstraintLayout constraintLayout, SurfaceViewRenderer surfaceViewRenderer, UVCCameraTextureView uVCCameraTextureView, FrameLayout frameLayout, ImageView imageView, TextView textView, ImageView imageView2, CardView cardView, View view) {
        this.rootView = constraintLayout;
        this.aiCamera = surfaceViewRenderer;
        this.camera = uVCCameraTextureView;
        this.cameraContainer = frameLayout;
        this.circleIv = imageView;
        this.faceTipTv = textView;
        this.mask = imageView2;
        this.scanCard = cardView;
        this.scanView = view;
    }

    public static LayoutLoginFaceSmallBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.aiCamera;
        SurfaceViewRenderer surfaceViewRenderer = (SurfaceViewRenderer) view.findViewById(i);
        if (surfaceViewRenderer != null) {
            i = R.id.camera;
            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
            if (uVCCameraTextureView != null) {
                i = R.id.cameraContainer;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.circleIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.faceTipTv;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.mask;
                            ImageView imageView2 = (ImageView) view.findViewById(i);
                            if (imageView2 != null) {
                                i = R.id.scanCard;
                                CardView cardView = (CardView) view.findViewById(i);
                                if (cardView != null && (viewFindViewById = view.findViewById((i = R.id.scanView))) != null) {
                                    return new LayoutLoginFaceSmallBinding((ConstraintLayout) view, surfaceViewRenderer, uVCCameraTextureView, frameLayout, imageView, textView, imageView2, cardView, viewFindViewById);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutLoginFaceSmallBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginFaceSmallBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_face_small, viewGroup, false);
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
