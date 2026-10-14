package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutItemTexamStepBinding implements a {
    private final FrameLayout rootView;
    public final TextView tvName;

    private LayoutItemTexamStepBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.tvName = textView;
    }

    public static LayoutItemTexamStepBinding bind(View view) {
        int i = R.id.tvName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new LayoutItemTexamStepBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutItemTexamStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutItemTexamStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_item_texam_step, viewGroup, false);
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
