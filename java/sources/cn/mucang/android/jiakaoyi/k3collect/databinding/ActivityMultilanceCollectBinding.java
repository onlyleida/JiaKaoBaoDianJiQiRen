package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityMultilanceCollectBinding implements a {
    public final FrameLayout containerMulti;
    public final TextView gpsBaseX;
    public final TextView gpsBaseXValue;
    public final TextView gpsBaseY;
    public final TextView gpsBaseYValue;
    public final TextView gpsInfo;
    public final TextView gpsInfoValue;
    public final TextView gpsLatitude;
    public final TextView gpsLatitudeValue;
    public final TextView gpsLongitude;
    public final TextView gpsLongitudeValue;
    public final TextView gpsStatus;
    public final TextView gpsStatusValue;
    private final ConstraintLayout rootView;

    private ActivityMultilanceCollectBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = constraintLayout;
        this.containerMulti = frameLayout;
        this.gpsBaseX = textView;
        this.gpsBaseXValue = textView2;
        this.gpsBaseY = textView3;
        this.gpsBaseYValue = textView4;
        this.gpsInfo = textView5;
        this.gpsInfoValue = textView6;
        this.gpsLatitude = textView7;
        this.gpsLatitudeValue = textView8;
        this.gpsLongitude = textView9;
        this.gpsLongitudeValue = textView10;
        this.gpsStatus = textView11;
        this.gpsStatusValue = textView12;
    }

    public static ActivityMultilanceCollectBinding bind(View view) {
        int i = R.id.containerMulti;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = R.id.gps_baseX;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.gps_baseX_value;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.gps_baseY;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.gps_baseY_value;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.gps_info;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.gps_info_value;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.gps_latitude;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.gps_latitude_value;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            i = R.id.gps_longitude;
                                            TextView textView9 = (TextView) view.findViewById(i);
                                            if (textView9 != null) {
                                                i = R.id.gps_longitude_value;
                                                TextView textView10 = (TextView) view.findViewById(i);
                                                if (textView10 != null) {
                                                    i = R.id.gps_status;
                                                    TextView textView11 = (TextView) view.findViewById(i);
                                                    if (textView11 != null) {
                                                        i = R.id.gps_status_value;
                                                        TextView textView12 = (TextView) view.findViewById(i);
                                                        if (textView12 != null) {
                                                            return new ActivityMultilanceCollectBinding((ConstraintLayout) view, frameLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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

    public static ActivityMultilanceCollectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMultilanceCollectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_multilance_collect, viewGroup, false);
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
