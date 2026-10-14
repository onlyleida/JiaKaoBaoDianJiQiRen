package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceBorderView;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LandmarkView;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityFaceSettingBinding implements a {
    public final SurfaceViewRenderer aiCamera;
    public final FaceBorderView box;
    public final LinearLayout btnClearFace;
    public final CheckBox cbBlur;
    public final CheckBox checkBox;
    public final EditText etBlur;
    public final EditText etBlurNight;
    public final EditText etOnline;
    public final ImageView ivMark;
    public final ImageView ivResult;
    public final LandmarkView landmark;
    public final LinearLayout layout1;
    public final LinearLayout llBlur;
    public final RadioGroup radioGroup1;
    public final RadioButton rb03;
    public final RadioButton rb04;
    private final ConstraintLayout rootView;
    public final ImageView test;
    public final TextView textView2;
    public final CommonTitleBinding titleLayout;
    public final TextView tvAngleWrong;
    public final TextView tvBlurVar;
    public final TextView tvBrightness;
    public final TextView tvFaceRatio;
    public final TextView tvFps;
    public final TextView tvHighLightRate;
    public final TextView uploadImage;
    public final UVCCameraTextureView uvcCamera;
    public final FrameLayout videoContainer;

    private ActivityFaceSettingBinding(ConstraintLayout constraintLayout, SurfaceViewRenderer surfaceViewRenderer, FaceBorderView faceBorderView, LinearLayout linearLayout, CheckBox checkBox, CheckBox checkBox2, EditText editText, EditText editText2, EditText editText3, ImageView imageView, ImageView imageView2, LandmarkView landmarkView, LinearLayout linearLayout2, LinearLayout linearLayout3, RadioGroup radioGroup, RadioButton radioButton, RadioButton radioButton2, ImageView imageView3, TextView textView, CommonTitleBinding commonTitleBinding, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, UVCCameraTextureView uVCCameraTextureView, FrameLayout frameLayout) {
        this.rootView = constraintLayout;
        this.aiCamera = surfaceViewRenderer;
        this.box = faceBorderView;
        this.btnClearFace = linearLayout;
        this.cbBlur = checkBox;
        this.checkBox = checkBox2;
        this.etBlur = editText;
        this.etBlurNight = editText2;
        this.etOnline = editText3;
        this.ivMark = imageView;
        this.ivResult = imageView2;
        this.landmark = landmarkView;
        this.layout1 = linearLayout2;
        this.llBlur = linearLayout3;
        this.radioGroup1 = radioGroup;
        this.rb03 = radioButton;
        this.rb04 = radioButton2;
        this.test = imageView3;
        this.textView2 = textView;
        this.titleLayout = commonTitleBinding;
        this.tvAngleWrong = textView2;
        this.tvBlurVar = textView3;
        this.tvBrightness = textView4;
        this.tvFaceRatio = textView5;
        this.tvFps = textView6;
        this.tvHighLightRate = textView7;
        this.uploadImage = textView8;
        this.uvcCamera = uVCCameraTextureView;
        this.videoContainer = frameLayout;
    }

    public static ActivityFaceSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.aiCamera;
        SurfaceViewRenderer surfaceViewRenderer = (SurfaceViewRenderer) view.findViewById(i);
        if (surfaceViewRenderer != null) {
            i = R.id.box;
            FaceBorderView faceBorderView = (FaceBorderView) view.findViewById(i);
            if (faceBorderView != null) {
                i = R.id.btnClearFace;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.cbBlur;
                    CheckBox checkBox = (CheckBox) view.findViewById(i);
                    if (checkBox != null) {
                        i = R.id.checkBox;
                        CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                        if (checkBox2 != null) {
                            i = R.id.etBlur;
                            EditText editText = (EditText) view.findViewById(i);
                            if (editText != null) {
                                i = R.id.etBlurNight;
                                EditText editText2 = (EditText) view.findViewById(i);
                                if (editText2 != null) {
                                    i = R.id.etOnline;
                                    EditText editText3 = (EditText) view.findViewById(i);
                                    if (editText3 != null) {
                                        i = R.id.ivMark;
                                        ImageView imageView = (ImageView) view.findViewById(i);
                                        if (imageView != null) {
                                            i = R.id.ivResult;
                                            ImageView imageView2 = (ImageView) view.findViewById(i);
                                            if (imageView2 != null) {
                                                i = R.id.landmark;
                                                LandmarkView landmarkView = (LandmarkView) view.findViewById(i);
                                                if (landmarkView != null) {
                                                    i = R.id.layout1;
                                                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                                                    if (linearLayout2 != null) {
                                                        i = R.id.llBlur;
                                                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                                        if (linearLayout3 != null) {
                                                            i = R.id.radioGroup1;
                                                            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                                            if (radioGroup != null) {
                                                                i = R.id.rb03;
                                                                RadioButton radioButton = (RadioButton) view.findViewById(i);
                                                                if (radioButton != null) {
                                                                    i = R.id.rb04;
                                                                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                                                    if (radioButton2 != null) {
                                                                        i = R.id.test;
                                                                        ImageView imageView3 = (ImageView) view.findViewById(i);
                                                                        if (imageView3 != null) {
                                                                            i = R.id.textView2;
                                                                            TextView textView = (TextView) view.findViewById(i);
                                                                            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                                                i = R.id.tvAngleWrong;
                                                                                TextView textView2 = (TextView) view.findViewById(i);
                                                                                if (textView2 != null) {
                                                                                    i = R.id.tvBlurVar;
                                                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                                                    if (textView3 != null) {
                                                                                        i = R.id.tvBrightness;
                                                                                        TextView textView4 = (TextView) view.findViewById(i);
                                                                                        if (textView4 != null) {
                                                                                            i = R.id.tvFaceRatio;
                                                                                            TextView textView5 = (TextView) view.findViewById(i);
                                                                                            if (textView5 != null) {
                                                                                                i = R.id.tvFps;
                                                                                                TextView textView6 = (TextView) view.findViewById(i);
                                                                                                if (textView6 != null) {
                                                                                                    i = R.id.tvHighLightRate;
                                                                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                                                                    if (textView7 != null) {
                                                                                                        i = R.id.uploadImage;
                                                                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                                                                        if (textView8 != null) {
                                                                                                            i = R.id.uvcCamera;
                                                                                                            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
                                                                                                            if (uVCCameraTextureView != null) {
                                                                                                                i = R.id.videoContainer;
                                                                                                                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                                                                                                if (frameLayout != null) {
                                                                                                                    return new ActivityFaceSettingBinding((ConstraintLayout) view, surfaceViewRenderer, faceBorderView, linearLayout, checkBox, checkBox2, editText, editText2, editText3, imageView, imageView2, landmarkView, linearLayout2, linearLayout3, radioGroup, radioButton, radioButton2, imageView3, textView, commonTitleBindingBind, textView2, textView3, textView4, textView5, textView6, textView7, textView8, uVCCameraTextureView, frameLayout);
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    public static ActivityFaceSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityFaceSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_face_setting, viewGroup, false);
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
