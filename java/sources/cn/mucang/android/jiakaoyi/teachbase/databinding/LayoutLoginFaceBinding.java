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
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceBorderView;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutLoginFaceBinding implements a {
    public final SurfaceViewRenderer aiCamera;
    public final FaceBorderView borderView;
    public final TextView btnFaceCheck;
    public final UVCCameraTextureView camera;
    public final FrameLayout cameraContainer;
    public final ImageView circleIv;
    public final TextView faceTipTv;
    public final ImageView mask;
    private final ConstraintLayout rootView;
    public final CardView scanCard;
    public final View scanView;

    private LayoutLoginFaceBinding(ConstraintLayout constraintLayout, SurfaceViewRenderer surfaceViewRenderer, FaceBorderView faceBorderView, TextView textView, UVCCameraTextureView uVCCameraTextureView, FrameLayout frameLayout, ImageView imageView, TextView textView2, ImageView imageView2, CardView cardView, View view) {
        this.rootView = constraintLayout;
        this.aiCamera = surfaceViewRenderer;
        this.borderView = faceBorderView;
        this.btnFaceCheck = textView;
        this.camera = uVCCameraTextureView;
        this.cameraContainer = frameLayout;
        this.circleIv = imageView;
        this.faceTipTv = textView2;
        this.mask = imageView2;
        this.scanCard = cardView;
        this.scanView = view;
    }

    public static LayoutLoginFaceBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.aiCamera;
        SurfaceViewRenderer surfaceViewRenderer = (SurfaceViewRenderer) view.findViewById(i);
        if (surfaceViewRenderer != null) {
            i = R.id.borderView;
            FaceBorderView faceBorderView = (FaceBorderView) view.findViewById(i);
            if (faceBorderView != null) {
                i = R.id.btnFaceCheck;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
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
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    i = R.id.mask;
                                    ImageView imageView2 = (ImageView) view.findViewById(i);
                                    if (imageView2 != null) {
                                        i = R.id.scanCard;
                                        CardView cardView = (CardView) view.findViewById(i);
                                        if (cardView != null && (viewFindViewById = view.findViewById((i = R.id.scanView))) != null) {
                                            return new LayoutLoginFaceBinding((ConstraintLayout) view, surfaceViewRenderer, faceBorderView, textView, uVCCameraTextureView, frameLayout, imageView, textView2, imageView2, cardView, viewFindViewById);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutLoginFaceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginFaceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_face, viewGroup, false);
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
