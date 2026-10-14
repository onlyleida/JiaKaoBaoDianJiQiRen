package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogCommonBinding implements a {
    public final LinearLayout btnLl;
    public final ImageView closeIv;
    public final TextView descTv;
    public final TextView leftTv;
    public final ImageView picture;
    public final TextView rightTv;
    public final FrameLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private DialogCommonBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, TextView textView, TextView textView2, ImageView imageView2, TextView textView3, FrameLayout frameLayout, TextView textView4) {
        this.rootView = linearLayout;
        this.btnLl = linearLayout2;
        this.closeIv = imageView;
        this.descTv = textView;
        this.leftTv = textView2;
        this.picture = imageView2;
        this.rightTv = textView3;
        this.rootLayout = frameLayout;
        this.titleTv = textView4;
    }

    public static DialogCommonBinding bind(View view) {
        int i = R.id.btnLl;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.descTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.leftTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.picture;
                        ImageView imageView2 = (ImageView) view.findViewById(i);
                        if (imageView2 != null) {
                            i = R.id.rightTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.rootLayout;
                                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                if (frameLayout != null) {
                                    i = R.id.titleTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        return new DialogCommonBinding((LinearLayout) view, linearLayout, imageView, textView, textView2, imageView2, textView3, frameLayout, textView4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogCommonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCommonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_common, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
