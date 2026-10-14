package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemCheckSettingBinding implements a {
    public final ImageView checkCb;
    private final ConstraintLayout rootView;
    public final Space space;
    public final TextView titleTv;

    private ItemCheckSettingBinding(ConstraintLayout constraintLayout, ImageView imageView, Space space, TextView textView) {
        this.rootView = constraintLayout;
        this.checkCb = imageView;
        this.space = space;
        this.titleTv = textView;
    }

    public static ItemCheckSettingBinding bind(View view) {
        int i = R.id.checkCb;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.space;
            Space space = (Space) view.findViewById(i);
            if (space != null) {
                i = R.id.titleTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new ItemCheckSettingBinding((ConstraintLayout) view, imageView, space, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemCheckSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemCheckSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_check_setting, viewGroup, false);
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
