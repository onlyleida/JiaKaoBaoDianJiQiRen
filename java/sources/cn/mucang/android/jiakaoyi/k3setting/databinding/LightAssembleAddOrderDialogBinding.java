package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LightAssembleAddOrderDialogBinding implements a {
    public final ImageView closeIv;
    public final View divider;
    public final RecyclerView recyclerView;
    private final FrameLayout rootView;
    public final StateLayout stateLayout;

    private LightAssembleAddOrderDialogBinding(FrameLayout frameLayout, ImageView imageView, View view, RecyclerView recyclerView, StateLayout stateLayout) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.divider = view;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
    }

    public static LightAssembleAddOrderDialogBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.stateLayout;
                StateLayout stateLayout = (StateLayout) view.findViewById(i);
                if (stateLayout != null) {
                    return new LightAssembleAddOrderDialogBinding((FrameLayout) view, imageView, viewFindViewById, recyclerView, stateLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightAssembleAddOrderDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightAssembleAddOrderDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_assemble_add_order_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
