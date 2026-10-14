package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentCollectErrorsNewBinding implements a {
    public final CheckBox brakeCb;
    public final TextView brakeTv;
    public final CheckBox leftCb;
    public final TextView leftTv;
    public final CheckBox lightErrorCb;
    public final TextView lightErrorTv;
    public final CheckBox lightOpenCb;
    public final TextView lightOpenTv;
    public final CheckBox noCb;
    public final TextView noTv;
    public final CheckBox rightCb;
    public final TextView rightTv;
    private final ConstraintLayout rootView;
    public final TextView temp1;
    public final TextView temp2;

    private FragmentCollectErrorsNewBinding(ConstraintLayout constraintLayout, CheckBox checkBox, TextView textView, CheckBox checkBox2, TextView textView2, CheckBox checkBox3, TextView textView3, CheckBox checkBox4, TextView textView4, CheckBox checkBox5, TextView textView5, CheckBox checkBox6, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.brakeCb = checkBox;
        this.brakeTv = textView;
        this.leftCb = checkBox2;
        this.leftTv = textView2;
        this.lightErrorCb = checkBox3;
        this.lightErrorTv = textView3;
        this.lightOpenCb = checkBox4;
        this.lightOpenTv = textView4;
        this.noCb = checkBox5;
        this.noTv = textView5;
        this.rightCb = checkBox6;
        this.rightTv = textView6;
        this.temp1 = textView7;
        this.temp2 = textView8;
    }

    public static FragmentCollectErrorsNewBinding bind(View view) {
        int i = R.id.brakeCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.brakeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.leftCb;
                CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                if (checkBox2 != null) {
                    i = R.id.leftTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.lightErrorCb;
                        CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                        if (checkBox3 != null) {
                            i = R.id.lightErrorTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.lightOpenCb;
                                CheckBox checkBox4 = (CheckBox) view.findViewById(i);
                                if (checkBox4 != null) {
                                    i = R.id.lightOpenTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.noCb;
                                        CheckBox checkBox5 = (CheckBox) view.findViewById(i);
                                        if (checkBox5 != null) {
                                            i = R.id.noTv;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.rightCb;
                                                CheckBox checkBox6 = (CheckBox) view.findViewById(i);
                                                if (checkBox6 != null) {
                                                    i = R.id.rightTv;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        i = R.id.temp1;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = R.id.temp2;
                                                            TextView textView8 = (TextView) view.findViewById(i);
                                                            if (textView8 != null) {
                                                                return new FragmentCollectErrorsNewBinding((ConstraintLayout) view, checkBox, textView, checkBox2, textView2, checkBox3, textView3, checkBox4, textView4, checkBox5, textView5, checkBox6, textView6, textView7, textView8);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragmentCollectErrorsNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCollectErrorsNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_collect_errors_new, viewGroup, false);
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
