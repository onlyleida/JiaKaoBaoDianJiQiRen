package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityCoachFaceCheckBinding implements a {
    public final ImageView avatar;
    public final ConstraintLayout cameraContainer;
    public final FrameLayout cameraLayout;
    public final TextureView cameraView;
    public final FrameLayout clCamera;
    public final TextView closeIv;
    public final TextView exit;
    public final LinearLayout imageErrorLayout;
    public final LinearLayout llCarType;
    public final LinearLayout llCardId;
    public final LinearLayout llLeft;
    public final LinearLayout llName;
    public final TextView name;
    public final TextView nameTip;
    public final TextView ok;
    public final ImageView placeholder1;
    public final ImageView placeholder2;
    public final ImageView previewImg;
    public final TextView retry;
    public final LinearLayout rlLayout;
    private final ConstraintLayout rootView;
    public final TextView titleIv;
    public final TextView tvCarType;
    public final TextView tvCardId;
    public final TextView tvDelayNum;
    public final TextView tvHint;
    public final TextView tvNo;
    public final TextView typeTip;

    private TtActivityCoachFaceCheckBinding(ConstraintLayout constraintLayout, ImageView imageView, ConstraintLayout constraintLayout2, FrameLayout frameLayout, TextureView textureView, FrameLayout frameLayout2, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, TextView textView3, TextView textView4, TextView textView5, ImageView imageView2, ImageView imageView3, ImageView imageView4, TextView textView6, LinearLayout linearLayout6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13) {
        this.rootView = constraintLayout;
        this.avatar = imageView;
        this.cameraContainer = constraintLayout2;
        this.cameraLayout = frameLayout;
        this.cameraView = textureView;
        this.clCamera = frameLayout2;
        this.closeIv = textView;
        this.exit = textView2;
        this.imageErrorLayout = linearLayout;
        this.llCarType = linearLayout2;
        this.llCardId = linearLayout3;
        this.llLeft = linearLayout4;
        this.llName = linearLayout5;
        this.name = textView3;
        this.nameTip = textView4;
        this.ok = textView5;
        this.placeholder1 = imageView2;
        this.placeholder2 = imageView3;
        this.previewImg = imageView4;
        this.retry = textView6;
        this.rlLayout = linearLayout6;
        this.titleIv = textView7;
        this.tvCarType = textView8;
        this.tvCardId = textView9;
        this.tvDelayNum = textView10;
        this.tvHint = textView11;
        this.tvNo = textView12;
        this.typeTip = textView13;
    }

    public static TtActivityCoachFaceCheckBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.avatar);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R.id.camera_container);
            if (constraintLayout != null) {
                FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.cameraLayout);
                if (frameLayout != null) {
                    TextureView textureView = (TextureView) view.findViewById(R.id.camera_view);
                    if (textureView != null) {
                        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.clCamera);
                        if (frameLayout2 != null) {
                            TextView textView = (TextView) view.findViewById(R.id.closeIv);
                            if (textView != null) {
                                TextView textView2 = (TextView) view.findViewById(R.id.exit);
                                if (textView2 != null) {
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.image_error_layout);
                                    if (linearLayout != null) {
                                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.llCarType);
                                        if (linearLayout2 != null) {
                                            LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.llCardId);
                                            if (linearLayout3 != null) {
                                                LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.llLeft);
                                                if (linearLayout4 != null) {
                                                    LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.llName);
                                                    if (linearLayout5 != null) {
                                                        TextView textView3 = (TextView) view.findViewById(R.id.name);
                                                        if (textView3 != null) {
                                                            TextView textView4 = (TextView) view.findViewById(R.id.nameTip);
                                                            if (textView4 != null) {
                                                                TextView textView5 = (TextView) view.findViewById(R.id.ok);
                                                                if (textView5 != null) {
                                                                    ImageView imageView2 = (ImageView) view.findViewById(R.id.placeholder1);
                                                                    if (imageView2 != null) {
                                                                        ImageView imageView3 = (ImageView) view.findViewById(R.id.placeholder2);
                                                                        if (imageView3 != null) {
                                                                            ImageView imageView4 = (ImageView) view.findViewById(R.id.preview_img);
                                                                            if (imageView4 != null) {
                                                                                TextView textView6 = (TextView) view.findViewById(R.id.retry);
                                                                                if (textView6 != null) {
                                                                                    LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.rlLayout);
                                                                                    if (linearLayout6 != null) {
                                                                                        TextView textView7 = (TextView) view.findViewById(R.id.titleIv);
                                                                                        if (textView7 != null) {
                                                                                            TextView textView8 = (TextView) view.findViewById(R.id.tvCarType);
                                                                                            if (textView8 != null) {
                                                                                                TextView textView9 = (TextView) view.findViewById(R.id.tvCardId);
                                                                                                if (textView9 != null) {
                                                                                                    TextView textView10 = (TextView) view.findViewById(R.id.tvDelayNum);
                                                                                                    if (textView10 != null) {
                                                                                                        TextView textView11 = (TextView) view.findViewById(R.id.tvHint);
                                                                                                        if (textView11 != null) {
                                                                                                            TextView textView12 = (TextView) view.findViewById(R.id.tvNo);
                                                                                                            if (textView12 != null) {
                                                                                                                TextView textView13 = (TextView) view.findViewById(R.id.typeTip);
                                                                                                                if (textView13 != null) {
                                                                                                                    return new TtActivityCoachFaceCheckBinding((ConstraintLayout) view, imageView, constraintLayout, frameLayout, textureView, frameLayout2, textView, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView3, textView4, textView5, imageView2, imageView3, imageView4, textView6, linearLayout6, textView7, textView8, textView9, textView10, textView11, textView12, textView13);
                                                                                                                }
                                                                                                                str = "typeTip";
                                                                                                            } else {
                                                                                                                str = "tvNo";
                                                                                                            }
                                                                                                        } else {
                                                                                                            str = "tvHint";
                                                                                                        }
                                                                                                    } else {
                                                                                                        str = "tvDelayNum";
                                                                                                    }
                                                                                                } else {
                                                                                                    str = "tvCardId";
                                                                                                }
                                                                                            } else {
                                                                                                str = "tvCarType";
                                                                                            }
                                                                                        } else {
                                                                                            str = "titleIv";
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
                                                                            str = "placeholder2";
                                                                        }
                                                                    } else {
                                                                        str = "placeholder1";
                                                                    }
                                                                } else {
                                                                    str = "ok";
                                                                }
                                                            } else {
                                                                str = "nameTip";
                                                            }
                                                        } else {
                                                            str = Constant.PROTOCOL_WEBVIEW_NAME;
                                                        }
                                                    } else {
                                                        str = "llName";
                                                    }
                                                } else {
                                                    str = "llLeft";
                                                }
                                            } else {
                                                str = "llCardId";
                                            }
                                        } else {
                                            str = "llCarType";
                                        }
                                    } else {
                                        str = "imageErrorLayout";
                                    }
                                } else {
                                    str = "exit";
                                }
                            } else {
                                str = "closeIv";
                            }
                        } else {
                            str = "clCamera";
                        }
                    } else {
                        str = "cameraView";
                    }
                } else {
                    str = "cameraLayout";
                }
            } else {
                str = "cameraContainer";
            }
        } else {
            str = ExtraKey.avatar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityCoachFaceCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityCoachFaceCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_coach_face_check, viewGroup, false);
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
