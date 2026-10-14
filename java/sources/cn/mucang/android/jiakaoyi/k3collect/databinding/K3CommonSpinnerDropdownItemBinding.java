package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3CommonSpinnerDropdownItemBinding implements a {
    private final LinearLayout rootView;
    public final TextView text;

    private K3CommonSpinnerDropdownItemBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.text = textView;
    }

    public static K3CommonSpinnerDropdownItemBinding bind(View view) {
        int i = R.id.text;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new K3CommonSpinnerDropdownItemBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static K3CommonSpinnerDropdownItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3CommonSpinnerDropdownItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_common_spinner_dropdown_item, viewGroup, false);
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
