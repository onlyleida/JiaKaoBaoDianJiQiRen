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
public final class TeachCollectVariableItemBinding implements a {
    public final TextView name;
    private final ConstraintLayout rootView;
    public final ImageView vMore;

    private TeachCollectVariableItemBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.name = textView;
        this.vMore = imageView;
    }

    public static TeachCollectVariableItemBinding bind(View view) {
        int i = R.id.name;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.vMore;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                return new TeachCollectVariableItemBinding((ConstraintLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVariableItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVariableItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_variable_item, viewGroup, false);
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
