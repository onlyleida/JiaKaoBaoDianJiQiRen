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
public final class ItemLevelGuideBinding implements a {
    public final ImageView bigIv;
    public final View leftDivider;
    public final View rightDivider;
    private final ConstraintLayout rootView;
    public final ImageView smallIv;
    public final TextView titleTv;

    private ItemLevelGuideBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, View view2, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.bigIv = imageView;
        this.leftDivider = view;
        this.rightDivider = view2;
        this.smallIv = imageView2;
        this.titleTv = textView;
    }

    public static ItemLevelGuideBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.bigIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.leftDivider))) != null && (viewFindViewById2 = view.findViewById((i = R.id.rightDivider))) != null) {
            i = R.id.smallIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.titleTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new ItemLevelGuideBinding((ConstraintLayout) view, imageView, viewFindViewById, viewFindViewById2, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemLevelGuideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLevelGuideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_level_guide, viewGroup, false);
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
