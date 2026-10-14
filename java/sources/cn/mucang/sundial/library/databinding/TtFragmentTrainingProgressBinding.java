package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtFragmentTrainingProgressBinding implements a {
    public final TextView finishedDuration;
    public final TextView finishedMileage;
    public final TextView passMileage;
    public final TextView passTime;
    public final TextView pendingMileage;
    public final TextView pendingTime;
    private final LinearLayout rootView;
    public final TextView todayMileage;
    public final TextView todayTime;
    public final TextView totalDuration;
    public final TextView totalMileage;

    private TtFragmentTrainingProgressBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = linearLayout;
        this.finishedDuration = textView;
        this.finishedMileage = textView2;
        this.passMileage = textView3;
        this.passTime = textView4;
        this.pendingMileage = textView5;
        this.pendingTime = textView6;
        this.todayMileage = textView7;
        this.todayTime = textView8;
        this.totalDuration = textView9;
        this.totalMileage = textView10;
    }

    public static TtFragmentTrainingProgressBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.finished_duration);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.finished_mileage);
            if (textView2 != null) {
                TextView textView3 = (TextView) view.findViewById(R.id.pass_mileage);
                if (textView3 != null) {
                    TextView textView4 = (TextView) view.findViewById(R.id.pass_time);
                    if (textView4 != null) {
                        TextView textView5 = (TextView) view.findViewById(R.id.pending_mileage);
                        if (textView5 != null) {
                            TextView textView6 = (TextView) view.findViewById(R.id.pending_time);
                            if (textView6 != null) {
                                TextView textView7 = (TextView) view.findViewById(R.id.today_mileage);
                                if (textView7 != null) {
                                    TextView textView8 = (TextView) view.findViewById(R.id.today_time);
                                    if (textView8 != null) {
                                        TextView textView9 = (TextView) view.findViewById(R.id.total_duration);
                                        if (textView9 != null) {
                                            TextView textView10 = (TextView) view.findViewById(R.id.total_mileage);
                                            if (textView10 != null) {
                                                return new TtFragmentTrainingProgressBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
                                            }
                                            str = "totalMileage";
                                        } else {
                                            str = "totalDuration";
                                        }
                                    } else {
                                        str = "todayTime";
                                    }
                                } else {
                                    str = "todayMileage";
                                }
                            } else {
                                str = "pendingTime";
                            }
                        } else {
                            str = "pendingMileage";
                        }
                    } else {
                        str = "passTime";
                    }
                } else {
                    str = "passMileage";
                }
            } else {
                str = "finishedMileage";
            }
        } else {
            str = "finishedDuration";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtFragmentTrainingProgressBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtFragmentTrainingProgressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__fragment_training_progress, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
