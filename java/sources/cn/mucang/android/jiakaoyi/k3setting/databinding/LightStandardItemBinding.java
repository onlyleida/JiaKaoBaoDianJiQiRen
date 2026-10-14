package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LightStandardItemBinding implements a {
    public final MucangImageView iconIv;
    private final ConstraintLayout rootView;
    public final ImageView selectedIv;
    public final TextView titleTv;

    private LightStandardItemBinding(ConstraintLayout constraintLayout, MucangImageView mucangImageView, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.iconIv = mucangImageView;
        this.selectedIv = imageView;
        this.titleTv = textView;
    }

    public static LightStandardItemBinding bind(View view) {
        int i = R.id.iconIv;
        MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
        if (mucangImageView != null) {
            i = R.id.selectedIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.titleTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new LightStandardItemBinding((ConstraintLayout) view, mucangImageView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightStandardItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightStandardItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_standard_item, viewGroup, false);
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
