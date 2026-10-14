package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivitySelfCheckBinding implements a {
    public final TextureView cameraView;
    public final TextView ckCamera;
    public final TextView ckGps;
    public final TextView ckNetwork;
    public final TextView ckVolume;
    public final ImageView ivRefresh;
    public final ImageView ivRefresh2;
    public final ImageView ivRefresh4;
    public final LinearLayout llBack;
    public final LinearLayout load1;
    public final LinearLayout load2;
    public final LinearLayout load3;
    public final LinearLayout load4;
    public final RadioGroup radioGps;
    public final RadioButton rbCold;
    public final RadioButton rbHot;
    public final RadioButton rbWarm;
    public final TextView reCheck;
    public final TextView reboot;
    private final FrameLayout rootView;

    private TtActivitySelfCheckBinding(FrameLayout frameLayout, TextureView textureView, TextView textView, TextView textView2, TextView textView3, TextView textView4, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, RadioGroup radioGroup, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.cameraView = textureView;
        this.ckCamera = textView;
        this.ckGps = textView2;
        this.ckNetwork = textView3;
        this.ckVolume = textView4;
        this.ivRefresh = imageView;
        this.ivRefresh2 = imageView2;
        this.ivRefresh4 = imageView3;
        this.llBack = linearLayout;
        this.load1 = linearLayout2;
        this.load2 = linearLayout3;
        this.load3 = linearLayout4;
        this.load4 = linearLayout5;
        this.radioGps = radioGroup;
        this.rbCold = radioButton;
        this.rbHot = radioButton2;
        this.rbWarm = radioButton3;
        this.reCheck = textView5;
        this.reboot = textView6;
    }

    public static TtActivitySelfCheckBinding bind(View view) {
        String str;
        TextureView textureView = (TextureView) view.findViewById(R.id.camera_view);
        if (textureView != null) {
            TextView textView = (TextView) view.findViewById(R.id.ck_camera);
            if (textView != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.ck_gps);
                if (textView2 != null) {
                    TextView textView3 = (TextView) view.findViewById(R.id.ck_network);
                    if (textView3 != null) {
                        TextView textView4 = (TextView) view.findViewById(R.id.ck_volume);
                        if (textView4 != null) {
                            ImageView imageView = (ImageView) view.findViewById(R.id.ivRefresh);
                            if (imageView != null) {
                                ImageView imageView2 = (ImageView) view.findViewById(R.id.ivRefresh2);
                                if (imageView2 != null) {
                                    ImageView imageView3 = (ImageView) view.findViewById(R.id.ivRefresh4);
                                    if (imageView3 != null) {
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llBack);
                                        if (linearLayout != null) {
                                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.load1);
                                            if (linearLayout2 != null) {
                                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.load2);
                                                if (linearLayout3 != null) {
                                                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.load3);
                                                    if (linearLayout4 != null) {
                                                        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.load4);
                                                        if (linearLayout5 != null) {
                                                            RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.radio_gps);
                                                            if (radioGroup != null) {
                                                                RadioButton radioButton = (RadioButton) view.findViewById(R.id.rb_cold);
                                                                if (radioButton != null) {
                                                                    RadioButton radioButton2 = (RadioButton) view.findViewById(R.id.rb_hot);
                                                                    if (radioButton2 != null) {
                                                                        RadioButton radioButton3 = (RadioButton) view.findViewById(R.id.rb_warm);
                                                                        if (radioButton3 != null) {
                                                                            TextView textView5 = (TextView) view.findViewById(R.id.re_check);
                                                                            if (textView5 != null) {
                                                                                TextView textView6 = (TextView) view.findViewById(R.id.reboot);
                                                                                if (textView6 != null) {
                                                                                    return new TtActivitySelfCheckBinding((FrameLayout) view, textureView, textView, textView2, textView3, textView4, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, radioGroup, radioButton, radioButton2, radioButton3, textView5, textView6);
                                                                                }
                                                                                str = "reboot";
                                                                            } else {
                                                                                str = "reCheck";
                                                                            }
                                                                        } else {
                                                                            str = "rbWarm";
                                                                        }
                                                                    } else {
                                                                        str = "rbHot";
                                                                    }
                                                                } else {
                                                                    str = "rbCold";
                                                                }
                                                            } else {
                                                                str = "radioGps";
                                                            }
                                                        } else {
                                                            str = "load4";
                                                        }
                                                    } else {
                                                        str = "load3";
                                                    }
                                                } else {
                                                    str = "load2";
                                                }
                                            } else {
                                                str = "load1";
                                            }
                                        } else {
                                            str = "llBack";
                                        }
                                    } else {
                                        str = "ivRefresh4";
                                    }
                                } else {
                                    str = "ivRefresh2";
                                }
                            } else {
                                str = "ivRefresh";
                            }
                        } else {
                            str = "ckVolume";
                        }
                    } else {
                        str = "ckNetwork";
                    }
                } else {
                    str = "ckGps";
                }
            } else {
                str = "ckCamera";
            }
        } else {
            str = "cameraView";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivitySelfCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivitySelfCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_self_check, viewGroup, false);
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
