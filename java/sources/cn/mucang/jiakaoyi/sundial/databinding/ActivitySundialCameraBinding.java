package cn.mucang.jiakaoyi.sundial.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.sundial.R;
import com.serenegiant.usb.widget.UVCCameraTextureView;

/* JADX INFO: loaded from: classes5.dex */
public final class ActivitySundialCameraBinding implements a {
    public final FrameLayout aiContainer;
    public final LinearLayout btnBack;
    public final FrameLayout btnCameraC1;
    public final UVCCameraTextureView camera;
    public final ImageView ivCamera;
    public final FrameLayout llTitle;
    private final ConstraintLayout rootView;
    public final TextView tvHint;
    public final TextView tvTimer;

    private ActivitySundialCameraBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, LinearLayout linearLayout, FrameLayout frameLayout2, UVCCameraTextureView uVCCameraTextureView, ImageView imageView, FrameLayout frameLayout3, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.aiContainer = frameLayout;
        this.btnBack = linearLayout;
        this.btnCameraC1 = frameLayout2;
        this.camera = uVCCameraTextureView;
        this.ivCamera = imageView;
        this.llTitle = frameLayout3;
        this.tvHint = textView;
        this.tvTimer = textView2;
    }

    public static ActivitySundialCameraBinding bind(View view) {
        int i = R.id.aiContainer;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = R.id.btnBack;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.btnCameraC1;
                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                if (frameLayout2 != null) {
                    i = R.id.camera;
                    UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
                    if (uVCCameraTextureView != null) {
                        i = R.id.ivCamera;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.llTitle;
                            FrameLayout frameLayout3 = (FrameLayout) view.findViewById(i);
                            if (frameLayout3 != null) {
                                i = R.id.tvHint;
                                TextView textView = (TextView) view.findViewById(i);
                                if (textView != null) {
                                    i = R.id.tvTimer;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        return new ActivitySundialCameraBinding((ConstraintLayout) view, frameLayout, linearLayout, frameLayout2, uVCCameraTextureView, imageView, frameLayout3, textView, textView2);
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

    public static ActivitySundialCameraBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySundialCameraBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_sundial_camera, viewGroup, false);
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
