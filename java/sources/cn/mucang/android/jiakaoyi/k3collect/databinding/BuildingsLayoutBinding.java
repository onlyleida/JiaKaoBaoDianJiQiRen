package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class BuildingsLayoutBinding implements a {
    public final AppCompatEditText etDesc;
    private final ConstraintLayout rootView;
    public final Spinner spShapeTypeList;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvDesc;
    public final TextView tvExample;
    public final TextView tvShape;

    private BuildingsLayoutBinding(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, Spinner spinner, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.etDesc = appCompatEditText;
        this.spShapeTypeList = spinner;
        this.tvCollect1 = textView;
        this.tvCollect2 = textView2;
        this.tvDesc = textView3;
        this.tvExample = textView4;
        this.tvShape = textView5;
    }

    public static BuildingsLayoutBinding bind(View view) {
        int i = R.id.etDesc;
        AppCompatEditText appCompatEditText = (AppCompatEditText) view.findViewById(i);
        if (appCompatEditText != null) {
            i = R.id.spShapeTypeList;
            Spinner spinner = (Spinner) view.findViewById(i);
            if (spinner != null) {
                i = R.id.tvCollect1;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.tvCollect2;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.tvDesc;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.tvExample;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.tvShape;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    return new BuildingsLayoutBinding((ConstraintLayout) view, appCompatEditText, spinner, textView, textView2, textView3, textView4, textView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static BuildingsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static BuildingsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.buildings_layout, viewGroup, false);
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
