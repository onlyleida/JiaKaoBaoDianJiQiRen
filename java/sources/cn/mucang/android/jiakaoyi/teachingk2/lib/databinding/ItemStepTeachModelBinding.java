package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemStepTeachModelBinding implements a {
    public final TextView addTv;
    public final TextView deleteTv;
    public final TextView descTv;
    public final TextView editTv;
    private final ConstraintLayout rootView;
    public final TextView titleTv;
    public final TextView traceTv;

    private ItemStepTeachModelBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.addTv = textView;
        this.deleteTv = textView2;
        this.descTv = textView3;
        this.editTv = textView4;
        this.titleTv = textView5;
        this.traceTv = textView6;
    }

    public static ItemStepTeachModelBinding bind(View view) {
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deleteTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.descTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.editTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.titleTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.traceTv;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                return new ItemStepTeachModelBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemStepTeachModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemStepTeachModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_step_teach_model, viewGroup, false);
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
