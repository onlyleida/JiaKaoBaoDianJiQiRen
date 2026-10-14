package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityMaterialSelectBinding implements a {
    public final TextView backTv;
    public final TextView confirmTv;
    public final View contentView;
    public final RecyclerView dataRv;
    public final TextView descTv;
    private final ConstraintLayout rootView;
    public final TextView typeTv;

    private ActivityMaterialSelectBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, View view, RecyclerView recyclerView, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.backTv = textView;
        this.confirmTv = textView2;
        this.contentView = view;
        this.dataRv = recyclerView;
        this.descTv = textView3;
        this.typeTv = textView4;
    }

    public static ActivityMaterialSelectBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.backTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.confirmTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.contentView))) != null) {
                i = R.id.dataRv;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.descTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.typeTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new ActivityMaterialSelectBinding((ConstraintLayout) view, textView, textView2, viewFindViewById, recyclerView, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityMaterialSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMaterialSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_material_select, viewGroup, false);
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
