package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class GearsIncludeGearsGuideZoneBinding implements a {
    public final TextView deviceStatus;
    public final TextView gearLocTip0;
    public final TextView gearLocTip1;
    public final TextView gearLocValue0;
    public final TextView gearLocValue1;
    public final TextView gearVersion;
    public final TextView gearsGuide;
    public final TextView guideTip;
    public final TextView markGears;
    public final TextView obtainGearsData;
    private final ConstraintLayout rootView;
    public final TextView viewDetail;

    private GearsIncludeGearsGuideZoneBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = constraintLayout;
        this.deviceStatus = textView;
        this.gearLocTip0 = textView2;
        this.gearLocTip1 = textView3;
        this.gearLocValue0 = textView4;
        this.gearLocValue1 = textView5;
        this.gearVersion = textView6;
        this.gearsGuide = textView7;
        this.guideTip = textView8;
        this.markGears = textView9;
        this.obtainGearsData = textView10;
        this.viewDetail = textView11;
    }

    public static GearsIncludeGearsGuideZoneBinding bind(View view) {
        int i = R.id.device_status;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.gear_loc_tip0;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.gear_loc_tip1;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.gear_loc_value0;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.gear_loc_value1;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.gear_version;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                i = R.id.gears_guide;
                                TextView textView7 = (TextView) view.findViewById(i);
                                if (textView7 != null) {
                                    i = R.id.guide_tip;
                                    TextView textView8 = (TextView) view.findViewById(i);
                                    if (textView8 != null) {
                                        i = R.id.mark_gears;
                                        TextView textView9 = (TextView) view.findViewById(i);
                                        if (textView9 != null) {
                                            i = R.id.obtain_gears_data;
                                            TextView textView10 = (TextView) view.findViewById(i);
                                            if (textView10 != null) {
                                                i = R.id.view_detail;
                                                TextView textView11 = (TextView) view.findViewById(i);
                                                if (textView11 != null) {
                                                    return new GearsIncludeGearsGuideZoneBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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

    public static GearsIncludeGearsGuideZoneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GearsIncludeGearsGuideZoneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gears__include__gears_guide_zone, viewGroup, false);
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
