package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class TtLayoutLoginTabBinding implements a {
    private final TextView rootView;

    private TtLayoutLoginTabBinding(TextView textView) {
        this.rootView = textView;
    }

    public static TtLayoutLoginTabBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new TtLayoutLoginTabBinding((TextView) view);
    }

    public static TtLayoutLoginTabBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtLayoutLoginTabBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__layout_login_tab, viewGroup, false);
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
