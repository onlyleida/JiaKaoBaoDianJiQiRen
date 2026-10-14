package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3ItemLoadMoreBinding implements a {
    private final FrameLayout rootView;
    public final TextView stateTv;

    private K3ItemLoadMoreBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.stateTv = textView;
    }

    public static K3ItemLoadMoreBinding bind(View view) {
        int i = R.id.stateTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new K3ItemLoadMoreBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static K3ItemLoadMoreBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3ItemLoadMoreBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_item_load_more, viewGroup, false);
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
