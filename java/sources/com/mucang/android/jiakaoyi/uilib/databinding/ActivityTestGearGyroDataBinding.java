package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.GearView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityTestGearGyroDataBinding implements a {
    public final CheckBox areaFun;
    public final TextView argNum;
    public final TextView argNumBottom;
    public final SeekBar argSeek;
    public final SeekBar argSeekBottom;
    public final LinearLayout argumentContent;
    public final Button autoLearn;
    public final CheckBox calGearWhenClutch;
    public final CheckBox calOnce;
    public final CheckBox calQuick;
    public final Button calibrate;
    public final Button finish;
    public final TextView g0;
    public final TextView g0Path1;
    public final TextView g0Path2;
    public final TextView g0Path3;
    public final TextView g1;
    public final TextView g1Path1;
    public final TextView g1Path2;
    public final TextView g1Path3;
    public final TextView g2;
    public final TextView g2Path1;
    public final TextView g2Path2;
    public final TextView g2Path3;
    public final TextView g3;
    public final TextView g3Path1;
    public final TextView g3Path2;
    public final TextView g3Path3;
    public final TextView g4;
    public final TextView g4Path1;
    public final TextView g4Path2;
    public final TextView g4Path3;
    public final TextView g5;
    public final TextView g5Path1;
    public final TextView g5Path2;
    public final TextView g5Path3;
    public final TextView gb;
    public final TextView gbPath1;
    public final TextView gbPath2;
    public final TextView gbPath3;
    public final GearView mapView;
    public final CheckBox noCalWhenNoClutch;
    public final Button oneKeyCalibrate;
    private final FrameLayout rootView;
    public final CheckBox trustExtGear;
    public final CheckBox trustObdGear;
    public final TextView value;
    public final TextView valueNum;
    public final SeekBar valueSeek;

    private ActivityTestGearGyroDataBinding(FrameLayout frameLayout, CheckBox checkBox, TextView textView, TextView textView2, SeekBar seekBar, SeekBar seekBar2, LinearLayout linearLayout, Button button, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, Button button2, Button button3, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24, TextView textView25, TextView textView26, TextView textView27, TextView textView28, TextView textView29, TextView textView30, GearView gearView, CheckBox checkBox5, Button button4, CheckBox checkBox6, CheckBox checkBox7, TextView textView31, TextView textView32, SeekBar seekBar3) {
        this.rootView = frameLayout;
        this.areaFun = checkBox;
        this.argNum = textView;
        this.argNumBottom = textView2;
        this.argSeek = seekBar;
        this.argSeekBottom = seekBar2;
        this.argumentContent = linearLayout;
        this.autoLearn = button;
        this.calGearWhenClutch = checkBox2;
        this.calOnce = checkBox3;
        this.calQuick = checkBox4;
        this.calibrate = button2;
        this.finish = button3;
        this.g0 = textView3;
        this.g0Path1 = textView4;
        this.g0Path2 = textView5;
        this.g0Path3 = textView6;
        this.g1 = textView7;
        this.g1Path1 = textView8;
        this.g1Path2 = textView9;
        this.g1Path3 = textView10;
        this.g2 = textView11;
        this.g2Path1 = textView12;
        this.g2Path2 = textView13;
        this.g2Path3 = textView14;
        this.g3 = textView15;
        this.g3Path1 = textView16;
        this.g3Path2 = textView17;
        this.g3Path3 = textView18;
        this.g4 = textView19;
        this.g4Path1 = textView20;
        this.g4Path2 = textView21;
        this.g4Path3 = textView22;
        this.g5 = textView23;
        this.g5Path1 = textView24;
        this.g5Path2 = textView25;
        this.g5Path3 = textView26;
        this.gb = textView27;
        this.gbPath1 = textView28;
        this.gbPath2 = textView29;
        this.gbPath3 = textView30;
        this.mapView = gearView;
        this.noCalWhenNoClutch = checkBox5;
        this.oneKeyCalibrate = button4;
        this.trustExtGear = checkBox6;
        this.trustObdGear = checkBox7;
        this.value = textView31;
        this.valueNum = textView32;
        this.valueSeek = seekBar3;
    }

    public static ActivityTestGearGyroDataBinding bind(View view) {
        int i = R.id.areaFun;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.argNum;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.argNumBottom;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.argSeek;
                    SeekBar seekBar = (SeekBar) view.findViewById(i);
                    if (seekBar != null) {
                        i = R.id.argSeekBottom;
                        SeekBar seekBar2 = (SeekBar) view.findViewById(i);
                        if (seekBar2 != null) {
                            i = R.id.argumentContent;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                            if (linearLayout != null) {
                                i = R.id.autoLearn;
                                Button button = (Button) view.findViewById(i);
                                if (button != null) {
                                    i = R.id.calGearWhenClutch;
                                    CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                                    if (checkBox2 != null) {
                                        i = R.id.calOnce;
                                        CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                                        if (checkBox3 != null) {
                                            i = R.id.calQuick;
                                            CheckBox checkBox4 = (CheckBox) view.findViewById(i);
                                            if (checkBox4 != null) {
                                                i = R.id.calibrate;
                                                Button button2 = (Button) view.findViewById(i);
                                                if (button2 != null) {
                                                    i = R.id.finish;
                                                    Button button3 = (Button) view.findViewById(i);
                                                    if (button3 != null) {
                                                        i = R.id.g0;
                                                        TextView textView3 = (TextView) view.findViewById(i);
                                                        if (textView3 != null) {
                                                            i = R.id.g0_path1;
                                                            TextView textView4 = (TextView) view.findViewById(i);
                                                            if (textView4 != null) {
                                                                i = R.id.g0_path2;
                                                                TextView textView5 = (TextView) view.findViewById(i);
                                                                if (textView5 != null) {
                                                                    i = R.id.g0_path3;
                                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                                    if (textView6 != null) {
                                                                        i = R.id.g1;
                                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                                        if (textView7 != null) {
                                                                            i = R.id.g1_path1;
                                                                            TextView textView8 = (TextView) view.findViewById(i);
                                                                            if (textView8 != null) {
                                                                                i = R.id.g1_path2;
                                                                                TextView textView9 = (TextView) view.findViewById(i);
                                                                                if (textView9 != null) {
                                                                                    i = R.id.g1_path3;
                                                                                    TextView textView10 = (TextView) view.findViewById(i);
                                                                                    if (textView10 != null) {
                                                                                        i = R.id.g2;
                                                                                        TextView textView11 = (TextView) view.findViewById(i);
                                                                                        if (textView11 != null) {
                                                                                            i = R.id.g2_path1;
                                                                                            TextView textView12 = (TextView) view.findViewById(i);
                                                                                            if (textView12 != null) {
                                                                                                i = R.id.g2_path2;
                                                                                                TextView textView13 = (TextView) view.findViewById(i);
                                                                                                if (textView13 != null) {
                                                                                                    i = R.id.g2_path3;
                                                                                                    TextView textView14 = (TextView) view.findViewById(i);
                                                                                                    if (textView14 != null) {
                                                                                                        i = R.id.g3;
                                                                                                        TextView textView15 = (TextView) view.findViewById(i);
                                                                                                        if (textView15 != null) {
                                                                                                            i = R.id.g3_path1;
                                                                                                            TextView textView16 = (TextView) view.findViewById(i);
                                                                                                            if (textView16 != null) {
                                                                                                                i = R.id.g3_path2;
                                                                                                                TextView textView17 = (TextView) view.findViewById(i);
                                                                                                                if (textView17 != null) {
                                                                                                                    i = R.id.g3_path3;
                                                                                                                    TextView textView18 = (TextView) view.findViewById(i);
                                                                                                                    if (textView18 != null) {
                                                                                                                        i = R.id.g4;
                                                                                                                        TextView textView19 = (TextView) view.findViewById(i);
                                                                                                                        if (textView19 != null) {
                                                                                                                            i = R.id.g4_path1;
                                                                                                                            TextView textView20 = (TextView) view.findViewById(i);
                                                                                                                            if (textView20 != null) {
                                                                                                                                i = R.id.g4_path2;
                                                                                                                                TextView textView21 = (TextView) view.findViewById(i);
                                                                                                                                if (textView21 != null) {
                                                                                                                                    i = R.id.g4_path3;
                                                                                                                                    TextView textView22 = (TextView) view.findViewById(i);
                                                                                                                                    if (textView22 != null) {
                                                                                                                                        i = R.id.g5;
                                                                                                                                        TextView textView23 = (TextView) view.findViewById(i);
                                                                                                                                        if (textView23 != null) {
                                                                                                                                            i = R.id.g5_path1;
                                                                                                                                            TextView textView24 = (TextView) view.findViewById(i);
                                                                                                                                            if (textView24 != null) {
                                                                                                                                                i = R.id.g5_path2;
                                                                                                                                                TextView textView25 = (TextView) view.findViewById(i);
                                                                                                                                                if (textView25 != null) {
                                                                                                                                                    i = R.id.g5_path3;
                                                                                                                                                    TextView textView26 = (TextView) view.findViewById(i);
                                                                                                                                                    if (textView26 != null) {
                                                                                                                                                        i = R.id.gb;
                                                                                                                                                        TextView textView27 = (TextView) view.findViewById(i);
                                                                                                                                                        if (textView27 != null) {
                                                                                                                                                            i = R.id.gb_path1;
                                                                                                                                                            TextView textView28 = (TextView) view.findViewById(i);
                                                                                                                                                            if (textView28 != null) {
                                                                                                                                                                i = R.id.gb_path2;
                                                                                                                                                                TextView textView29 = (TextView) view.findViewById(i);
                                                                                                                                                                if (textView29 != null) {
                                                                                                                                                                    i = R.id.gb_path3;
                                                                                                                                                                    TextView textView30 = (TextView) view.findViewById(i);
                                                                                                                                                                    if (textView30 != null) {
                                                                                                                                                                        i = R.id.mapView;
                                                                                                                                                                        GearView gearView = (GearView) view.findViewById(i);
                                                                                                                                                                        if (gearView != null) {
                                                                                                                                                                            i = R.id.noCalWhenNoClutch;
                                                                                                                                                                            CheckBox checkBox5 = (CheckBox) view.findViewById(i);
                                                                                                                                                                            if (checkBox5 != null) {
                                                                                                                                                                                i = R.id.oneKeyCalibrate;
                                                                                                                                                                                Button button4 = (Button) view.findViewById(i);
                                                                                                                                                                                if (button4 != null) {
                                                                                                                                                                                    i = R.id.trustExtGear;
                                                                                                                                                                                    CheckBox checkBox6 = (CheckBox) view.findViewById(i);
                                                                                                                                                                                    if (checkBox6 != null) {
                                                                                                                                                                                        i = R.id.trustObdGear;
                                                                                                                                                                                        CheckBox checkBox7 = (CheckBox) view.findViewById(i);
                                                                                                                                                                                        if (checkBox7 != null) {
                                                                                                                                                                                            i = R.id.value;
                                                                                                                                                                                            TextView textView31 = (TextView) view.findViewById(i);
                                                                                                                                                                                            if (textView31 != null) {
                                                                                                                                                                                                i = R.id.valueNum;
                                                                                                                                                                                                TextView textView32 = (TextView) view.findViewById(i);
                                                                                                                                                                                                if (textView32 != null) {
                                                                                                                                                                                                    i = R.id.valueSeek;
                                                                                                                                                                                                    SeekBar seekBar3 = (SeekBar) view.findViewById(i);
                                                                                                                                                                                                    if (seekBar3 != null) {
                                                                                                                                                                                                        return new ActivityTestGearGyroDataBinding((FrameLayout) view, checkBox, textView, textView2, seekBar, seekBar2, linearLayout, button, checkBox2, checkBox3, checkBox4, button2, button3, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24, textView25, textView26, textView27, textView28, textView29, textView30, gearView, checkBox5, button4, checkBox6, checkBox7, textView31, textView32, seekBar3);
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

    public static ActivityTestGearGyroDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestGearGyroDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_gear_gyro_data, viewGroup, false);
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
