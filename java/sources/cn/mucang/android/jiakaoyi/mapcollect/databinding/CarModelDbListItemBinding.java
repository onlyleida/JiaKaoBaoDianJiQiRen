package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CarModelDbListItemBinding implements a {
    public final TextView addToMyCar;
    public final TextView carBodyEdit;
    public final TextView carDes;
    public final TextView carInfoEdit;
    public final TextView carTitle;
    public final TextView delete;
    private final ConstraintLayout rootView;
    public final TextView setToOfficial;

    private CarModelDbListItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.addToMyCar = textView;
        this.carBodyEdit = textView2;
        this.carDes = textView3;
        this.carInfoEdit = textView4;
        this.carTitle = textView5;
        this.delete = textView6;
        this.setToOfficial = textView7;
    }

    public static CarModelDbListItemBinding bind(View view) {
        int i = R.id.addToMyCar;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.carBodyEdit;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.carDes;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.carInfoEdit;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.carTitle;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.delete;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                i = R.id.setToOfficial;
                                TextView textView7 = (TextView) view.findViewById(i);
                                if (textView7 != null) {
                                    return new CarModelDbListItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CarModelDbListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CarModelDbListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.car_model_db_list_item, viewGroup, false);
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
