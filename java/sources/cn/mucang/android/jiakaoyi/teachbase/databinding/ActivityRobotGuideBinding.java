package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityRobotGuideBinding implements a {
    public final RobotExtraViewBinding call;
    public final RecyclerView rcvImageTips;
    public final RecyclerView rcvSignals;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final RobotStatusBarBinding statusBar;
    public final ImageView tipIv;
    public final View tipTv;
    public final UserCommonTitleBinding titleBar;

    private ActivityRobotGuideBinding(ConstraintLayout constraintLayout, RobotExtraViewBinding robotExtraViewBinding, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, RobotStatusBarBinding robotStatusBarBinding, ImageView imageView, View view, UserCommonTitleBinding userCommonTitleBinding) {
        this.rootView = constraintLayout;
        this.call = robotExtraViewBinding;
        this.rcvImageTips = recyclerView;
        this.rcvSignals = recyclerView2;
        this.saveTv = textView;
        this.statusBar = robotStatusBarBinding;
        this.tipIv = imageView;
        this.tipTv = view;
        this.titleBar = userCommonTitleBinding;
    }

    public static ActivityRobotGuideBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.call;
        View viewFindViewById4 = view.findViewById(i);
        if (viewFindViewById4 != null) {
            RobotExtraViewBinding robotExtraViewBindingBind = RobotExtraViewBinding.bind(viewFindViewById4);
            i = R.id.rcvImageTips;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.rcvSignals;
                RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                if (recyclerView2 != null) {
                    i = R.id.saveTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null && (viewFindViewById = view.findViewById((i = R.id.statusBar))) != null) {
                        RobotStatusBarBinding robotStatusBarBindingBind = RobotStatusBarBinding.bind(viewFindViewById);
                        i = R.id.tipIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null && (viewFindViewById2 = view.findViewById((i = R.id.tipTv))) != null && (viewFindViewById3 = view.findViewById((i = R.id.titleBar))) != null) {
                            return new ActivityRobotGuideBinding((ConstraintLayout) view, robotExtraViewBindingBind, recyclerView, recyclerView2, textView, robotStatusBarBindingBind, imageView, viewFindViewById2, UserCommonTitleBinding.bind(viewFindViewById3));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityRobotGuideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityRobotGuideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_robot_guide, viewGroup, false);
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
