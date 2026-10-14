package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAcceptanceChildBinding implements a {
    public final ImageView backIv;
    public final View divider;
    public final TextView infoTv;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final TextView startTv;
    public final RobotStatusBarBinding statusBar;
    public final TextView tipTv;
    public final TextView titleTv;

    private ActivityAcceptanceChildBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, TextView textView, RecyclerView recyclerView, TextView textView2, RobotStatusBarBinding robotStatusBarBinding, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.divider = view;
        this.infoTv = textView;
        this.recyclerView = recyclerView;
        this.startTv = textView2;
        this.statusBar = robotStatusBarBinding;
        this.tipTv = textView3;
        this.titleTv = textView4;
    }

    public static ActivityAcceptanceChildBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.infoTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.startTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById2 = view.findViewById((i = R.id.statusBar))) != null) {
                        RobotStatusBarBinding robotStatusBarBindingBind = RobotStatusBarBinding.bind(viewFindViewById2);
                        i = R.id.tipTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                return new ActivityAcceptanceChildBinding((ConstraintLayout) view, imageView, viewFindViewById, textView, recyclerView, textView2, robotStatusBarBindingBind, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityAcceptanceChildBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAcceptanceChildBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_acceptance_child, viewGroup, false);
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
