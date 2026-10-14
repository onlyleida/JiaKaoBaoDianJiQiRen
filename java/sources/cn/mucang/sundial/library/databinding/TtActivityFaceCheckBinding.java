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
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityFaceCheckBinding implements a {
    public final ImageView avatar;
    public final FrameLayout cameraLayout;
    public final TextureView cameraView;
    public final TextView exit;
    public final LinearLayout imageErrorLayout;
    public final TextView name;
    public final TextView ok;
    public final ImageView previewImg;
    public final TextView retry;
    public final LinearLayout rlLayout;
    private final RelativeLayout rootView;
    public final TextView title;
    public final TextView tvDelay;
    public final TextView tvDelayNum;

    private TtActivityFaceCheckBinding(RelativeLayout relativeLayout, ImageView imageView, FrameLayout frameLayout, TextureView textureView, TextView textView, LinearLayout linearLayout, TextView textView2, TextView textView3, ImageView imageView2, TextView textView4, LinearLayout linearLayout2, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = relativeLayout;
        this.avatar = imageView;
        this.cameraLayout = frameLayout;
        this.cameraView = textureView;
        this.exit = textView;
        this.imageErrorLayout = linearLayout;
        this.name = textView2;
        this.ok = textView3;
        this.previewImg = imageView2;
        this.retry = textView4;
        this.rlLayout = linearLayout2;
        this.title = textView5;
        this.tvDelay = textView6;
        this.tvDelayNum = textView7;
    }

    public static TtActivityFaceCheckBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.avatar);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.cameraLayout);
            if (frameLayout != null) {
                TextureView textureView = (TextureView) view.findViewById(R.id.camera_view);
                if (textureView != null) {
                    TextView textView = (TextView) view.findViewById(R.id.exit);
                    if (textView != null) {
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.image_error_layout);
                        if (linearLayout != null) {
                            TextView textView2 = (TextView) view.findViewById(R.id.name);
                            if (textView2 != null) {
                                TextView textView3 = (TextView) view.findViewById(R.id.ok);
                                if (textView3 != null) {
                                    ImageView imageView2 = (ImageView) view.findViewById(R.id.preview_img);
                                    if (imageView2 != null) {
                                        TextView textView4 = (TextView) view.findViewById(R.id.retry);
                                        if (textView4 != null) {
                                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.rlLayout);
                                            if (linearLayout2 != null) {
                                                TextView textView5 = (TextView) view.findViewById(R.id.title);
                                                if (textView5 != null) {
                                                    TextView textView6 = (TextView) view.findViewById(R.id.tvDelay);
                                                    if (textView6 != null) {
                                                        TextView textView7 = (TextView) view.findViewById(R.id.tvDelayNum);
                                                        if (textView7 != null) {
                                                            return new TtActivityFaceCheckBinding((RelativeLayout) view, imageView, frameLayout, textureView, textView, linearLayout, textView2, textView3, imageView2, textView4, linearLayout2, textView5, textView6, textView7);
                                                        }
                                                        str = "tvDelayNum";
                                                    } else {
                                                        str = "tvDelay";
                                                    }
                                                } else {
                                                    str = "title";
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
                                str = Constant.PROTOCOL_WEBVIEW_NAME;
                            }
                        } else {
                            str = "imageErrorLayout";
                        }
                    } else {
                        str = "exit";
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

    public static TtActivityFaceCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityFaceCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_face_check, viewGroup, false);
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
