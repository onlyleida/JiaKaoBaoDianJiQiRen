package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityBindDeviceBinding implements a {
    public final ImageView iconQr;
    public final TextView refresh;
    private final LinearLayout rootView;
    public final StateLayout stateLayout;
    public final TextView tip;
    public final CommonTitleBinding titleLayout;

    private ActivityBindDeviceBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, StateLayout stateLayout, TextView textView2, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.iconQr = imageView;
        this.refresh = textView;
        this.stateLayout = stateLayout;
        this.tip = textView2;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityBindDeviceBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.icon_qr;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.refresh;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.stateLayout;
                StateLayout stateLayout = (StateLayout) view.findViewById(i);
                if (stateLayout != null) {
                    i = R.id.tip;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                        return new ActivityBindDeviceBinding((LinearLayout) view, imageView, textView, stateLayout, textView2, CommonTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityBindDeviceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBindDeviceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_bind_device, viewGroup, false);
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
