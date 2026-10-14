package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtDialogUpgradeComfirmBinding implements a {
    public final TextView ok;
    private final LinearLayout rootView;
    public final TextView title;

    private TtDialogUpgradeComfirmBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.ok = textView;
        this.title = textView2;
    }

    public static TtDialogUpgradeComfirmBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.ok);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            if (textView2 != null) {
                return new TtDialogUpgradeComfirmBinding((LinearLayout) view, textView, textView2);
            }
            str = "title";
        } else {
            str = "ok";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtDialogUpgradeComfirmBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtDialogUpgradeComfirmBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__dialog_upgrade_comfirm, viewGroup, false);
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
