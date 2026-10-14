package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogPracticeTipsBinding implements a {
    public final ImageView image;
    public final CardView imageCard;
    public final ImageView ivClose;
    private final ConstraintLayout rootView;
    public final TextView timeTv;
    public final TextView tvTips;

    private DialogPracticeTipsBinding(ConstraintLayout constraintLayout, ImageView imageView, CardView cardView, ImageView imageView2, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.image = imageView;
        this.imageCard = cardView;
        this.ivClose = imageView2;
        this.timeTv = textView;
        this.tvTips = textView2;
    }

    public static DialogPracticeTipsBinding bind(View view) {
        int i = R.id.image;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.imageCard;
            CardView cardView = (CardView) view.findViewById(i);
            if (cardView != null) {
                i = R.id.ivClose;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.timeTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.tvTips;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            return new DialogPracticeTipsBinding((ConstraintLayout) view, imageView, cardView, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogPracticeTipsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPracticeTipsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_practice_tips, viewGroup, false);
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
