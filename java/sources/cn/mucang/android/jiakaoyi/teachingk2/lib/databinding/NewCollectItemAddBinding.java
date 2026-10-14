package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemAddBinding implements a {
    public final ImageView addIv;
    public final View divider;
    public final TextView name;
    private final ConstraintLayout rootView;

    private NewCollectItemAddBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, TextView textView) {
        this.rootView = constraintLayout;
        this.addIv = imageView;
        this.divider = view;
        this.name = textView;
    }

    public static NewCollectItemAddBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.addIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new NewCollectItemAddBinding((ConstraintLayout) view, imageView, viewFindViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemAddBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemAddBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_add, viewGroup, false);
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
