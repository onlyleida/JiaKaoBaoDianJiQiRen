package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogRemoveCurveHintBinding implements a {
    private final CardView rootView;
    public final TextView tvDeleteLine;
    public final TextView tvDeletePos;
    public final TextView tvSplit;

    private DialogRemoveCurveHintBinding(CardView cardView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = cardView;
        this.tvDeleteLine = textView;
        this.tvDeletePos = textView2;
        this.tvSplit = textView3;
    }

    public static DialogRemoveCurveHintBinding bind(View view) {
        int i = R.id.tv_delete_line;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tv_delete_pos;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tv_split;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new DialogRemoveCurveHintBinding((CardView) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogRemoveCurveHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogRemoveCurveHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_remove_curve_hint, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public CardView getRoot() {
        return this.rootView;
    }
}
