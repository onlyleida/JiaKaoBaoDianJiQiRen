package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemCarListBinding implements a {
    public final TextView addTv;
    public final TextView methodTv;
    public final TextView previewTv;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private ItemCarListBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.addTv = textView;
        this.methodTv = textView2;
        this.previewTv = textView3;
        this.titleTv = textView4;
    }

    public static ItemCarListBinding bind(View view) {
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.methodTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.previewTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.titleTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new ItemCarListBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemCarListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemCarListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_car_list, viewGroup, false);
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
