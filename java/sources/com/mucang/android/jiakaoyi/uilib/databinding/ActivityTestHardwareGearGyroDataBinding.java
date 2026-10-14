package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.HardwareGearCalibView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityTestHardwareGearGyroDataBinding implements a {
    public final Button finish;
    public final TextView g0;
    public final TextView g0Path1;
    public final TextView g0Stop;
    public final TextView g1;
    public final TextView g1Path1;
    public final TextView g1Stop;
    public final TextView g2;
    public final TextView g2Path1;
    public final TextView g2Stop;
    public final TextView g3;
    public final TextView g3Path1;
    public final TextView g3Stop;
    public final TextView g4;
    public final TextView g4Path1;
    public final TextView g4Stop;
    public final TextView g5;
    public final TextView g5Path1;
    public final TextView g5Stop;
    public final TextView gb;
    public final TextView gbPath1;
    public final TextView gbStop;
    public final Button getHardwareData;
    public final HardwareGearCalibView mapView;
    private final FrameLayout rootView;
    public final Button sendToMaster;
    public final TextView value;

    private ActivityTestHardwareGearGyroDataBinding(FrameLayout frameLayout, Button button, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21, Button button2, HardwareGearCalibView hardwareGearCalibView, Button button3, TextView textView22) {
        this.rootView = frameLayout;
        this.finish = button;
        this.g0 = textView;
        this.g0Path1 = textView2;
        this.g0Stop = textView3;
        this.g1 = textView4;
        this.g1Path1 = textView5;
        this.g1Stop = textView6;
        this.g2 = textView7;
        this.g2Path1 = textView8;
        this.g2Stop = textView9;
        this.g3 = textView10;
        this.g3Path1 = textView11;
        this.g3Stop = textView12;
        this.g4 = textView13;
        this.g4Path1 = textView14;
        this.g4Stop = textView15;
        this.g5 = textView16;
        this.g5Path1 = textView17;
        this.g5Stop = textView18;
        this.gb = textView19;
        this.gbPath1 = textView20;
        this.gbStop = textView21;
        this.getHardwareData = button2;
        this.mapView = hardwareGearCalibView;
        this.sendToMaster = button3;
        this.value = textView22;
    }

    public static ActivityTestHardwareGearGyroDataBinding bind(View view) {
        int i = R.id.finish;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.g0;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.g0_path1;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.g0_stop;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.g1;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.g1_path1;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.g1_stop;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.g2;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.g2_path1;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            i = R.id.g2_stop;
                                            TextView textView9 = (TextView) view.findViewById(i);
                                            if (textView9 != null) {
                                                i = R.id.g3;
                                                TextView textView10 = (TextView) view.findViewById(i);
                                                if (textView10 != null) {
                                                    i = R.id.g3_path1;
                                                    TextView textView11 = (TextView) view.findViewById(i);
                                                    if (textView11 != null) {
                                                        i = R.id.g3_stop;
                                                        TextView textView12 = (TextView) view.findViewById(i);
                                                        if (textView12 != null) {
                                                            i = R.id.g4;
                                                            TextView textView13 = (TextView) view.findViewById(i);
                                                            if (textView13 != null) {
                                                                i = R.id.g4_path1;
                                                                TextView textView14 = (TextView) view.findViewById(i);
                                                                if (textView14 != null) {
                                                                    i = R.id.g4_stop;
                                                                    TextView textView15 = (TextView) view.findViewById(i);
                                                                    if (textView15 != null) {
                                                                        i = R.id.g5;
                                                                        TextView textView16 = (TextView) view.findViewById(i);
                                                                        if (textView16 != null) {
                                                                            i = R.id.g5_path1;
                                                                            TextView textView17 = (TextView) view.findViewById(i);
                                                                            if (textView17 != null) {
                                                                                i = R.id.g5_stop;
                                                                                TextView textView18 = (TextView) view.findViewById(i);
                                                                                if (textView18 != null) {
                                                                                    i = R.id.gb;
                                                                                    TextView textView19 = (TextView) view.findViewById(i);
                                                                                    if (textView19 != null) {
                                                                                        i = R.id.gb_path1;
                                                                                        TextView textView20 = (TextView) view.findViewById(i);
                                                                                        if (textView20 != null) {
                                                                                            i = R.id.gb_stop;
                                                                                            TextView textView21 = (TextView) view.findViewById(i);
                                                                                            if (textView21 != null) {
                                                                                                i = R.id.getHardwareData;
                                                                                                Button button2 = (Button) view.findViewById(i);
                                                                                                if (button2 != null) {
                                                                                                    i = R.id.mapView;
                                                                                                    HardwareGearCalibView hardwareGearCalibView = (HardwareGearCalibView) view.findViewById(i);
                                                                                                    if (hardwareGearCalibView != null) {
                                                                                                        i = R.id.sendToMaster;
                                                                                                        Button button3 = (Button) view.findViewById(i);
                                                                                                        if (button3 != null) {
                                                                                                            i = R.id.value;
                                                                                                            TextView textView22 = (TextView) view.findViewById(i);
                                                                                                            if (textView22 != null) {
                                                                                                                return new ActivityTestHardwareGearGyroDataBinding((FrameLayout) view, button, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, button2, hardwareGearCalibView, button3, textView22);
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
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTestHardwareGearGyroDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestHardwareGearGyroDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_hardware_gear_gyro_data, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
