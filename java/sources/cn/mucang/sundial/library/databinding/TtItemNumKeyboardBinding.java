package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtItemNumKeyboardBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView tvKey;
    public final ImageView tvKeyDel;

    private TtItemNumKeyboardBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.tvKey = textView;
        this.tvKeyDel = imageView;
    }

    public static TtItemNumKeyboardBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.tv_key);
        if (textView != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.tv_key_del);
            if (imageView != null) {
                return new TtItemNumKeyboardBinding((ConstraintLayout) view, textView, imageView);
            }
            str = "tvKeyDel";
        } else {
            str = "tvKey";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtItemNumKeyboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtItemNumKeyboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__item_num_keyboard, viewGroup, false);
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
