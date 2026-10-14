package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCoachLoginBinding implements a {
    public final RobotExtraViewBinding callIv;
    public final TextView closeIv;
    private final ConstraintLayout rootView;
    public final LayoutLoginScanBinding scanLayout;
    public final RobotStatusBarBinding statusBar;

    private ActivityCoachLoginBinding(ConstraintLayout constraintLayout, RobotExtraViewBinding robotExtraViewBinding, TextView textView, LayoutLoginScanBinding layoutLoginScanBinding, RobotStatusBarBinding robotStatusBarBinding) {
        this.rootView = constraintLayout;
        this.callIv = robotExtraViewBinding;
        this.closeIv = textView;
        this.scanLayout = layoutLoginScanBinding;
        this.statusBar = robotStatusBarBinding;
    }

    public static ActivityCoachLoginBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.callIv;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            RobotExtraViewBinding robotExtraViewBindingBind = RobotExtraViewBinding.bind(viewFindViewById2);
            i = R.id.closeIv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.scanLayout))) != null) {
                LayoutLoginScanBinding layoutLoginScanBindingBind = LayoutLoginScanBinding.bind(viewFindViewById);
                i = R.id.statusBar;
                View viewFindViewById3 = view.findViewById(i);
                if (viewFindViewById3 != null) {
                    return new ActivityCoachLoginBinding((ConstraintLayout) view, robotExtraViewBindingBind, textView, layoutLoginScanBindingBind, RobotStatusBarBinding.bind(viewFindViewById3));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCoachLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCoachLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_coach_login, viewGroup, false);
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
