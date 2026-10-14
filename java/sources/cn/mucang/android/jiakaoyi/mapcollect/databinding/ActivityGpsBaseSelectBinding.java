package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityGpsBaseSelectBinding implements a {
    public final View dividerHor;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivityGpsBaseSelectBinding(ConstraintLayout constraintLayout, View view, RecyclerView recyclerView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.dividerHor = view;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityGpsBaseSelectBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.dividerHor;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            i = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.stateLayout;
                StateLayout stateLayout = (StateLayout) view.findViewById(i);
                if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                    return new ActivityGpsBaseSelectBinding((ConstraintLayout) view, viewFindViewById2, recyclerView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityGpsBaseSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityGpsBaseSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_gps_base_select, viewGroup, false);
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
