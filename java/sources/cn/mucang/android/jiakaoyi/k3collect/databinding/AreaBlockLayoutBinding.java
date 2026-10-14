package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class AreaBlockLayoutBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView tvCollectAdd;
    public final TextView tvCollectDelete;
    public final TextView tvExample;

    private AreaBlockLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.tvCollectAdd = textView;
        this.tvCollectDelete = textView2;
        this.tvExample = textView3;
    }

    public static AreaBlockLayoutBinding bind(View view) {
        int i = R.id.tvCollectAdd;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvCollectDelete;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tvExample;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new AreaBlockLayoutBinding((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AreaBlockLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AreaBlockLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.area_block_layout, viewGroup, false);
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
