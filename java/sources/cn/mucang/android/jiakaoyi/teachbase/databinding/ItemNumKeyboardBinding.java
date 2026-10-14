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
public final class ItemNumKeyboardBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView tvKey;
    public final ImageView tvKeyDel;

    private ItemNumKeyboardBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.tvKey = textView;
        this.tvKeyDel = imageView;
    }

    public static ItemNumKeyboardBinding bind(View view) {
        int i = R.id.tv_key;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_key_del;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                return new ItemNumKeyboardBinding((ConstraintLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemNumKeyboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemNumKeyboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_num_keyboard, viewGroup, false);
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
