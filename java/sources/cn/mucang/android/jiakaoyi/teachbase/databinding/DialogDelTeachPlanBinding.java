package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogDelTeachPlanBinding implements a {
    public final TextView cancel;
    public final TextView confirm;
    public final TextView content;
    private final ConstraintLayout rootView;
    public final TextView title;

    private DialogDelTeachPlanBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.cancel = textView;
        this.confirm = textView2;
        this.content = textView3;
        this.title = textView4;
    }

    public static DialogDelTeachPlanBinding bind(View view) {
        int i = R.id.cancel;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.confirm;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.content;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.title;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new DialogDelTeachPlanBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogDelTeachPlanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogDelTeachPlanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_del_teach_plan, viewGroup, false);
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
