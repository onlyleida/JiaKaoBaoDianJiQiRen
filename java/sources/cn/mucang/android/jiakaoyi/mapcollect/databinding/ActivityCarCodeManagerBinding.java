package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityCarCodeManagerBinding implements a {
    public final RecyclerView carCodeListRv;
    public final TextView emptyTv;
    public final TextView newCarTv;
    private final ConstraintLayout rootView;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;

    private ActivityCarCodeManagerBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, TextView textView, TextView textView2, StateLayout stateLayout, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.carCodeListRv = recyclerView;
        this.emptyTv = textView;
        this.newCarTv = textView2;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityCarCodeManagerBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.car_code_list_rv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.emptyTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.newCarTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.stateLayout;
                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                    if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                        return new ActivityCarCodeManagerBinding((ConstraintLayout) view, recyclerView, textView, textView2, stateLayout, CommonTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCarCodeManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCarCodeManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_car_code_manager, viewGroup, false);
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
