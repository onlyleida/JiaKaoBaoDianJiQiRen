package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemVoicePackBinding implements a {
    private final LinearLayout rootView;
    public final TextView tvName;

    private ItemVoicePackBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.tvName = textView;
    }

    public static ItemVoicePackBinding bind(View view) {
        int i = R.id.tvName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new ItemVoicePackBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemVoicePackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemVoicePackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_voice_pack, viewGroup, false);
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
