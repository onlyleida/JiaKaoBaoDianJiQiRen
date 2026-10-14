package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteResetItemBinding implements a {
    public final TextView descTv;
    public final TextView nameTv;
    public final CheckBox openTv;
    private final ConstraintLayout rootView;

    private RouteResetItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, CheckBox checkBox) {
        this.rootView = constraintLayout;
        this.descTv = textView;
        this.nameTv = textView2;
        this.openTv = checkBox;
    }

    public static RouteResetItemBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.nameTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.openTv;
                CheckBox checkBox = (CheckBox) view.findViewById(i);
                if (checkBox != null) {
                    return new RouteResetItemBinding((ConstraintLayout) view, textView, textView2, checkBox);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteResetItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteResetItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_reset_item, viewGroup, false);
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
