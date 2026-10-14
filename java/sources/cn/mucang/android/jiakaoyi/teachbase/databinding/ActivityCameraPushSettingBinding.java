package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCameraPushSettingBinding implements a {
    public final SurfaceViewRenderer aiCamera;
    public final ImageView cbShowTime;
    public final ImageView checkBox;
    public final RadioButton qt01;
    public final RadioButton qt02;
    public final RadioGroup radioGroup;
    public final RadioGroup radioQt;
    public final RadioButton rb01;
    public final RadioButton rb02;
    private final StateLayout rootView;
    public final StateLayout stateLayout;
    public final TextView textView;
    public final TextView textView1;
    public final CommonTitleBinding titleLayout;
    public final TextView tvQt;
    public final TextView tvShowTime;
    public final UVCCameraTextureView uvcCamera;
    public final ConstraintLayout videoContainer;

    private ActivityCameraPushSettingBinding(StateLayout stateLayout, SurfaceViewRenderer surfaceViewRenderer, ImageView imageView, ImageView imageView2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup, RadioGroup radioGroup2, RadioButton radioButton3, RadioButton radioButton4, StateLayout stateLayout2, TextView textView, TextView textView2, CommonTitleBinding commonTitleBinding, TextView textView3, TextView textView4, UVCCameraTextureView uVCCameraTextureView, ConstraintLayout constraintLayout) {
        this.rootView = stateLayout;
        this.aiCamera = surfaceViewRenderer;
        this.cbShowTime = imageView;
        this.checkBox = imageView2;
        this.qt01 = radioButton;
        this.qt02 = radioButton2;
        this.radioGroup = radioGroup;
        this.radioQt = radioGroup2;
        this.rb01 = radioButton3;
        this.rb02 = radioButton4;
        this.stateLayout = stateLayout2;
        this.textView = textView;
        this.textView1 = textView2;
        this.titleLayout = commonTitleBinding;
        this.tvQt = textView3;
        this.tvShowTime = textView4;
        this.uvcCamera = uVCCameraTextureView;
        this.videoContainer = constraintLayout;
    }

    public static ActivityCameraPushSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.aiCamera;
        SurfaceViewRenderer surfaceViewRenderer = (SurfaceViewRenderer) view.findViewById(i);
        if (surfaceViewRenderer != null) {
            i = R.id.cbShowTime;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.checkBox;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.qt01;
                    RadioButton radioButton = (RadioButton) view.findViewById(i);
                    if (radioButton != null) {
                        i = R.id.qt02;
                        RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                        if (radioButton2 != null) {
                            i = R.id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                            if (radioGroup != null) {
                                i = R.id.radioQt;
                                RadioGroup radioGroup2 = (RadioGroup) view.findViewById(i);
                                if (radioGroup2 != null) {
                                    i = R.id.rb01;
                                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                    if (radioButton3 != null) {
                                        i = R.id.rb02;
                                        RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                                        if (radioButton4 != null) {
                                            StateLayout stateLayout = (StateLayout) view;
                                            i = R.id.textView;
                                            TextView textView = (TextView) view.findViewById(i);
                                            if (textView != null) {
                                                i = R.id.textView1;
                                                TextView textView2 = (TextView) view.findViewById(i);
                                                if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                    CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                    i = R.id.tvQt;
                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                    if (textView3 != null) {
                                                        i = R.id.tvShowTime;
                                                        TextView textView4 = (TextView) view.findViewById(i);
                                                        if (textView4 != null) {
                                                            i = R.id.uvcCamera;
                                                            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
                                                            if (uVCCameraTextureView != null) {
                                                                i = R.id.videoContainer;
                                                                ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                                                if (constraintLayout != null) {
                                                                    return new ActivityCameraPushSettingBinding(stateLayout, surfaceViewRenderer, imageView, imageView2, radioButton, radioButton2, radioGroup, radioGroup2, radioButton3, radioButton4, stateLayout, textView, textView2, commonTitleBindingBind, textView3, textView4, uVCCameraTextureView, constraintLayout);
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

    public static ActivityCameraPushSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCameraPushSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_camera_push_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public StateLayout getRoot() {
        return this.rootView;
    }
}
