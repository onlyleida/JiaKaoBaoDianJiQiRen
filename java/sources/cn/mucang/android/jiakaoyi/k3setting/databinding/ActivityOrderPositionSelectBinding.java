package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityOrderPositionSelectBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityOrderPositionSelectBinding(LinearLayout linearLayout, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityOrderPositionSelectBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView == null || (viewFindViewById = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivityOrderPositionSelectBinding((LinearLayout) view, recyclerView, CommonTitleBinding.bind(viewFindViewById));
    }

    public static ActivityOrderPositionSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityOrderPositionSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_order_position_select, viewGroup, false);
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
