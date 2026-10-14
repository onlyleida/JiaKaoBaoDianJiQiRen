package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FaceFailDialogBinding implements a {
    public final TextView btnBottom;
    public final TextView btnLeft;
    public final TextView btnRight;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private FaceFailDialogBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, LinearLayout linearLayout2, TextView textView4) {
        this.rootView = linearLayout;
        this.btnBottom = textView;
        this.btnLeft = textView2;
        this.btnRight = textView3;
        this.rootLayout = linearLayout2;
        this.titleTv = textView4;
    }

    public static FaceFailDialogBinding bind(View view) {
        int i = R.id.btnBottom;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.btnLeft;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.btnRight;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.rootLayout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.titleTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new FaceFailDialogBinding((LinearLayout) view, textView, textView2, textView3, linearLayout, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FaceFailDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FaceFailDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.face_fail_dialog, viewGroup, false);
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
