package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemChooseBarrierBinding implements a {
    public final TextView descTv;
    public final ImageView iconIv;
    private final ConstraintLayout rootView;

    private ItemChooseBarrierBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.descTv = textView;
        this.iconIv = imageView;
    }

    public static ItemChooseBarrierBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.iconIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                return new ItemChooseBarrierBinding((ConstraintLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemChooseBarrierBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemChooseBarrierBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_choose_barrier, viewGroup, false);
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
