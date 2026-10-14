package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemChildBinding implements a {
    public final TextView btnTv;
    private final ConstraintLayout rootView;
    public final ImageView selectIv;
    public final TextView statusTv;

    private ItemChildBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnTv = textView;
        this.selectIv = imageView;
        this.statusTv = textView2;
    }

    public static ItemChildBinding bind(View view) {
        int i = R.id.btnTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.selectIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.statusTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new ItemChildBinding((ConstraintLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemChildBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemChildBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_child, viewGroup, false);
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
