package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogAroundLandHintBinding implements a {
    public final ImageView imgClose;
    private final FrameLayout rootView;
    public final TextView title;
    public final AppCompatTextView txtDiaotou;
    public final AppCompatTextView txtLeft;
    public final AppCompatTextView txtRight;
    public final AppCompatTextView txtStraight;

    private DialogAroundLandHintBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = frameLayout;
        this.imgClose = imageView;
        this.title = textView;
        this.txtDiaotou = appCompatTextView;
        this.txtLeft = appCompatTextView2;
        this.txtRight = appCompatTextView3;
        this.txtStraight = appCompatTextView4;
    }

    public static DialogAroundLandHintBinding bind(View view) {
        int i = R.id.img_close;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.txt_diaotou;
                AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
                if (appCompatTextView != null) {
                    i = R.id.txt_left;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                    if (appCompatTextView2 != null) {
                        i = R.id.txt_right;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) view.findViewById(i);
                        if (appCompatTextView3 != null) {
                            i = R.id.txt_straight;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) view.findViewById(i);
                            if (appCompatTextView4 != null) {
                                return new DialogAroundLandHintBinding((FrameLayout) view, imageView, textView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAroundLandHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAroundLandHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_around_land_hint, viewGroup, false);
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
