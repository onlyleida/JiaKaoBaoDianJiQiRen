package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteDetailActivityBinding implements a {
    public final FrameLayout contentLayout;
    public final ProgressBar progressBar;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private RouteDetailActivityBinding(LinearLayout linearLayout, FrameLayout frameLayout, ProgressBar progressBar, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.contentLayout = frameLayout;
        this.progressBar = progressBar;
        this.titleLayout = commonTitleBinding;
    }

    public static RouteDetailActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.contentLayout;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = R.id.progressBar;
            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
            if (progressBar != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                return new RouteDetailActivityBinding((LinearLayout) view, frameLayout, progressBar, CommonTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteDetailActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteDetailActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_detail_activity, viewGroup, false);
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
