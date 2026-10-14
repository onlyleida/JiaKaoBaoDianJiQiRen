package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutExitAppBinding implements a {
    public final TextView appNameTv;
    public final TextView appVersionTv;
    public final TextView byeTv;
    public final TextView countDownTv;
    public final TextView descTv;
    public final View dot1;
    public final View dot2;
    public final ImageView robotIv;
    private final ConstraintLayout rootView;
    public final TextView tv1;
    public final TextView tv2;
    public final TextView tv3;

    private LayoutExitAppBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2, ImageView imageView, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.appNameTv = textView;
        this.appVersionTv = textView2;
        this.byeTv = textView3;
        this.countDownTv = textView4;
        this.descTv = textView5;
        this.dot1 = view;
        this.dot2 = view2;
        this.robotIv = imageView;
        this.tv1 = textView6;
        this.tv2 = textView7;
        this.tv3 = textView8;
    }

    public static LayoutExitAppBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.appNameTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.appVersionTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.byeTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.countDownTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.descTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null && (viewFindViewById = view.findViewById((i = R.id.dot1))) != null && (viewFindViewById2 = view.findViewById((i = R.id.dot2))) != null) {
                            i = R.id.robotIv;
                            ImageView imageView = (ImageView) view.findViewById(i);
                            if (imageView != null) {
                                i = R.id.tv1;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.tv2;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.tv3;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new LayoutExitAppBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, viewFindViewById, viewFindViewById2, imageView, textView6, textView7, textView8);
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

    public static LayoutExitAppBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutExitAppBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout__exit_app, viewGroup, false);
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
