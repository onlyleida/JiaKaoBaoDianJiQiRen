package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemSingleBinding implements a {
    public final ImageView deleteIv;
    public final TextView name;
    private final ConstraintLayout rootView;
    public final CheckBox select;

    private NewCollectItemSingleBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, CheckBox checkBox) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.name = textView;
        this.select = checkBox;
    }

    public static NewCollectItemSingleBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.select;
                CheckBox checkBox = (CheckBox) view.findViewById(i);
                if (checkBox != null) {
                    return new NewCollectItemSingleBinding((ConstraintLayout) view, imageView, textView, checkBox);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemSingleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemSingleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_single, viewGroup, false);
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
