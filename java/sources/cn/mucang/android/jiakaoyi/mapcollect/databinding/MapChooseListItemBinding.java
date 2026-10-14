package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class MapChooseListItemBinding implements a {
    public final ImageView isChoose;
    private final ConstraintLayout rootView;
    public final TextView schoolTv;
    public final TextView siteTv;

    private MapChooseListItemBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.isChoose = imageView;
        this.schoolTv = textView;
        this.siteTv = textView2;
    }

    public static MapChooseListItemBinding bind(View view) {
        int i = R.id.isChoose;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.schoolTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.siteTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new MapChooseListItemBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static MapChooseListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MapChooseListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.map_choose_list_item, viewGroup, false);
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
