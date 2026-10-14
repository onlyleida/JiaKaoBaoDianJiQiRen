package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogSafeShowValueBinding implements a {
    public final TextView rightTv;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView valueTv;

    private DialogSafeShowValueBinding(LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2) {
        this.rootView = linearLayout;
        this.rightTv = textView;
        this.rootLayout = linearLayout2;
        this.valueTv = textView2;
    }

    public static DialogSafeShowValueBinding bind(View view) {
        int i = R.id.rightTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.rootLayout;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.valueTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new DialogSafeShowValueBinding((LinearLayout) view, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSafeShowValueBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSafeShowValueBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_safe_show_value, viewGroup, false);
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
