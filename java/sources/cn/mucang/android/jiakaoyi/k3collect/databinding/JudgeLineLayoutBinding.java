package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class JudgeLineLayoutBinding implements a {
    public final AppCompatCheckBox checkBox1;
    public final AppCompatCheckBox checkBox2;
    public final AppCompatCheckBox checkBox3;
    public final LinearLayout llSelect;
    private final ConstraintLayout rootView;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvCollect3;
    public final TextView tvCollect4;
    public final TextView tvExample;
    public final TextView tvShape;

    private JudgeLineLayoutBinding(ConstraintLayout constraintLayout, AppCompatCheckBox appCompatCheckBox, AppCompatCheckBox appCompatCheckBox2, AppCompatCheckBox appCompatCheckBox3, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.checkBox1 = appCompatCheckBox;
        this.checkBox2 = appCompatCheckBox2;
        this.checkBox3 = appCompatCheckBox3;
        this.llSelect = linearLayout;
        this.tvCollect1 = textView;
        this.tvCollect2 = textView2;
        this.tvCollect3 = textView3;
        this.tvCollect4 = textView4;
        this.tvExample = textView5;
        this.tvShape = textView6;
    }

    public static JudgeLineLayoutBinding bind(View view) {
        int i = R.id.checkBox1;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
        if (appCompatCheckBox != null) {
            i = R.id.checkBox2;
            AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) view.findViewById(i);
            if (appCompatCheckBox2 != null) {
                i = R.id.checkBox3;
                AppCompatCheckBox appCompatCheckBox3 = (AppCompatCheckBox) view.findViewById(i);
                if (appCompatCheckBox3 != null) {
                    i = R.id.ll_select;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.tvCollect1;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.tvCollect2;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tvCollect3;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tvCollect4;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tvExample;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tvShape;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                return new JudgeLineLayoutBinding((ConstraintLayout) view, appCompatCheckBox, appCompatCheckBox2, appCompatCheckBox3, linearLayout, textView, textView2, textView3, textView4, textView5, textView6);
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

    public static JudgeLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JudgeLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.judge_line_layout, viewGroup, false);
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
