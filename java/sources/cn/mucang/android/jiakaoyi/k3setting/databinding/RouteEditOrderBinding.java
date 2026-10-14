package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEditOrderBinding implements a {
    public final RecyclerView recyclerView;
    private final RecyclerView rootView;

    private RouteEditOrderBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.recyclerView = recyclerView2;
    }

    public static RouteEditOrderBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        RecyclerView recyclerView = (RecyclerView) view;
        return new RouteEditOrderBinding(recyclerView, recyclerView);
    }

    public static RouteEditOrderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteEditOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_edit_order, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RecyclerView getRoot() {
        return this.rootView;
    }
}
