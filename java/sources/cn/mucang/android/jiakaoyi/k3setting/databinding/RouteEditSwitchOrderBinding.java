package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEditSwitchOrderBinding implements a {
    public final ImageView backIv;
    public final View divider;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;

    private RouteEditSwitchOrderBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.divider = view;
        this.recyclerView = recyclerView;
    }

    public static RouteEditSwitchOrderBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                return new RouteEditSwitchOrderBinding((ConstraintLayout) view, imageView, viewFindViewById, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteEditSwitchOrderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteEditSwitchOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_edit_switch_order, viewGroup, false);
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
