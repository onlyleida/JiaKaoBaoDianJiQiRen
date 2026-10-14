package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3TeachPointItemBinding implements a {
    private final LinearLayout rootView;
    public final TextView tvAdd;
    public final TextView tvClear;
    public final TextView tvContent;

    private K3TeachPointItemBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.tvAdd = textView;
        this.tvClear = textView2;
        this.tvContent = textView3;
    }

    public static K3TeachPointItemBinding bind(View view) {
        int i = R.id.tvAdd;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvClear;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tvContent;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new K3TeachPointItemBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static K3TeachPointItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3TeachPointItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_teach_point_item, viewGroup, false);
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
