package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogCollectExampleBinding implements a {
    public final ImageView closeIv;
    public final ImageView imageIv;
    private final FrameLayout rootView;
    public final TextView tipTv;
    public final TextView titleTv;

    private DialogCollectExampleBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.imageIv = imageView2;
        this.tipTv = textView;
        this.titleTv = textView2;
    }

    public static DialogCollectExampleBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.imageIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.tipTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.titleTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new DialogCollectExampleBinding((FrameLayout) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogCollectExampleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCollectExampleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_collect_example, viewGroup, false);
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
