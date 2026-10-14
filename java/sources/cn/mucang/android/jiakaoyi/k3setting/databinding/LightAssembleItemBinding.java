package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LightAssembleItemBinding implements a {
    public final TextView deleteTv;
    public final TextView editTv;
    public final ImageView iconIv;
    private final ConstraintLayout rootView;
    public final TextView sortTv;
    public final TextView titleTv;

    private LightAssembleItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.deleteTv = textView;
        this.editTv = textView2;
        this.iconIv = imageView;
        this.sortTv = textView3;
        this.titleTv = textView4;
    }

    public static LightAssembleItemBinding bind(View view) {
        int i = R.id.deleteTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.editTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.iconIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.sortTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.titleTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new LightAssembleItemBinding((ConstraintLayout) view, textView, textView2, imageView, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightAssembleItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightAssembleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_assemble_item, viewGroup, false);
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
