package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItem0argsBinding implements a {
    private final LinearLayout rootView;

    private TeachCollectVItem0argsBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static TeachCollectVItem0argsBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new TeachCollectVItem0argsBinding((LinearLayout) view);
    }

    public static TeachCollectVItem0argsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItem0argsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_0args, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
