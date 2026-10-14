package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteMapHeaderBinding implements a {
    public final TextView editTv;
    public final TextView nameTv;
    public final TextView openTv;
    private final LinearLayout rootView;

    private RouteMapHeaderBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.editTv = textView;
        this.nameTv = textView2;
        this.openTv = textView3;
    }

    public static RouteMapHeaderBinding bind(View view) {
        int i = R.id.editTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.nameTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.openTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new RouteMapHeaderBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteMapHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteMapHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_map_header, viewGroup, false);
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
