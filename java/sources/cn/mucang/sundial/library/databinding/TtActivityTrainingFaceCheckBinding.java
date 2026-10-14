package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.entity.ExtraKey;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityTrainingFaceCheckBinding implements a {
    public final ImageView avatar;
    public final FrameLayout cameraLayout;
    public final TextureView cameraView;
    public final LinearLayout imageCompleteLayout;
    public final TextView ok;
    public final ImageView previewImg;
    public final TextView retry;
    public final LinearLayout rlLayout;
    private final RelativeLayout rootView;
    public final TextView tvDelay;
    public final TextView tvDelayNum;

    private TtActivityTrainingFaceCheckBinding(RelativeLayout relativeLayout, ImageView imageView, FrameLayout frameLayout, TextureView textureView, LinearLayout linearLayout, TextView textView, ImageView imageView2, TextView textView2, LinearLayout linearLayout2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.avatar = imageView;
        this.cameraLayout = frameLayout;
        this.cameraView = textureView;
        this.imageCompleteLayout = linearLayout;
        this.ok = textView;
        this.previewImg = imageView2;
        this.retry = textView2;
        this.rlLayout = linearLayout2;
        this.tvDelay = textView3;
        this.tvDelayNum = textView4;
    }

    public static TtActivityTrainingFaceCheckBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.avatar);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.cameraLayout);
            if (frameLayout != null) {
                TextureView textureView = (TextureView) view.findViewById(R.id.camera_view);
                if (textureView != null) {
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.image_complete_layout);
                    if (linearLayout != null) {
                        TextView textView = (TextView) view.findViewById(R.id.ok);
                        if (textView != null) {
                            ImageView imageView2 = (ImageView) view.findViewById(R.id.preview_img);
                            if (imageView2 != null) {
                                TextView textView2 = (TextView) view.findViewById(R.id.retry);
                                if (textView2 != null) {
                                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.rlLayout);
                                    if (linearLayout2 != null) {
                                        TextView textView3 = (TextView) view.findViewById(R.id.tvDelay);
                                        if (textView3 != null) {
                                            TextView textView4 = (TextView) view.findViewById(R.id.tvDelayNum);
                                            if (textView4 != null) {
                                                return new TtActivityTrainingFaceCheckBinding((RelativeLayout) view, imageView, frameLayout, textureView, linearLayout, textView, imageView2, textView2, linearLayout2, textView3, textView4);
                                            }
                                            str = "tvDelayNum";
                                        } else {
                                            str = "tvDelay";
                                        }
                                    } else {
                                        str = "rlLayout";
                                    }
                                } else {
                                    str = "retry";
                                }
                            } else {
                                str = "previewImg";
                            }
                        } else {
                            str = "ok";
                        }
                    } else {
                        str = "imageCompleteLayout";
                    }
                } else {
                    str = "cameraView";
                }
            } else {
                str = "cameraLayout";
            }
        } else {
            str = ExtraKey.avatar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityTrainingFaceCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityTrainingFaceCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_training_face_check, viewGroup, false);
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
