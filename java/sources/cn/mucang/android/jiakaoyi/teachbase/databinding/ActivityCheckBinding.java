package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCheckBinding implements a {
    public final RobotExtraViewBinding call;
    public final TextView closeIv;
    public final LayoutExitAppBinding countDownCl;
    public final Group errorGroup;
    public final ConstraintLayout errorLayout;
    public final ImageView errorRobotIv;
    public final TextView jumpTv;
    public final MapView mapView;
    public final ProgressBar progressBar;
    public final Group progressGroup;
    public final TextView progressTv;
    public final RecyclerView resultRv;
    public final TextView retryTv;
    private final ConstraintLayout rootView;
    public final TextView startTv;
    public final RobotStatusBarBinding statusBar;
    public final Group successGroup;
    public final ImageView successIv;
    public final TextView successTv;
    public final TextView tipTv;
    public final TextView titleTv;

    private ActivityCheckBinding(ConstraintLayout constraintLayout, RobotExtraViewBinding robotExtraViewBinding, TextView textView, LayoutExitAppBinding layoutExitAppBinding, Group group, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView2, MapView mapView, ProgressBar progressBar, Group group2, TextView textView3, RecyclerView recyclerView, TextView textView4, TextView textView5, RobotStatusBarBinding robotStatusBarBinding, Group group3, ImageView imageView2, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.call = robotExtraViewBinding;
        this.closeIv = textView;
        this.countDownCl = layoutExitAppBinding;
        this.errorGroup = group;
        this.errorLayout = constraintLayout2;
        this.errorRobotIv = imageView;
        this.jumpTv = textView2;
        this.mapView = mapView;
        this.progressBar = progressBar;
        this.progressGroup = group2;
        this.progressTv = textView3;
        this.resultRv = recyclerView;
        this.retryTv = textView4;
        this.startTv = textView5;
        this.statusBar = robotStatusBarBinding;
        this.successGroup = group3;
        this.successIv = imageView2;
        this.successTv = textView6;
        this.tipTv = textView7;
        this.titleTv = textView8;
    }

    public static ActivityCheckBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.call;
        View viewFindViewById3 = view.findViewById(i);
        if (viewFindViewById3 != null) {
            RobotExtraViewBinding robotExtraViewBindingBind = RobotExtraViewBinding.bind(viewFindViewById3);
            i = R.id.closeIv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.countDownCl))) != null) {
                LayoutExitAppBinding layoutExitAppBindingBind = LayoutExitAppBinding.bind(viewFindViewById);
                i = R.id.errorGroup;
                Group group = (Group) view.findViewById(i);
                if (group != null) {
                    i = R.id.errorLayout;
                    ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                    if (constraintLayout != null) {
                        i = R.id.errorRobotIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.jumpTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.mapView;
                                MapView mapView = (MapView) view.findViewById(i);
                                if (mapView != null) {
                                    i = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                                    if (progressBar != null) {
                                        i = R.id.progressGroup;
                                        Group group2 = (Group) view.findViewById(i);
                                        if (group2 != null) {
                                            i = R.id.progressTv;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.resultRv;
                                                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                                if (recyclerView != null) {
                                                    i = R.id.retryTv;
                                                    TextView textView4 = (TextView) view.findViewById(i);
                                                    if (textView4 != null) {
                                                        i = R.id.startTv;
                                                        TextView textView5 = (TextView) view.findViewById(i);
                                                        if (textView5 != null && (viewFindViewById2 = view.findViewById((i = R.id.statusBar))) != null) {
                                                            RobotStatusBarBinding robotStatusBarBindingBind = RobotStatusBarBinding.bind(viewFindViewById2);
                                                            i = R.id.successGroup;
                                                            Group group3 = (Group) view.findViewById(i);
                                                            if (group3 != null) {
                                                                i = R.id.successIv;
                                                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                                                if (imageView2 != null) {
                                                                    i = R.id.successTv;
                                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                                    if (textView6 != null) {
                                                                        i = R.id.tipTv;
                                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                                        if (textView7 != null) {
                                                                            i = R.id.titleTv;
                                                                            TextView textView8 = (TextView) view.findViewById(i);
                                                                            if (textView8 != null) {
                                                                                return new ActivityCheckBinding((ConstraintLayout) view, robotExtraViewBindingBind, textView, layoutExitAppBindingBind, group, constraintLayout, imageView, textView2, mapView, progressBar, group2, textView3, recyclerView, textView4, textView5, robotStatusBarBindingBind, group3, imageView2, textView6, textView7, textView8);
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

    public static ActivityCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_check, viewGroup, false);
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
