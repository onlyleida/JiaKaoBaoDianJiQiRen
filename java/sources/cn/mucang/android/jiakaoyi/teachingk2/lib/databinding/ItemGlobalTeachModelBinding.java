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
public final class ItemGlobalTeachModelBinding implements a {
    public final ImageView deleteIv;
    public final ImageView editIv;
    public final TextView modelTv;
    private final ConstraintLayout rootView;

    private ItemGlobalTeachModelBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.editIv = imageView2;
        this.modelTv = textView;
    }

    public static ItemGlobalTeachModelBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.editIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.modelTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new ItemGlobalTeachModelBinding((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemGlobalTeachModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemGlobalTeachModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_global_teach_model, viewGroup, false);
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
