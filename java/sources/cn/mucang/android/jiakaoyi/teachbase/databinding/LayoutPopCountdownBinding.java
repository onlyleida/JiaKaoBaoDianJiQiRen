package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutPopCountdownBinding implements a {
    private final FrameLayout rootView;
    public final TextView tvLeft;
    public final TextView tvMsg;
    public final TextView tvRight;

    private LayoutPopCountdownBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.tvLeft = textView;
        this.tvMsg = textView2;
        this.tvRight = textView3;
    }

    public static LayoutPopCountdownBinding bind(View view) {
        int i = R.id.tv_left;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_msg;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tv_right;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new LayoutPopCountdownBinding((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutPopCountdownBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutPopCountdownBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_pop_countdown, viewGroup, false);
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
