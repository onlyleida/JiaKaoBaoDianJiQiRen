package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemGuideImgBinding implements a {
    public final MucangRoundCornerImageView img;
    private final ConstraintLayout rootView;
    public final TextView text;

    private ItemGuideImgBinding(ConstraintLayout constraintLayout, MucangRoundCornerImageView mucangRoundCornerImageView, TextView textView) {
        this.rootView = constraintLayout;
        this.img = mucangRoundCornerImageView;
        this.text = textView;
    }

    public static ItemGuideImgBinding bind(View view) {
        int i = R.id.img;
        MucangRoundCornerImageView mucangRoundCornerImageView = (MucangRoundCornerImageView) view.findViewById(i);
        if (mucangRoundCornerImageView != null) {
            i = R.id.text;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new ItemGuideImgBinding((ConstraintLayout) view, mucangRoundCornerImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemGuideImgBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemGuideImgBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_guide_img, viewGroup, false);
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
