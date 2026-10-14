package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class IncludeRouteEditTeachLayoutBinding implements a {
    public final ImageView imgMore;
    public final ImageView imgPoints;
    public final RecyclerView recyclerViewTeach;
    private final LinearLayout rootView;
    public final LinearLayout teachStepLayout;
    public final TextView tvTeachStepName;

    private IncludeRouteEditTeachLayoutBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, LinearLayout linearLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.imgMore = imageView;
        this.imgPoints = imageView2;
        this.recyclerViewTeach = recyclerView;
        this.teachStepLayout = linearLayout2;
        this.tvTeachStepName = textView;
    }

    public static IncludeRouteEditTeachLayoutBinding bind(View view) {
        int i = R.id.imgMore;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.imgPoints;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.recyclerViewTeach;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.teachStepLayout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.tvTeachStepName;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            return new IncludeRouteEditTeachLayoutBinding((LinearLayout) view, imageView, imageView2, recyclerView, linearLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static IncludeRouteEditTeachLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static IncludeRouteEditTeachLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.include_route_edit_teach_layout, viewGroup, false);
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
