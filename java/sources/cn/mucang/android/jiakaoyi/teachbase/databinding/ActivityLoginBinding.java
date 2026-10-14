package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityLoginBinding implements a {
    public final RobotExtraViewBinding callIv;
    public final LayoutLoginCardBinding cardLayout;
    public final TextView closeIv;
    public final TextView coachIv;
    public final LayoutExitAppBinding countDownCl;
    public final LayoutLoginFaceBinding faceLayout;
    public final View impLoginTv;
    private final ConstraintLayout rootView;
    public final LayoutLoginScanBinding scanLayout;
    public final TextView settingIv;
    public final TextView singleTv;
    public final RobotStatusBarBinding statusBar;
    public final ImageView switchIv;
    public final TextView switchTv;
    public final View tabBg;
    public final LinearLayout tabLl;
    public final LayoutLoginTimingBinding timingLayout;

    private ActivityLoginBinding(ConstraintLayout constraintLayout, RobotExtraViewBinding robotExtraViewBinding, LayoutLoginCardBinding layoutLoginCardBinding, TextView textView, TextView textView2, LayoutExitAppBinding layoutExitAppBinding, LayoutLoginFaceBinding layoutLoginFaceBinding, View view, LayoutLoginScanBinding layoutLoginScanBinding, TextView textView3, TextView textView4, RobotStatusBarBinding robotStatusBarBinding, ImageView imageView, TextView textView5, View view2, LinearLayout linearLayout, LayoutLoginTimingBinding layoutLoginTimingBinding) {
        this.rootView = constraintLayout;
        this.callIv = robotExtraViewBinding;
        this.cardLayout = layoutLoginCardBinding;
        this.closeIv = textView;
        this.coachIv = textView2;
        this.countDownCl = layoutExitAppBinding;
        this.faceLayout = layoutLoginFaceBinding;
        this.impLoginTv = view;
        this.scanLayout = layoutLoginScanBinding;
        this.settingIv = textView3;
        this.singleTv = textView4;
        this.statusBar = robotStatusBarBinding;
        this.switchIv = imageView;
        this.switchTv = textView5;
        this.tabBg = view2;
        this.tabLl = linearLayout;
        this.timingLayout = layoutLoginTimingBinding;
    }

    public static ActivityLoginBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4;
        View viewFindViewById5;
        int i = R.id.callIv;
        View viewFindViewById6 = view.findViewById(i);
        if (viewFindViewById6 != null) {
            RobotExtraViewBinding robotExtraViewBindingBind = RobotExtraViewBinding.bind(viewFindViewById6);
            i = R.id.cardLayout;
            View viewFindViewById7 = view.findViewById(i);
            if (viewFindViewById7 != null) {
                LayoutLoginCardBinding layoutLoginCardBindingBind = LayoutLoginCardBinding.bind(viewFindViewById7);
                i = R.id.closeIv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.coachIv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.countDownCl))) != null) {
                        LayoutExitAppBinding layoutExitAppBindingBind = LayoutExitAppBinding.bind(viewFindViewById);
                        i = R.id.faceLayout;
                        View viewFindViewById8 = view.findViewById(i);
                        if (viewFindViewById8 != null) {
                            LayoutLoginFaceBinding layoutLoginFaceBindingBind = LayoutLoginFaceBinding.bind(viewFindViewById8);
                            i = R.id.impLoginTv;
                            View viewFindViewById9 = view.findViewById(i);
                            if (viewFindViewById9 != null && (viewFindViewById2 = view.findViewById((i = R.id.scanLayout))) != null) {
                                LayoutLoginScanBinding layoutLoginScanBindingBind = LayoutLoginScanBinding.bind(viewFindViewById2);
                                i = R.id.settingIv;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.singleTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null && (viewFindViewById3 = view.findViewById((i = R.id.statusBar))) != null) {
                                        RobotStatusBarBinding robotStatusBarBindingBind = RobotStatusBarBinding.bind(viewFindViewById3);
                                        i = R.id.switchIv;
                                        ImageView imageView = (ImageView) view.findViewById(i);
                                        if (imageView != null) {
                                            i = R.id.switchTv;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null && (viewFindViewById4 = view.findViewById((i = R.id.tabBg))) != null) {
                                                i = R.id.tabLl;
                                                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                                if (linearLayout != null && (viewFindViewById5 = view.findViewById((i = R.id.timingLayout))) != null) {
                                                    return new ActivityLoginBinding((ConstraintLayout) view, robotExtraViewBindingBind, layoutLoginCardBindingBind, textView, textView2, layoutExitAppBindingBind, layoutLoginFaceBindingBind, viewFindViewById9, layoutLoginScanBindingBind, textView3, textView4, robotStatusBarBindingBind, imageView, textView5, viewFindViewById4, linearLayout, LayoutLoginTimingBinding.bind(viewFindViewById5));
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

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_login, viewGroup, false);
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
