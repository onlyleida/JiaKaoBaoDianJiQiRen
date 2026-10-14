package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityTestAutoGearGyroDataBinding implements a {
    public final Button finish;
    public final TextView gd;
    public final Button gdMake;
    public final TextView gn;
    public final Button gnMake;
    public final TextView gp;
    public final Button gpMake;
    public final TextView gr;
    public final Button grMake;
    private final FrameLayout rootView;
    public final TextView value;

    private ActivityTestAutoGearGyroDataBinding(FrameLayout frameLayout, Button button, TextView textView, Button button2, TextView textView2, Button button3, TextView textView3, Button button4, TextView textView4, Button button5, TextView textView5) {
        this.rootView = frameLayout;
        this.finish = button;
        this.gd = textView;
        this.gdMake = button2;
        this.gn = textView2;
        this.gnMake = button3;
        this.gp = textView3;
        this.gpMake = button4;
        this.gr = textView4;
        this.grMake = button5;
        this.value = textView5;
    }

    public static ActivityTestAutoGearGyroDataBinding bind(View view) {
        int i = R.id.finish;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.gd;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.gdMake;
                Button button2 = (Button) view.findViewById(i);
                if (button2 != null) {
                    i = R.id.gn;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.gnMake;
                        Button button3 = (Button) view.findViewById(i);
                        if (button3 != null) {
                            i = R.id.gp;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.gpMake;
                                Button button4 = (Button) view.findViewById(i);
                                if (button4 != null) {
                                    i = R.id.gr;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.grMake;
                                        Button button5 = (Button) view.findViewById(i);
                                        if (button5 != null) {
                                            i = R.id.value;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                return new ActivityTestAutoGearGyroDataBinding((FrameLayout) view, button, textView, button2, textView2, button3, textView3, button4, textView4, button5, textView5);
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

    public static ActivityTestAutoGearGyroDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestAutoGearGyroDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_auto_gear_gyro_data, viewGroup, false);
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
