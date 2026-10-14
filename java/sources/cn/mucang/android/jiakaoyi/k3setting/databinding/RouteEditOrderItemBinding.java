package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEditOrderItemBinding implements a {
    public final TextView deleteTv;
    public final ImageView iconIv;
    public final TextView indexTv;
    public final TextView nameTv;
    private final ConstraintLayout rootView;
    public final TextView switchTv;

    private RouteEditOrderItemBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.deleteTv = textView;
        this.iconIv = imageView;
        this.indexTv = textView2;
        this.nameTv = textView3;
        this.switchTv = textView4;
    }

    public static RouteEditOrderItemBinding bind(View view) {
        int i = R.id.deleteTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.iconIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.indexTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.nameTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.switchTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new RouteEditOrderItemBinding((ConstraintLayout) view, textView, imageView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteEditOrderItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteEditOrderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_edit_order_item, viewGroup, false);
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
