package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemAcceptanceBinding implements a {
    public final TextView btnTv;
    private final ConstraintLayout rootView;
    public final TextView statusTv;
    public final TextView timeTv;

    private ItemAcceptanceBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnTv = textView;
        this.statusTv = textView2;
        this.timeTv = textView3;
    }

    public static ItemAcceptanceBinding bind(View view) {
        int i = R.id.btnTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.statusTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.timeTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    return new ItemAcceptanceBinding((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemAcceptanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemAcceptanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_acceptance, viewGroup, false);
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
