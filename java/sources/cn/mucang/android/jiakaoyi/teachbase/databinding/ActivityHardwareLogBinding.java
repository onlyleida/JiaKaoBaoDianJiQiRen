package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityHardwareLogBinding implements a {
    private final ConstraintLayout rootView;
    public final RecyclerView rv1;
    public final RecyclerView rv2;
    public final RecyclerView rv3;
    public final RecyclerView rv4;
    public final RecyclerView rv5;
    public final TeachingTitleBinding title;
    public final TextView tvNoError;

    private ActivityHardwareLogBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, RecyclerView recyclerView4, RecyclerView recyclerView5, TeachingTitleBinding teachingTitleBinding, TextView textView) {
        this.rootView = constraintLayout;
        this.rv1 = recyclerView;
        this.rv2 = recyclerView2;
        this.rv3 = recyclerView3;
        this.rv4 = recyclerView4;
        this.rv5 = recyclerView5;
        this.title = teachingTitleBinding;
        this.tvNoError = textView;
    }

    public static ActivityHardwareLogBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.rv1;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.rv2;
            RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
            if (recyclerView2 != null) {
                i = R.id.rv3;
                RecyclerView recyclerView3 = (RecyclerView) view.findViewById(i);
                if (recyclerView3 != null) {
                    i = R.id.rv4;
                    RecyclerView recyclerView4 = (RecyclerView) view.findViewById(i);
                    if (recyclerView4 != null) {
                        i = R.id.rv5;
                        RecyclerView recyclerView5 = (RecyclerView) view.findViewById(i);
                        if (recyclerView5 != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                            TeachingTitleBinding teachingTitleBindingBind = TeachingTitleBinding.bind(viewFindViewById);
                            i = R.id.tvNoError;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                return new ActivityHardwareLogBinding((ConstraintLayout) view, recyclerView, recyclerView2, recyclerView3, recyclerView4, recyclerView5, teachingTitleBindingBind, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityHardwareLogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityHardwareLogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_hardware_log, viewGroup, false);
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
