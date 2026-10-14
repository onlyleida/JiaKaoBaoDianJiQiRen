package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CarCodeManagerItemBinding implements a {
    public final TextView carBodyEdit;
    public final TextView carDesc;
    public final TextView carTitle;
    public final TextView delete;
    public final TextView enableCarData;
    private final ConstraintLayout rootView;

    private CarCodeManagerItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.carBodyEdit = textView;
        this.carDesc = textView2;
        this.carTitle = textView3;
        this.delete = textView4;
        this.enableCarData = textView5;
    }

    public static CarCodeManagerItemBinding bind(View view) {
        int i = R.id.carBodyEdit;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.carDesc;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.carTitle;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.delete;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.enable_carData;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            return new CarCodeManagerItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CarCodeManagerItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CarCodeManagerItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.car_code_manager_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
