package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivitySpecialDataBinding implements a {
    public final RecyclerView dataRv;
    public final FrameLayout demoFl;
    public final ConstraintLayout descCl;
    public final TextView descTv;
    public final RecyclerView menuRv;
    public final LayoutRadarSignalBinding radarContainer;
    public final TextView resetTv;
    private final ConstraintLayout rootView;
    public final TextView rpmTv;
    public final TextView saveTv;
    public final TextView speedTv;
    public final TeachingTitleBinding title;

    private ActivitySpecialDataBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, FrameLayout frameLayout, ConstraintLayout constraintLayout2, TextView textView, RecyclerView recyclerView2, LayoutRadarSignalBinding layoutRadarSignalBinding, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.dataRv = recyclerView;
        this.demoFl = frameLayout;
        this.descCl = constraintLayout2;
        this.descTv = textView;
        this.menuRv = recyclerView2;
        this.radarContainer = layoutRadarSignalBinding;
        this.resetTv = textView2;
        this.rpmTv = textView3;
        this.saveTv = textView4;
        this.speedTv = textView5;
        this.title = teachingTitleBinding;
    }

    public static ActivitySpecialDataBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.dataRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.demoFl;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                i = R.id.descCl;
                ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                if (constraintLayout != null) {
                    i = R.id.descTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.menuRv;
                        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                        if (recyclerView2 != null && (viewFindViewById = view.findViewById((i = R.id.radarContainer))) != null) {
                            LayoutRadarSignalBinding layoutRadarSignalBindingBind = LayoutRadarSignalBinding.bind(viewFindViewById);
                            i = R.id.resetTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.rpmTv;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.saveTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.speedTv;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null && (viewFindViewById2 = view.findViewById((i = R.id.title))) != null) {
                                            return new ActivitySpecialDataBinding((ConstraintLayout) view, recyclerView, frameLayout, constraintLayout, textView, recyclerView2, layoutRadarSignalBindingBind, textView2, textView3, textView4, textView5, TeachingTitleBinding.bind(viewFindViewById2));
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

    public static ActivitySpecialDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySpecialDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_special_data, viewGroup, false);
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
