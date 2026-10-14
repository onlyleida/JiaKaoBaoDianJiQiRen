package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemPermissionSettingLayoutBinding implements a {
    public final ImageView ivArrow;
    private final ConstraintLayout rootView;
    public final TextView tvAuthorizedStatus;
    public final TextView tvDes;
    public final TextView tvTitle;

    private ItemPermissionSettingLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.ivArrow = imageView;
        this.tvAuthorizedStatus = textView;
        this.tvDes = textView2;
        this.tvTitle = textView3;
    }

    public static ItemPermissionSettingLayoutBinding bind(View view) {
        int i = R.id.iv_arrow;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.tv_authorized_status;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tv_des;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new ItemPermissionSettingLayoutBinding((ConstraintLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemPermissionSettingLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemPermissionSettingLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item__permission_setting_layout, viewGroup, false);
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
