package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteMapDistanceBinding implements a {
    public final TextView bearTv;
    public final TextView distanceTv;
    public final EditText etDistance;
    private final FrameLayout rootView;
    public final TextView tvAdd;
    public final TextView tvDelete;
    public final TextView tvMove;

    private RouteMapDistanceBinding(FrameLayout frameLayout, TextView textView, TextView textView2, EditText editText, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = frameLayout;
        this.bearTv = textView;
        this.distanceTv = textView2;
        this.etDistance = editText;
        this.tvAdd = textView3;
        this.tvDelete = textView4;
        this.tvMove = textView5;
    }

    public static RouteMapDistanceBinding bind(View view) {
        int i = R.id.bearTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.distanceTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.et_distance;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.tv_add;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.tv_delete;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.tv_move;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                return new RouteMapDistanceBinding((FrameLayout) view, textView, textView2, editText, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteMapDistanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteMapDistanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_map_distance, viewGroup, false);
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
