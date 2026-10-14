package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemStepMenuBinding implements a {
    private final TextView rootView;
    public final TextView stepTv;

    private ItemStepMenuBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.stepTv = textView2;
    }

    public static ItemStepMenuBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new ItemStepMenuBinding(textView, textView);
    }

    public static ItemStepMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemStepMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_step_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public TextView getRoot() {
        return this.rootView;
    }
}
