package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityPermissionSettingBinding implements a {
    public final ImageView ivBack;
    public final RecyclerView recycleView;
    private final LinearLayout rootView;
    public final TextView tvNotes;

    private ActivityPermissionSettingBinding(LinearLayout linearLayout, ImageView imageView, RecyclerView recyclerView, TextView textView) {
        this.rootView = linearLayout;
        this.ivBack = imageView;
        this.recycleView = recyclerView;
        this.tvNotes = textView;
    }

    public static ActivityPermissionSettingBinding bind(View view) {
        int i = R.id.iv_back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.recycleView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.tv_notes;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new ActivityPermissionSettingBinding((LinearLayout) view, imageView, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityPermissionSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPermissionSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity__permission_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
