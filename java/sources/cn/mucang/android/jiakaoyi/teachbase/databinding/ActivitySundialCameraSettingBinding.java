package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivitySundialCameraSettingBinding implements a {
    public final SurfaceViewRenderer aiCamera;
    public final RadioGroup radioGroup1;
    public final RadioButton rb03;
    public final RadioButton rb04;
    private final ConstraintLayout rootView;
    public final TextView textView2;
    public final CommonTitleBinding titleLayout;
    public final UVCCameraTextureView uvcCamera;
    public final FrameLayout videoContainer;

    private ActivitySundialCameraSettingBinding(ConstraintLayout constraintLayout, SurfaceViewRenderer surfaceViewRenderer, RadioGroup radioGroup, RadioButton radioButton, RadioButton radioButton2, TextView textView, CommonTitleBinding commonTitleBinding, UVCCameraTextureView uVCCameraTextureView, FrameLayout frameLayout) {
        this.rootView = constraintLayout;
        this.aiCamera = surfaceViewRenderer;
        this.radioGroup1 = radioGroup;
        this.rb03 = radioButton;
        this.rb04 = radioButton2;
        this.textView2 = textView;
        this.titleLayout = commonTitleBinding;
        this.uvcCamera = uVCCameraTextureView;
        this.videoContainer = frameLayout;
    }

    public static ActivitySundialCameraSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.aiCamera;
        SurfaceViewRenderer surfaceViewRenderer = (SurfaceViewRenderer) view.findViewById(i);
        if (surfaceViewRenderer != null) {
            i = R.id.radioGroup1;
            RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
            if (radioGroup != null) {
                i = R.id.rb03;
                RadioButton radioButton = (RadioButton) view.findViewById(i);
                if (radioButton != null) {
                    i = R.id.rb04;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.textView2;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                            i = R.id.uvcCamera;
                            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
                            if (uVCCameraTextureView != null) {
                                i = R.id.videoContainer;
                                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                if (frameLayout != null) {
                                    return new ActivitySundialCameraSettingBinding((ConstraintLayout) view, surfaceViewRenderer, radioGroup, radioButton, radioButton2, textView, commonTitleBindingBind, uVCCameraTextureView, frameLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySundialCameraSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySundialCameraSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_sundial_camera_setting, viewGroup, false);
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
