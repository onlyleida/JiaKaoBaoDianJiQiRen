package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectItemBinding implements a {
    public final ImageView addIv;
    public final ImageView deleteIv;
    public final TextView name;
    public final ImageView refreshIv;
    private final FrameLayout rootView;

    private TeachCollectItemBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, TextView textView, ImageView imageView3) {
        this.rootView = frameLayout;
        this.addIv = imageView;
        this.deleteIv = imageView2;
        this.name = textView;
        this.refreshIv = imageView3;
    }

    public static TeachCollectItemBinding bind(View view) {
        int i = R.id.addIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.deleteIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.name;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.refreshIv;
                    ImageView imageView3 = (ImageView) view.findViewById(i);
                    if (imageView3 != null) {
                        return new TeachCollectItemBinding((FrameLayout) view, imageView, imageView2, textView, imageView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_item, viewGroup, false);
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
