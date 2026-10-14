package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class AiSignalItemBinding implements a {
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final TextView valueTv;

    private AiSignalItemBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.nameTv = textView;
        this.valueTv = textView2;
    }

    public static AiSignalItemBinding bind(View view) {
        int i = R.id.nameTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.valueTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new AiSignalItemBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AiSignalItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AiSignalItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ai_signal_item, viewGroup, false);
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
