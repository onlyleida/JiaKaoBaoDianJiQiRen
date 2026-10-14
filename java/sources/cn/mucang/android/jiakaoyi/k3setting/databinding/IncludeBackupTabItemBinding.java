package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class IncludeBackupTabItemBinding implements a {
    public final ImageView icon;
    public final TextView name;
    private final FrameLayout rootView;

    private IncludeBackupTabItemBinding(FrameLayout frameLayout, ImageView imageView, TextView textView) {
        this.rootView = frameLayout;
        this.icon = imageView;
        this.name = textView;
    }

    public static IncludeBackupTabItemBinding bind(View view) {
        int i = R.id.icon;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new IncludeBackupTabItemBinding((FrameLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static IncludeBackupTabItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static IncludeBackupTabItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.include_backup_tab_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
