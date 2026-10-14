package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class MainBottomBinding implements a {
    private final View rootView;
    public final TextView topCarTv;
    public final TextView topGpsTv;
    public final TextView topNetTv;
    public final TextView topSettingTv;
    public final TextView topVolumeTv;

    private MainBottomBinding(View view, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = view;
        this.topCarTv = textView;
        this.topGpsTv = textView2;
        this.topNetTv = textView3;
        this.topSettingTv = textView4;
        this.topVolumeTv = textView5;
    }

    public static MainBottomBinding bind(View view) {
        int i = R.id.topCarTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.topGpsTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.topNetTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.topSettingTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.topVolumeTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            return new MainBottomBinding(view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static MainBottomBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.main_bottom, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.a
    public View getRoot() {
        return this.rootView;
    }
}
