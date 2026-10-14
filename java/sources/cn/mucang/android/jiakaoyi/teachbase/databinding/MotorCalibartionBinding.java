package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class MotorCalibartionBinding implements a {
    public final TextView confirm;
    public final EditText etValue;
    private final ConstraintLayout rootView;
    public final TextView targetTv;
    public final TextView temp1;
    public final TextView temp2;
    public final TextView temp3;
    public final TextView tipTv;
    public final TextView warningTv;
    public final TextView wayTv;

    private MotorCalibartionBinding(ConstraintLayout constraintLayout, TextView textView, EditText editText, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.confirm = textView;
        this.etValue = editText;
        this.targetTv = textView2;
        this.temp1 = textView3;
        this.temp2 = textView4;
        this.temp3 = textView5;
        this.tipTv = textView6;
        this.warningTv = textView7;
        this.wayTv = textView8;
    }

    public static MotorCalibartionBinding bind(View view) {
        int i = R.id.confirm;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.etValue;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.targetTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.temp1;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.temp2;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.temp3;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.tipTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.warningTv;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.wayTv;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new MotorCalibartionBinding((ConstraintLayout) view, textView, editText, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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

    public static MotorCalibartionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MotorCalibartionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.motor_calibartion, viewGroup, false);
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
