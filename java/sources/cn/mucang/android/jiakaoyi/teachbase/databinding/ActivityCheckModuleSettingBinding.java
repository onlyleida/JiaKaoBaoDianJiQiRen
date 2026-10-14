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
public final class ActivityCheckModuleSettingBinding implements a {
    public final TextView btnCancelAll;
    public final ConstraintLayout dataLl;
    public final RecyclerView dataRv;
    public final RecyclerView menuRv;
    private final ConstraintLayout rootView;
    public final TeachingTitleBinding title;

    private ActivityCheckModuleSettingBinding(ConstraintLayout constraintLayout, TextView textView, ConstraintLayout constraintLayout2, RecyclerView recyclerView, RecyclerView recyclerView2, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.btnCancelAll = textView;
        this.dataLl = constraintLayout2;
        this.dataRv = recyclerView;
        this.menuRv = recyclerView2;
        this.title = teachingTitleBinding;
    }

    public static ActivityCheckModuleSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btnCancelAll;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.dataLl;
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
            if (constraintLayout != null) {
                i = R.id.dataRv;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.menuRv;
                    RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                    if (recyclerView2 != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                        return new ActivityCheckModuleSettingBinding((ConstraintLayout) view, textView, constraintLayout, recyclerView, recyclerView2, TeachingTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCheckModuleSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCheckModuleSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_check_module_setting, viewGroup, false);
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
