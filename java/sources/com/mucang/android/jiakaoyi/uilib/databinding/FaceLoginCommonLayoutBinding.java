package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;
import com.serenegiant.usb.widget.UVCCameraTextureView;

/* JADX INFO: loaded from: classes6.dex */
public final class FaceLoginCommonLayoutBinding implements a {
    public final TextView btnFaceCheck;
    public final UVCCameraTextureView camera;
    public final ImageView circleIv;
    public final TextView faceTipTv;
    public final ImageView mask;
    private final ConstraintLayout rootView;
    public final CardView scanCard;
    public final View scanView;

    private FaceLoginCommonLayoutBinding(ConstraintLayout constraintLayout, TextView textView, UVCCameraTextureView uVCCameraTextureView, ImageView imageView, TextView textView2, ImageView imageView2, CardView cardView, View view) {
        this.rootView = constraintLayout;
        this.btnFaceCheck = textView;
        this.camera = uVCCameraTextureView;
        this.circleIv = imageView;
        this.faceTipTv = textView2;
        this.mask = imageView2;
        this.scanCard = cardView;
        this.scanView = view;
    }

    public static FaceLoginCommonLayoutBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btnFaceCheck;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.camera;
            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
            if (uVCCameraTextureView != null) {
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
                                return new FaceLoginCommonLayoutBinding((ConstraintLayout) view, textView, uVCCameraTextureView, imageView, textView2, imageView2, cardView, viewFindViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FaceLoginCommonLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FaceLoginCommonLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.face_login_common_layout, viewGroup, false);
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
