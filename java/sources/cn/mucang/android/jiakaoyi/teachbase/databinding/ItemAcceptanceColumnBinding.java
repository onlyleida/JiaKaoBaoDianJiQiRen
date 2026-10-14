package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemAcceptanceColumnBinding implements a {
    private final TextView rootView;

    private ItemAcceptanceColumnBinding(TextView textView) {
        this.rootView = textView;
    }

    public static ItemAcceptanceColumnBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new ItemAcceptanceColumnBinding((TextView) view);
    }

    public static ItemAcceptanceColumnBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemAcceptanceColumnBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_acceptance_column, viewGroup, false);
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
