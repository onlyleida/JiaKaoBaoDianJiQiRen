package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityMainBinding implements a {
    private final LinearLayout rootView;
    public final TextView test;

    private TtActivityMainBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.test = textView;
    }

    public static TtActivityMainBinding bind(View view) {
        TextView textView = (TextView) view.findViewById(R.id.test);
        if (textView != null) {
            return new TtActivityMainBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat("test"));
    }

    public static TtActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_main, viewGroup, false);
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
