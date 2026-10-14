package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class K2ExamHeaderBinding implements a {
    public final LinearLayout beltLl;
    public final TextView beltTv;
    public final LinearLayout clutchLl;
    public final TextView clutchTv;
    public final LinearLayout doorLl;
    public final TextView doorTv;
    public final LinearLayout footBrakeLl;
    public final TextView footBrakeTv;
    public final LinearLayout gearLl;
    public final TextView gearTv;
    public final LinearLayout handbrakeLl;
    public final TextView handbrakeTv;
    public final TextView projectNameTv;
    private final ConstraintLayout rootView;

    private K2ExamHeaderBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2, LinearLayout linearLayout3, TextView textView3, LinearLayout linearLayout4, TextView textView4, LinearLayout linearLayout5, TextView textView5, LinearLayout linearLayout6, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.beltLl = linearLayout;
        this.beltTv = textView;
        this.clutchLl = linearLayout2;
        this.clutchTv = textView2;
        this.doorLl = linearLayout3;
        this.doorTv = textView3;
        this.footBrakeLl = linearLayout4;
        this.footBrakeTv = textView4;
        this.gearLl = linearLayout5;
        this.gearTv = textView5;
        this.handbrakeLl = linearLayout6;
        this.handbrakeTv = textView6;
        this.projectNameTv = textView7;
    }

    public static K2ExamHeaderBinding bind(View view) {
        int i = R.id.beltLl;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.beltTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.clutchLl;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                if (linearLayout2 != null) {
                    i = R.id.clutchTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.doorLl;
                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                        if (linearLayout3 != null) {
                            i = R.id.doorTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.footBrakeLl;
                                LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                if (linearLayout4 != null) {
                                    i = R.id.footBrakeTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.gearLl;
                                        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(i);
                                        if (linearLayout5 != null) {
                                            i = R.id.gearTv;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.handbrakeLl;
                                                LinearLayout linearLayout6 = (LinearLayout) view.findViewById(i);
                                                if (linearLayout6 != null) {
                                                    i = R.id.handbrakeTv;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        i = R.id.projectNameTv;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            return new K2ExamHeaderBinding((ConstraintLayout) view, linearLayout, textView, linearLayout2, textView2, linearLayout3, textView3, linearLayout4, textView4, linearLayout5, textView5, linearLayout6, textView6, textView7);
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

    public static K2ExamHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K2ExamHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k2_exam_header, viewGroup, false);
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
