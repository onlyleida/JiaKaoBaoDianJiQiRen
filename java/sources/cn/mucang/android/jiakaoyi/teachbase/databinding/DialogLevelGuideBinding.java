package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogLevelGuideBinding implements a {
    public final TextView btnTv;
    public final TextView descTv;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private DialogLevelGuideBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, RecyclerView recyclerView, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnTv = textView;
        this.descTv = textView2;
        this.recyclerView = recyclerView;
        this.titleTv = textView3;
    }

    public static DialogLevelGuideBinding bind(View view) {
        int i = R.id.btnTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.titleTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new DialogLevelGuideBinding((ConstraintLayout) view, textView, textView2, recyclerView, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogLevelGuideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogLevelGuideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_level_guide, viewGroup, false);
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
