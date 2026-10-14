package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LightOrderItemBinding implements a {
    public final TextView deleteTv;
    public final TextView descTv;
    public final TextView editTv;
    public final MucangImageView iconIv;
    public final TextView playOrderTv;
    private final ConstraintLayout rootView;
    public final TextView sortTv;
    public final TextView titleTv;

    private LightOrderItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, MucangImageView mucangImageView, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.deleteTv = textView;
        this.descTv = textView2;
        this.editTv = textView3;
        this.iconIv = mucangImageView;
        this.playOrderTv = textView4;
        this.sortTv = textView5;
        this.titleTv = textView6;
    }

    public static LightOrderItemBinding bind(View view) {
        int i = R.id.deleteTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.editTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.iconIv;
                    MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
                    if (mucangImageView != null) {
                        i = R.id.playOrderTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.sortTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.titleTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    return new LightOrderItemBinding((ConstraintLayout) view, textView, textView2, textView3, mucangImageView, textView4, textView5, textView6);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightOrderItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightOrderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_order_item, viewGroup, false);
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
