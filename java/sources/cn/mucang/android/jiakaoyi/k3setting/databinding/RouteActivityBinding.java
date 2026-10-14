package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteActivityBinding implements a {
    public final TextView action2Tv;
    public final TextView actionTv;
    public final ImageView backIv;
    public final FrameLayout contentLayout;
    public final View divider;
    private final LinearLayout rootView;
    public final RelativeLayout titleLayout;
    public final TextView titleTv;

    private RouteActivityBinding(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, FrameLayout frameLayout, View view, RelativeLayout relativeLayout, TextView textView3) {
        this.rootView = linearLayout;
        this.action2Tv = textView;
        this.actionTv = textView2;
        this.backIv = imageView;
        this.contentLayout = frameLayout;
        this.divider = view;
        this.titleLayout = relativeLayout;
        this.titleTv = textView3;
    }

    public static RouteActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.action2Tv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.actionTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.backIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.contentLayout;
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                    if (frameLayout != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                        i = R.id.titleLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                        if (relativeLayout != null) {
                            i = R.id.titleTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new RouteActivityBinding((LinearLayout) view, textView, textView2, imageView, frameLayout, viewFindViewById, relativeLayout, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_activity, viewGroup, false);
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
