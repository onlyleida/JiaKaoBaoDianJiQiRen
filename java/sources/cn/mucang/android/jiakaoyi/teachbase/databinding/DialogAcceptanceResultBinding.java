package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogAcceptanceResultBinding implements a {
    public final TextView closeTv;
    public final RecyclerView recyclerView;
    public final LinearLayout rootLayout;
    private final RelativeLayout rootView;

    private DialogAcceptanceResultBinding(RelativeLayout relativeLayout, TextView textView, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.closeTv = textView;
        this.recyclerView = recyclerView;
        this.rootLayout = linearLayout;
    }

    public static DialogAcceptanceResultBinding bind(View view) {
        int i = R.id.closeTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.rootLayout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    return new DialogAcceptanceResultBinding((RelativeLayout) view, textView, recyclerView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAcceptanceResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAcceptanceResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_acceptance_result, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
