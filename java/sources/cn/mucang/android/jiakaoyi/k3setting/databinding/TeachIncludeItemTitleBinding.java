package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class TeachIncludeItemTitleBinding implements a {
    public final TextView orderTv;
    private final FrameLayout rootView;
    public final TextView tvDelete;
    public final TextView tvStepName;

    private TeachIncludeItemTitleBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.orderTv = textView;
        this.tvDelete = textView2;
        this.tvStepName = textView3;
    }

    public static TeachIncludeItemTitleBinding bind(View view) {
        int i = R.id.orderTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_delete;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tv_step_name;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new TeachIncludeItemTitleBinding((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachIncludeItemTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachIncludeItemTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_include_item_title, viewGroup, false);
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
