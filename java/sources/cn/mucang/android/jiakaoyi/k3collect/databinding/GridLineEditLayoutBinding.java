package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class GridLineEditLayoutBinding implements a {
    public final EditText etGridWidth;
    private final ConstraintLayout rootView;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvCollect3;
    public final TextView tvCollect4;
    public final TextView tvExample;
    public final TextView tvOutWidth;

    private GridLineEditLayoutBinding(ConstraintLayout constraintLayout, EditText editText, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.etGridWidth = editText;
        this.tvCollect1 = textView;
        this.tvCollect2 = textView2;
        this.tvCollect3 = textView3;
        this.tvCollect4 = textView4;
        this.tvExample = textView5;
        this.tvOutWidth = textView6;
    }

    public static GridLineEditLayoutBinding bind(View view) {
        int i = R.id.et_grid_width;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.tv_collect_1;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tv_collect_2;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tv_collect_3;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.tv_collect_4;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.tvExample;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.tv_out_width;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    return new GridLineEditLayoutBinding((ConstraintLayout) view, editText, textView, textView2, textView3, textView4, textView5, textView6);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static GridLineEditLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GridLineEditLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.grid_line_edit_layout, viewGroup, false);
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
