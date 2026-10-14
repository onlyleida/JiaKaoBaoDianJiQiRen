package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CenterCircleEditLayoutBinding implements a {
    public final EditText etInInterval;
    public final EditText etInWidth;
    public final EditText etOutWidth;
    private final ConstraintLayout rootView;
    public final Spinner spCircleType;
    public final TextView tvCircleType;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvCollect3;
    public final TextView tvCollect4;
    public final TextView tvExample;
    public final TextView tvInInterval;
    public final TextView tvInWidth;
    public final TextView tvOutWidth;

    private CenterCircleEditLayoutBinding(ConstraintLayout constraintLayout, EditText editText, EditText editText2, EditText editText3, Spinner spinner, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = constraintLayout;
        this.etInInterval = editText;
        this.etInWidth = editText2;
        this.etOutWidth = editText3;
        this.spCircleType = spinner;
        this.tvCircleType = textView;
        this.tvCollect1 = textView2;
        this.tvCollect2 = textView3;
        this.tvCollect3 = textView4;
        this.tvCollect4 = textView5;
        this.tvExample = textView6;
        this.tvInInterval = textView7;
        this.tvInWidth = textView8;
        this.tvOutWidth = textView9;
    }

    public static CenterCircleEditLayoutBinding bind(View view) {
        int i = R.id.et_in_interval;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.et_in_width;
            EditText editText2 = (EditText) view.findViewById(i);
            if (editText2 != null) {
                i = R.id.et_out_width;
                EditText editText3 = (EditText) view.findViewById(i);
                if (editText3 != null) {
                    i = R.id.sp_circle_type;
                    Spinner spinner = (Spinner) view.findViewById(i);
                    if (spinner != null) {
                        i = R.id.tv_circle_type;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.tv_collect_1;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tv_collect_2;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tv_collect_3;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tv_collect_4;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tvExample;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.tv_in_interval;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.tv_in_width;
                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                    if (textView8 != null) {
                                                        i = R.id.tv_out_width;
                                                        TextView textView9 = (TextView) view.findViewById(i);
                                                        if (textView9 != null) {
                                                            return new CenterCircleEditLayoutBinding((ConstraintLayout) view, editText, editText2, editText3, spinner, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CenterCircleEditLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CenterCircleEditLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.center_circle_edit_layout, viewGroup, false);
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
