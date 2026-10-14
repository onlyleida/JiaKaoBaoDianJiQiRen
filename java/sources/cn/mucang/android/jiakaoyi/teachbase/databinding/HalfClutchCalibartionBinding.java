package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class HalfClutchCalibartionBinding implements a {
    public final TextView btnHalfClutchEnd;
    public final TextView btnHalfClutchStart;
    public final EditText etHalfClutchEnd;
    public final EditText etHalfClutchStart;
    public final Button ivRpm;
    public final Button ivXc;
    private final ScrollView rootView;
    public final TextView temp1;
    public final TextView temp2;
    public final TextView tipTv;
    public final TextView tvRpm;
    public final TextView tvTitle;
    public final TextView tvXc;

    private HalfClutchCalibartionBinding(ScrollView scrollView, TextView textView, TextView textView2, EditText editText, EditText editText2, Button button, Button button2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = scrollView;
        this.btnHalfClutchEnd = textView;
        this.btnHalfClutchStart = textView2;
        this.etHalfClutchEnd = editText;
        this.etHalfClutchStart = editText2;
        this.ivRpm = button;
        this.ivXc = button2;
        this.temp1 = textView3;
        this.temp2 = textView4;
        this.tipTv = textView5;
        this.tvRpm = textView6;
        this.tvTitle = textView7;
        this.tvXc = textView8;
    }

    public static HalfClutchCalibartionBinding bind(View view) {
        int i = R.id.btn_half_clutch_end;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.btn_half_clutch_start;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.et_half_clutch_end;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.et_half_clutch_start;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.iv_rpm;
                        Button button = (Button) view.findViewById(i);
                        if (button != null) {
                            i = R.id.iv_xc;
                            Button button2 = (Button) view.findViewById(i);
                            if (button2 != null) {
                                i = R.id.temp1;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.temp2;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tipTv;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tv_rpm;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.tv_title;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.tv_xc;
                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                    if (textView8 != null) {
                                                        return new HalfClutchCalibartionBinding((ScrollView) view, textView, textView2, editText, editText2, button, button2, textView3, textView4, textView5, textView6, textView7, textView8);
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

    public static HalfClutchCalibartionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HalfClutchCalibartionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.half_clutch_calibartion, viewGroup, false);
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
