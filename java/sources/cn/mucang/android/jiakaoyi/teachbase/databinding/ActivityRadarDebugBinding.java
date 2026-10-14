package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityRadarDebugBinding implements a {
    public final ConstraintLayout baseCl;
    public final RecyclerView dataRv;
    public final FrameLayout demoFl;
    public final TextView errorTv;
    public final ConstraintLayout infoCl;
    public final LinearLayout llError;
    public final TextView name1;
    public final TextView name2;
    public final TextView name3;
    public final TextView name4;
    public final TextView name5;
    public final LayoutRadarSignalBinding radarContainer;
    private final ConstraintLayout rootView;
    public final TextView rpmTv;
    public final TextView speedTv;
    public final TextView statusTv;
    public final TextView targetTv;
    public final TeachingTitleBinding title;
    public final TextView title1;
    public final TextView title2;

    private ActivityRadarDebugBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, RecyclerView recyclerView, FrameLayout frameLayout, TextView textView, ConstraintLayout constraintLayout3, LinearLayout linearLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, LayoutRadarSignalBinding layoutRadarSignalBinding, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TeachingTitleBinding teachingTitleBinding, TextView textView11, TextView textView12) {
        this.rootView = constraintLayout;
        this.baseCl = constraintLayout2;
        this.dataRv = recyclerView;
        this.demoFl = frameLayout;
        this.errorTv = textView;
        this.infoCl = constraintLayout3;
        this.llError = linearLayout;
        this.name1 = textView2;
        this.name2 = textView3;
        this.name3 = textView4;
        this.name4 = textView5;
        this.name5 = textView6;
        this.radarContainer = layoutRadarSignalBinding;
        this.rpmTv = textView7;
        this.speedTv = textView8;
        this.statusTv = textView9;
        this.targetTv = textView10;
        this.title = teachingTitleBinding;
        this.title1 = textView11;
        this.title2 = textView12;
    }

    public static ActivityRadarDebugBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.baseCl;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
        if (constraintLayout != null) {
            i = R.id.dataRv;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.demoFl;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.errorTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.infoCl;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(i);
                        if (constraintLayout2 != null) {
                            i = R.id.ll_error;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                            if (linearLayout != null) {
                                i = R.id.name1;
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    i = R.id.name2;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.name3;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.name4;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.name5;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null && (viewFindViewById = view.findViewById((i = R.id.radarContainer))) != null) {
                                                    LayoutRadarSignalBinding layoutRadarSignalBindingBind = LayoutRadarSignalBinding.bind(viewFindViewById);
                                                    i = R.id.rpmTv;
                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                    if (textView7 != null) {
                                                        i = R.id.speedTv;
                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                        if (textView8 != null) {
                                                            i = R.id.statusTv;
                                                            TextView textView9 = (TextView) view.findViewById(i);
                                                            if (textView9 != null) {
                                                                i = R.id.targetTv;
                                                                TextView textView10 = (TextView) view.findViewById(i);
                                                                if (textView10 != null && (viewFindViewById2 = view.findViewById((i = R.id.title))) != null) {
                                                                    TeachingTitleBinding teachingTitleBindingBind = TeachingTitleBinding.bind(viewFindViewById2);
                                                                    i = R.id.title1;
                                                                    TextView textView11 = (TextView) view.findViewById(i);
                                                                    if (textView11 != null) {
                                                                        i = R.id.title2;
                                                                        TextView textView12 = (TextView) view.findViewById(i);
                                                                        if (textView12 != null) {
                                                                            return new ActivityRadarDebugBinding((ConstraintLayout) view, constraintLayout, recyclerView, frameLayout, textView, constraintLayout2, linearLayout, textView2, textView3, textView4, textView5, textView6, layoutRadarSignalBindingBind, textView7, textView8, textView9, textView10, teachingTitleBindingBind, textView11, textView12);
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

    public static ActivityRadarDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityRadarDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_radar_debug, viewGroup, false);
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
