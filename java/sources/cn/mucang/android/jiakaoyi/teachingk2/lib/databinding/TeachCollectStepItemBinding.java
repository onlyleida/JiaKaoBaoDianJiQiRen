package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectStepItemBinding implements a {
    public final TextView name;
    private final FrameLayout rootView;

    private TeachCollectStepItemBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.name = textView;
    }

    public static TeachCollectStepItemBinding bind(View view) {
        int i = R.id.name;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new TeachCollectStepItemBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectStepItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectStepItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_step_item, viewGroup, false);
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
