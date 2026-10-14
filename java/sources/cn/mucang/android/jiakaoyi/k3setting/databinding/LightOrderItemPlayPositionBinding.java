package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LightOrderItemPlayPositionBinding implements a {
    public final AppCompatCheckBox checkBox;
    public final ImageView playCodeTv;
    private final ConstraintLayout rootView;
    public final TextView tvPlayPosition;

    private LightOrderItemPlayPositionBinding(ConstraintLayout constraintLayout, AppCompatCheckBox appCompatCheckBox, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.checkBox = appCompatCheckBox;
        this.playCodeTv = imageView;
        this.tvPlayPosition = textView;
    }

    public static LightOrderItemPlayPositionBinding bind(View view) {
        int i = R.id.checkBox;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
        if (appCompatCheckBox != null) {
            i = R.id.playCodeTv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.tv_play_position;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new LightOrderItemPlayPositionBinding((ConstraintLayout) view, appCompatCheckBox, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightOrderItemPlayPositionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightOrderItemPlayPositionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_order_item_play_position, viewGroup, false);
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
