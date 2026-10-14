package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteMyBackupItemBinding implements a {
    public final TextView descTv;
    public final TextView nameTv;
    private final RelativeLayout rootView;

    private RouteMyBackupItemBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.descTv = textView;
        this.nameTv = textView2;
    }

    public static RouteMyBackupItemBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.nameTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new RouteMyBackupItemBinding((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteMyBackupItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteMyBackupItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_my_backup_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
