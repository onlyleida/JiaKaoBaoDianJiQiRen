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
public final class LightAssembleAddItemBinding implements a {
    public final TextView addTv;
    public final TextView deleteTv;
    public final TextView descTv;
    public final MucangImageView iconIv;
    private final ConstraintLayout rootView;
    public final TextView sortTv;
    public final TextView titleTv;

    private LightAssembleAddItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, MucangImageView mucangImageView, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.addTv = textView;
        this.deleteTv = textView2;
        this.descTv = textView3;
        this.iconIv = mucangImageView;
        this.sortTv = textView4;
        this.titleTv = textView5;
    }

    public static LightAssembleAddItemBinding bind(View view) {
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deleteTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.descTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.iconIv;
                    MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
                    if (mucangImageView != null) {
                        i = R.id.sortTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.titleTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                return new LightAssembleAddItemBinding((ConstraintLayout) view, textView, textView2, textView3, mucangImageView, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightAssembleAddItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightAssembleAddItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_assemble_add_item, viewGroup, false);
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
