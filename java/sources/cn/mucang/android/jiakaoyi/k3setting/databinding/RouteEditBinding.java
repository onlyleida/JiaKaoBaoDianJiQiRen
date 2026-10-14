package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEditBinding implements a {
    public final ImageView backIv;
    public final View divider;
    public final View indicator;
    public final TextView mapModeTv;
    public final TextView orderModeTv;
    public final ConstraintLayout rootCl;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final CommonViewPager viewPager;

    private RouteEditBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, View view2, TextView textView, TextView textView2, ConstraintLayout constraintLayout2, TextView textView3, StateLayout stateLayout, CommonViewPager commonViewPager) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.divider = view;
        this.indicator = view2;
        this.mapModeTv = textView;
        this.orderModeTv = textView2;
        this.rootCl = constraintLayout2;
        this.saveTv = textView3;
        this.stateLayout = stateLayout;
        this.viewPager = commonViewPager;
    }

    public static RouteEditBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null && (viewFindViewById2 = view.findViewById((i = R.id.indicator))) != null) {
            i = R.id.mapModeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.orderModeTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i = R.id.saveTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.stateLayout;
                        StateLayout stateLayout = (StateLayout) view.findViewById(i);
                        if (stateLayout != null) {
                            i = R.id.viewPager;
                            CommonViewPager commonViewPager = (CommonViewPager) view.findViewById(i);
                            if (commonViewPager != null) {
                                return new RouteEditBinding(constraintLayout, imageView, viewFindViewById, viewFindViewById2, textView, textView2, constraintLayout, textView3, stateLayout, commonViewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteEditBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteEditBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_edit, viewGroup, false);
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
