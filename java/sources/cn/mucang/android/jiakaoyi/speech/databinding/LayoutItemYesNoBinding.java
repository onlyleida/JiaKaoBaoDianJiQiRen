package cn.mucang.android.jiakaoyi.speech.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.speech.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LayoutItemYesNoBinding implements a {
    private final LinearLayout rootView;
    public final TextView tvLeft;
    public final TextView tvRight;

    private LayoutItemYesNoBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.tvLeft = textView;
        this.tvRight = textView2;
    }

    public static LayoutItemYesNoBinding bind(View view) {
        int i = R.id.tvLeft;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvRight;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new LayoutItemYesNoBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutItemYesNoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutItemYesNoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_item_yes_no, viewGroup, false);
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
