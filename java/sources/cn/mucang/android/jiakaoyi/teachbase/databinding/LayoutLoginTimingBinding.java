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
public final class LayoutLoginTimingBinding implements a {
    public final ImageView iconIv;
    public final TextView loginTv;
    private final ConstraintLayout rootView;
    public final TextView tipTv;

    private LayoutLoginTimingBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.iconIv = imageView;
        this.loginTv = textView;
        this.tipTv = textView2;
    }

    public static LayoutLoginTimingBinding bind(View view) {
        int i = R.id.iconIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.loginTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tipTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new LayoutLoginTimingBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutLoginTimingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginTimingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_timing, viewGroup, false);
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
