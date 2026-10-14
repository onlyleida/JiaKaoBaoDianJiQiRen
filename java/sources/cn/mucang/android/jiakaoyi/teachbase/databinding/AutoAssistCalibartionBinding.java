package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class AutoAssistCalibartionBinding implements a {
    public final EditText brakeCoefficientEt;
    public final EditText brakeDistanceEt;
    public final TextView confirm;
    public final EditText etCtrBackClutch;
    public final EditText etCtrSpeedClutch;
    public final EditText etCtrlSpeedBrake;
    public final EditText etHalfClutchStart;
    public final EditText etThrottle;
    private final ScrollView rootView;
    public final TextView saveTv;
    public final TextView teachTv;
    public final TextView temp1;
    public final TextView temp2;
    public final TextView temp3;
    public final TextView temp4;
    public final TextView temp5;
    public final TextView temp6;
    public final TextView temp7;
    public final TextView tipTv;
    public final TextView tvTypeCtrSpeed;

    private AutoAssistCalibartionBinding(ScrollView scrollView, EditText editText, EditText editText2, TextView textView, EditText editText3, EditText editText4, EditText editText5, EditText editText6, EditText editText7, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = scrollView;
        this.brakeCoefficientEt = editText;
        this.brakeDistanceEt = editText2;
        this.confirm = textView;
        this.etCtrBackClutch = editText3;
        this.etCtrSpeedClutch = editText4;
        this.etCtrlSpeedBrake = editText5;
        this.etHalfClutchStart = editText6;
        this.etThrottle = editText7;
        this.saveTv = textView2;
        this.teachTv = textView3;
        this.temp1 = textView4;
        this.temp2 = textView5;
        this.temp3 = textView6;
        this.temp4 = textView7;
        this.temp5 = textView8;
        this.temp6 = textView9;
        this.temp7 = textView10;
        this.tipTv = textView11;
        this.tvTypeCtrSpeed = textView12;
    }

    public static AutoAssistCalibartionBinding bind(View view) {
        int i = R.id.brakeCoefficientEt;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.brakeDistanceEt;
            EditText editText2 = (EditText) view.findViewById(i);
            if (editText2 != null) {
                i = R.id.confirm;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.et_ctr_back_clutch;
                    EditText editText3 = (EditText) view.findViewById(i);
                    if (editText3 != null) {
                        i = R.id.et_ctr_speed_clutch;
                        EditText editText4 = (EditText) view.findViewById(i);
                        if (editText4 != null) {
                            i = R.id.et_ctrl_speed_brake;
                            EditText editText5 = (EditText) view.findViewById(i);
                            if (editText5 != null) {
                                i = R.id.et_half_clutch_start;
                                EditText editText6 = (EditText) view.findViewById(i);
                                if (editText6 != null) {
                                    i = R.id.et_throttle;
                                    EditText editText7 = (EditText) view.findViewById(i);
                                    if (editText7 != null) {
                                        i = R.id.saveTv;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.teachTv;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.temp1;
                                                TextView textView4 = (TextView) view.findViewById(i);
                                                if (textView4 != null) {
                                                    i = R.id.temp2;
                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                    if (textView5 != null) {
                                                        i = R.id.temp3;
                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                        if (textView6 != null) {
                                                            i = R.id.temp4;
                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                            if (textView7 != null) {
                                                                i = R.id.temp5;
                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                if (textView8 != null) {
                                                                    i = R.id.temp6;
                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                    if (textView9 != null) {
                                                                        i = R.id.temp7;
                                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                                        if (textView10 != null) {
                                                                            i = R.id.tipTv;
                                                                            TextView textView11 = (TextView) view.findViewById(i);
                                                                            if (textView11 != null) {
                                                                                i = R.id.tv_type_ctr_speed;
                                                                                TextView textView12 = (TextView) view.findViewById(i);
                                                                                if (textView12 != null) {
                                                                                    return new AutoAssistCalibartionBinding((ScrollView) view, editText, editText2, textView, editText3, editText4, editText5, editText6, editText7, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AutoAssistCalibartionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AutoAssistCalibartionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.auto_assist_calibartion, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollView getRoot() {
        return this.rootView;
    }
}
