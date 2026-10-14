package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtFragmentCarStatusBinding implements a {
    public final TextView accController;
    public final TextView accStatus;
    public final TextView carNum;
    public final TextView carSpeed;
    public final TextView flameOutTime;
    public final TextView gps;
    public final TextView powerStatus;
    private final NestedScrollView rootView;
    public final TextView rpm;

    private TtFragmentCarStatusBinding(NestedScrollView nestedScrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = nestedScrollView;
        this.accController = textView;
        this.accStatus = textView2;
        this.carNum = textView3;
        this.carSpeed = textView4;
        this.flameOutTime = textView5;
        this.gps = textView6;
        this.powerStatus = textView7;
        this.rpm = textView8;
    }

    public static TtFragmentCarStatusBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.acc_controller);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.acc_status);
            if (textView2 != null) {
                TextView textView3 = (TextView) view.findViewById(R.id.car_num);
                if (textView3 != null) {
                    TextView textView4 = (TextView) view.findViewById(R.id.car_speed);
                    if (textView4 != null) {
                        TextView textView5 = (TextView) view.findViewById(R.id.flame_out_time);
                        if (textView5 != null) {
                            TextView textView6 = (TextView) view.findViewById(R.id.gps);
                            if (textView6 != null) {
                                TextView textView7 = (TextView) view.findViewById(R.id.power_status);
                                if (textView7 != null) {
                                    TextView textView8 = (TextView) view.findViewById(R.id.rpm);
                                    if (textView8 != null) {
                                        return new TtFragmentCarStatusBinding((NestedScrollView) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                    }
                                    str = "rpm";
                                } else {
                                    str = "powerStatus";
                                }
                            } else {
                                str = "gps";
                            }
                        } else {
                            str = "flameOutTime";
                        }
                    } else {
                        str = "carSpeed";
                    }
                } else {
                    str = "carNum";
                }
            } else {
                str = "accStatus";
            }
        } else {
            str = "accController";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtFragmentCarStatusBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtFragmentCarStatusBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__fragment_car_status, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public NestedScrollView getRoot() {
        return this.rootView;
    }
}
