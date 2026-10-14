package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogAutoLogoutBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView textview2;
    public final TextView tvTimeHint;

    private DialogAutoLogoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.textview2 = textView;
        this.tvTimeHint = textView2;
    }

    public static DialogAutoLogoutBinding bind(View view) {
        int i = R.id.textview2;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.tvTimeHint;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                return new DialogAutoLogoutBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAutoLogoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAutoLogoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_auto_logout, viewGroup, false);
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
