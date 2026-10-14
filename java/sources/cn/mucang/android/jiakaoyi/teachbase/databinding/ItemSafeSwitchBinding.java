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
public final class ItemSafeSwitchBinding implements a {
    public final ImageView checkBox;
    public final ConstraintLayout clLayout;
    private final ConstraintLayout rootView;
    public final TextView text;

    private ItemSafeSwitchBinding(ConstraintLayout constraintLayout, ImageView imageView, ConstraintLayout constraintLayout2, TextView textView) {
        this.rootView = constraintLayout;
        this.checkBox = imageView;
        this.clLayout = constraintLayout2;
        this.text = textView;
    }

    public static ItemSafeSwitchBinding bind(View view) {
        int i = R.id.checkBox;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i2 = R.id.text;
            TextView textView = (TextView) view.findViewById(i2);
            if (textView != null) {
                return new ItemSafeSwitchBinding(constraintLayout, imageView, constraintLayout, textView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemSafeSwitchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSafeSwitchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_safe_switch, viewGroup, false);
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
