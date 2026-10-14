package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class GpsMissCommonBinding implements a {
    public final TextView leftTv;
    public final TextView rightTitleTv;
    public final TextView rightTv;
    public final FrameLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView secondText;
    public final TextView titleTv;

    private GpsMissCommonBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, FrameLayout frameLayout, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.leftTv = textView;
        this.rightTitleTv = textView2;
        this.rightTv = textView3;
        this.rootLayout = frameLayout;
        this.secondText = textView4;
        this.titleTv = textView5;
    }

    public static GpsMissCommonBinding bind(View view) {
        int i = R.id.leftTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.rightTitleTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.rightTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.rootLayout;
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                    if (frameLayout != null) {
                        i = R.id.second_text;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.titleTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                return new GpsMissCommonBinding((LinearLayout) view, textView, textView2, textView3, frameLayout, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static GpsMissCommonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GpsMissCommonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gps_miss_common, viewGroup, false);
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
