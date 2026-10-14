package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class MainTopBinding implements a {
    public final TextView bDeviceNumTv;
    public final TextView bPlaceTv;
    public final TextView bVersionTv;
    public final TextView deviceExpires;
    public final TextView netDelay;
    private final View rootView;
    public final TextView stationDistance;
    public final TextView stationState;

    private MainTopBinding(View view, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = view;
        this.bDeviceNumTv = textView;
        this.bPlaceTv = textView2;
        this.bVersionTv = textView3;
        this.deviceExpires = textView4;
        this.netDelay = textView5;
        this.stationDistance = textView6;
        this.stationState = textView7;
    }

    public static MainTopBinding bind(View view) {
        int i = R.id.bDeviceNumTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.bPlaceTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.bVersionTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.deviceExpires;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.netDelay;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.stationDistance;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                i = R.id.stationState;
                                TextView textView7 = (TextView) view.findViewById(i);
                                if (textView7 != null) {
                                    return new MainTopBinding(view, textView, textView2, textView3, textView4, textView5, textView6, textView7);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static MainTopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.main_top, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.a
    public View getRoot() {
        return this.rootView;
    }
}
