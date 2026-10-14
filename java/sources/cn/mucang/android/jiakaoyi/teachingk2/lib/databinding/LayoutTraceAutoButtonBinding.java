package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutTraceAutoButtonBinding implements a {
    public final TextView backTv;
    public final Group cefangGroup;
    public final Group daokuGroup;
    public final EditText distanceEt;
    public final TextView func1Tv;
    public final TextView func2Tv;
    public final TextView func3Tv;
    public final RadioGroup func4Tv;
    public final LinearLayout func5Tv;
    public final TextView func6Tv;
    public final TextView func7Tv;
    public final RadioButton notTurnCb;
    public final TextView resultTv;
    private final ConstraintLayout rootView;
    public final RadioButton turnCb;
    public final Group zhijiaoGroup;

    private LayoutTraceAutoButtonBinding(ConstraintLayout constraintLayout, TextView textView, Group group, Group group2, EditText editText, TextView textView2, TextView textView3, TextView textView4, RadioGroup radioGroup, LinearLayout linearLayout, TextView textView5, TextView textView6, RadioButton radioButton, TextView textView7, RadioButton radioButton2, Group group3) {
        this.rootView = constraintLayout;
        this.backTv = textView;
        this.cefangGroup = group;
        this.daokuGroup = group2;
        this.distanceEt = editText;
        this.func1Tv = textView2;
        this.func2Tv = textView3;
        this.func3Tv = textView4;
        this.func4Tv = radioGroup;
        this.func5Tv = linearLayout;
        this.func6Tv = textView5;
        this.func7Tv = textView6;
        this.notTurnCb = radioButton;
        this.resultTv = textView7;
        this.turnCb = radioButton2;
        this.zhijiaoGroup = group3;
    }

    public static LayoutTraceAutoButtonBinding bind(View view) {
        int i = R.id.backTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cefangGroup;
            Group group = (Group) view.findViewById(i);
            if (group != null) {
                i = R.id.daokuGroup;
                Group group2 = (Group) view.findViewById(i);
                if (group2 != null) {
                    i = R.id.distanceEt;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.func1Tv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.func2Tv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.func3Tv;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.func4Tv;
                                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                    if (radioGroup != null) {
                                        i = R.id.func5Tv;
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                        if (linearLayout != null) {
                                            i = R.id.func6Tv;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.func7Tv;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.notTurnCb;
                                                    RadioButton radioButton = (RadioButton) view.findViewById(i);
                                                    if (radioButton != null) {
                                                        i = R.id.resultTv;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = R.id.turnCb;
                                                            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                                            if (radioButton2 != null) {
                                                                i = R.id.zhijiaoGroup;
                                                                Group group3 = (Group) view.findViewById(i);
                                                                if (group3 != null) {
                                                                    return new LayoutTraceAutoButtonBinding((ConstraintLayout) view, textView, group, group2, editText, textView2, textView3, textView4, radioGroup, linearLayout, textView5, textView6, radioButton, textView7, radioButton2, group3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutTraceAutoButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutTraceAutoButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_trace_auto_button, viewGroup, false);
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
