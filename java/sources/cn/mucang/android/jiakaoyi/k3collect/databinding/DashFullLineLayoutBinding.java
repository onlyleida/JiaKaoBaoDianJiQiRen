package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DashFullLineLayoutBinding implements a {
    public final EditText etLineWidth;
    public final LinearLayout llColor;
    private final ConstraintLayout rootView;
    public final Spinner spColors;
    public final Spinner spShapeTypeList;
    public final TextView tvCollectEnd1;
    public final TextView tvCollectEnd2;
    public final TextView tvCollectStart1;
    public final TextView tvCollectStart2;
    public final TextView tvColor;
    public final TextView tvExample;
    public final TextView tvLineWidth;
    public final TextView tvShape;

    private DashFullLineLayoutBinding(ConstraintLayout constraintLayout, EditText editText, LinearLayout linearLayout, Spinner spinner, Spinner spinner2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.etLineWidth = editText;
        this.llColor = linearLayout;
        this.spColors = spinner;
        this.spShapeTypeList = spinner2;
        this.tvCollectEnd1 = textView;
        this.tvCollectEnd2 = textView2;
        this.tvCollectStart1 = textView3;
        this.tvCollectStart2 = textView4;
        this.tvColor = textView5;
        this.tvExample = textView6;
        this.tvLineWidth = textView7;
        this.tvShape = textView8;
    }

    public static DashFullLineLayoutBinding bind(View view) {
        int i = R.id.etLineWidth;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.ll_color;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.spColors;
                Spinner spinner = (Spinner) view.findViewById(i);
                if (spinner != null) {
                    i = R.id.spShapeTypeList;
                    Spinner spinner2 = (Spinner) view.findViewById(i);
                    if (spinner2 != null) {
                        i = R.id.tvCollectEnd1;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.tvCollectEnd2;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tvCollectStart1;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tvCollectStart2;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tvColor;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tvExample;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.tvLineWidth;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.tvShape;
                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                    if (textView8 != null) {
                                                        return new DashFullLineLayoutBinding((ConstraintLayout) view, editText, linearLayout, spinner, spinner2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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

    public static DashFullLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DashFullLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dash_full_line_layout, viewGroup, false);
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
