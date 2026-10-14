package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogAcceptanceItemBinding implements a {
    public final LinearLayout columnLl;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private DialogAcceptanceItemBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.columnLl = linearLayout;
        this.titleTv = textView;
    }

    public static DialogAcceptanceItemBinding bind(View view) {
        int i = R.id.columnLl;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.titleTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new DialogAcceptanceItemBinding((ConstraintLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAcceptanceItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAcceptanceItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_acceptance_item, viewGroup, false);
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
