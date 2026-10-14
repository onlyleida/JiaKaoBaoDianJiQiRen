package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CollectSingleLineLayoutBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvExample;

    private CollectSingleLineLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.tvCollect1 = textView;
        this.tvCollect2 = textView2;
        this.tvExample = textView3;
    }

    public static CollectSingleLineLayoutBinding bind(View view) {
        int i = R.id.tvCollect1;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvCollect2;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tvExample;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new CollectSingleLineLayoutBinding((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectSingleLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectSingleLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_single_line_layout, viewGroup, false);
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
