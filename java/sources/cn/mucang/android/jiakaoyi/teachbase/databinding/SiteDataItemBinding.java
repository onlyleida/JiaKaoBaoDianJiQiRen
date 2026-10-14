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
public final class SiteDataItemBinding implements a {
    public final TextView desc;
    public final ImageView icon;
    public final TextView name;
    public final ConstraintLayout root;
    private final ConstraintLayout rootView;

    private SiteDataItemBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, ConstraintLayout constraintLayout2) {
        this.rootView = constraintLayout;
        this.desc = textView;
        this.icon = imageView;
        this.name = textView2;
        this.root = constraintLayout2;
    }

    public static SiteDataItemBinding bind(View view) {
        int i = R.id.desc;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.icon;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.name;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    return new SiteDataItemBinding(constraintLayout, textView, imageView, textView2, constraintLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SiteDataItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SiteDataItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.site_data_item, viewGroup, false);
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
