package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class SettingTeachingActivityBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final TeachingTitleBinding title;

    private SettingTeachingActivityBinding(LinearLayout linearLayout, RecyclerView recyclerView, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.title = teachingTitleBinding;
    }

    public static SettingTeachingActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView == null || (viewFindViewById = view.findViewById((i = R.id.title))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new SettingTeachingActivityBinding((LinearLayout) view, recyclerView, TeachingTitleBinding.bind(viewFindViewById));
    }

    public static SettingTeachingActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingTeachingActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_teaching_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
