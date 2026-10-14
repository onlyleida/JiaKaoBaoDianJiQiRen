package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FullLineLayoutBinding implements a {
    public final EditText etLineWidth;
    public final LinearLayout llColor;
    public final LinearLayout llShape;
    private final LinearLayout rootView;
    public final Spinner spColors;
    public final Spinner spShapeTypeList;
    public final TextView tvCollectEnd;
    public final TextView tvCollectStart;
    public final TextView tvColor;
    public final TextView tvExample;
    public final TextView tvLineWidth;
    public final TextView tvMove;
    public final TextView tvShape;

    private FullLineLayoutBinding(LinearLayout linearLayout, EditText editText, LinearLayout linearLayout2, LinearLayout linearLayout3, Spinner spinner, Spinner spinner2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = linearLayout;
        this.etLineWidth = editText;
        this.llColor = linearLayout2;
        this.llShape = linearLayout3;
        this.spColors = spinner;
        this.spShapeTypeList = spinner2;
        this.tvCollectEnd = textView;
        this.tvCollectStart = textView2;
        this.tvColor = textView3;
        this.tvExample = textView4;
        this.tvLineWidth = textView5;
        this.tvMove = textView6;
        this.tvShape = textView7;
    }

    public static FullLineLayoutBinding bind(View view) {
        int i = R.id.etLineWidth;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.ll_color;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.ll_shape;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                if (linearLayout2 != null) {
                    i = R.id.spColors;
                    Spinner spinner = (Spinner) view.findViewById(i);
                    if (spinner != null) {
                        i = R.id.spShapeTypeList;
                        Spinner spinner2 = (Spinner) view.findViewById(i);
                        if (spinner2 != null) {
                            i = R.id.tvCollectEnd;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                i = R.id.tvCollectStart;
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    i = R.id.tvColor;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.tvExample;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.tvLineWidth;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.tvMove;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.tvShape;
                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                    if (textView7 != null) {
                                                        return new FullLineLayoutBinding((LinearLayout) view, editText, linearLayout, linearLayout2, spinner, spinner2, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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

    public static FullLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FullLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.full_line_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
