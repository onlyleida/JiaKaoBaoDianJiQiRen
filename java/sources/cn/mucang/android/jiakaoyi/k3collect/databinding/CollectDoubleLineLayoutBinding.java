package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CollectDoubleLineLayoutBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView tvCollectEnd1;
    public final TextView tvCollectEnd2;
    public final TextView tvCollectStart1;
    public final TextView tvCollectStart2;
    public final TextView tvExample;

    private CollectDoubleLineLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.tvCollectEnd1 = textView;
        this.tvCollectEnd2 = textView2;
        this.tvCollectStart1 = textView3;
        this.tvCollectStart2 = textView4;
        this.tvExample = textView5;
    }

    public static CollectDoubleLineLayoutBinding bind(View view) {
        int i = R.id.tvCollectEnd1;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvCollectEnd2;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tvCollectStart1;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.tvCollectStart2;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.tvExample;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            return new CollectDoubleLineLayoutBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectDoubleLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectDoubleLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_double_line_layout, viewGroup, false);
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
