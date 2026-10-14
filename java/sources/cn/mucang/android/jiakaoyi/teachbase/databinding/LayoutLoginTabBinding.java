package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutLoginTabBinding implements a {
    private final TextView rootView;

    private LayoutLoginTabBinding(TextView textView) {
        this.rootView = textView;
    }

    public static LayoutLoginTabBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new LayoutLoginTabBinding((TextView) view);
    }

    public static LayoutLoginTabBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginTabBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_tab, viewGroup, false);
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
