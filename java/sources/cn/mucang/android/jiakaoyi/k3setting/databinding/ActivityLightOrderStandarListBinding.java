package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityLightOrderStandarListBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivityLightOrderStandarListBinding(LinearLayout linearLayout, RecyclerView recyclerView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityLightOrderStandarListBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.stateLayout;
            StateLayout stateLayout = (StateLayout) view.findViewById(i);
            if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                return new ActivityLightOrderStandarListBinding((LinearLayout) view, recyclerView, stateLayout, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityLightOrderStandarListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLightOrderStandarListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_light_order_standar_list, viewGroup, false);
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
