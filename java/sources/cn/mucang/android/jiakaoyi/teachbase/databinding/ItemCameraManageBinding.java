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
public final class ItemCameraManageBinding implements a {
    public final ImageView iconIv;
    public final TextView intentTv;
    private final ConstraintLayout rootView;
    public final TextView usbTv;

    private ItemCameraManageBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.iconIv = imageView;
        this.intentTv = textView;
        this.usbTv = textView2;
    }

    public static ItemCameraManageBinding bind(View view) {
        int i = R.id.iconIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.intentTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.usbTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new ItemCameraManageBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemCameraManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemCameraManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_camera_manage, viewGroup, false);
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
