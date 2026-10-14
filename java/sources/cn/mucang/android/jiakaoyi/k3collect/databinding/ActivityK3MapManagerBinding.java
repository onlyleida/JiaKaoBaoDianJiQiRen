package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3collect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3MapManagerBinding implements a {
    public final View dividerHor;
    public final TextView newSiteTv;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivityK3MapManagerBinding(ConstraintLayout constraintLayout, View view, TextView textView, RecyclerView recyclerView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.dividerHor = view;
        this.newSiteTv = textView;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityK3MapManagerBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.dividerHor;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            i = R.id.newSiteTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.stateLayout;
                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                    if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                        return new ActivityK3MapManagerBinding((ConstraintLayout) view, viewFindViewById2, textView, recyclerView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityK3MapManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3MapManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_map_manager, viewGroup, false);
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
