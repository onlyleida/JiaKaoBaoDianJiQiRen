package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapCollectCarPointBinding implements a {
    public final TextView reCollect;
    private final LinearLayout rootView;
    public final TextView text;

    private HpmapCollectCarPointBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.reCollect = textView;
        this.text = textView2;
    }

    public static HpmapCollectCarPointBinding bind(View view) {
        int i = R.id.re_collect;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.text;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new HpmapCollectCarPointBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static HpmapCollectCarPointBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapCollectCarPointBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__collect_car_point, viewGroup, false);
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
