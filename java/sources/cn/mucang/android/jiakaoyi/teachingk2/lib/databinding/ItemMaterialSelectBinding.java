package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemMaterialSelectBinding implements a {
    public final MucangRoundCornerImageView coverIv;
    public final TextView descTv;
    private final ConstraintLayout rootView;
    public final Group selectGroup;
    public final ImageView selectIv;
    public final View selectView;

    private ItemMaterialSelectBinding(ConstraintLayout constraintLayout, MucangRoundCornerImageView mucangRoundCornerImageView, TextView textView, Group group, ImageView imageView, View view) {
        this.rootView = constraintLayout;
        this.coverIv = mucangRoundCornerImageView;
        this.descTv = textView;
        this.selectGroup = group;
        this.selectIv = imageView;
        this.selectView = view;
    }

    public static ItemMaterialSelectBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.coverIv;
        MucangRoundCornerImageView mucangRoundCornerImageView = (MucangRoundCornerImageView) view.findViewById(i);
        if (mucangRoundCornerImageView != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.selectGroup;
                Group group = (Group) view.findViewById(i);
                if (group != null) {
                    i = R.id.selectIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.selectView))) != null) {
                        return new ItemMaterialSelectBinding((ConstraintLayout) view, mucangRoundCornerImageView, textView, group, imageView, viewFindViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemMaterialSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemMaterialSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_material_select, viewGroup, false);
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
