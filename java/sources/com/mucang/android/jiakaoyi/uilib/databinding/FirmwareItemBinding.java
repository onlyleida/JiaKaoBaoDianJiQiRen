package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FirmwareItemBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView text;
    public final TextView update;
    public final TextView versionLocal;
    public final TextView versionOnLine;

    private FirmwareItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.text = textView;
        this.update = textView2;
        this.versionLocal = textView3;
        this.versionOnLine = textView4;
    }

    public static FirmwareItemBinding bind(View view) {
        int i = R.id.text;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.update;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.versionLocal;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.versionOnLine;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new FirmwareItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FirmwareItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FirmwareItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.firmware_item, viewGroup, false);
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
