package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteListFragmentBinding implements a {
    public final TextView commendRoute;
    public final View divider;
    public final LinearLayout menuLl;
    public final TextView myRoute;
    public final TextView nearRoute;
    public final TextView newRouteTv;
    public final RecyclerView recyclerView;
    public final TextView resetRouteTv;
    private final FrameLayout rootView;
    public final StateLayout stateLayout;

    private RouteListFragmentBinding(FrameLayout frameLayout, TextView textView, View view, LinearLayout linearLayout, TextView textView2, TextView textView3, TextView textView4, RecyclerView recyclerView, TextView textView5, StateLayout stateLayout) {
        this.rootView = frameLayout;
        this.commendRoute = textView;
        this.divider = view;
        this.menuLl = linearLayout;
        this.myRoute = textView2;
        this.nearRoute = textView3;
        this.newRouteTv = textView4;
        this.recyclerView = recyclerView;
        this.resetRouteTv = textView5;
        this.stateLayout = stateLayout;
    }

    public static RouteListFragmentBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.commendRoute;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.menuLl;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.myRoute;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.nearRoute;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.newRouteTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.recyclerView;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                i = R.id.resetRouteTv;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    i = R.id.stateLayout;
                                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                                    if (stateLayout != null) {
                                        return new RouteListFragmentBinding((FrameLayout) view, textView, viewFindViewById, linearLayout, textView2, textView3, textView4, recyclerView, textView5, stateLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteListFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteListFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_list_fragment, viewGroup, false);
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
