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
public final class ActivitySafeDataManageBinding implements a {
    public final RecyclerView dataRv;
    public final RecyclerView menuRv;
    public final TextView modeTv;
    private final ConstraintLayout rootView;
    public final TextView rpmTv;
    public final TextView speedTv;
    public final TeachingTitleBinding title;

    private ActivitySafeDataManageBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, TextView textView2, TextView textView3, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.dataRv = recyclerView;
        this.menuRv = recyclerView2;
        this.modeTv = textView;
        this.rpmTv = textView2;
        this.speedTv = textView3;
        this.title = teachingTitleBinding;
    }

    public static ActivitySafeDataManageBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.dataRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.menuRv;
            RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
            if (recyclerView2 != null) {
                i = R.id.modeTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.rpmTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.speedTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                            return new ActivitySafeDataManageBinding((ConstraintLayout) view, recyclerView, recyclerView2, textView, textView2, textView3, TeachingTitleBinding.bind(viewFindViewById));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySafeDataManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySafeDataManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_safe_data_manage, viewGroup, false);
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
