package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTestStopBinding implements a {
    public final Button controlSpeed;
    public final SeekBar factor1;
    public final TextView factor1V;
    public final SeekBar factor2;
    public final TextView factor2V;
    public final SeekBar factor3;
    public final TextView factor3V;
    public final SeekBar factor4;
    public final TextView factor4V;
    public final SeekBar factor5;
    public final TextView factor5V;
    public final TextView info;
    public final TextView infoStop;
    public final Button linestop;
    public final MapView map;
    private final FrameLayout rootView;
    public final Button turnStop;

    private ActivityTestStopBinding(FrameLayout frameLayout, Button button, SeekBar seekBar, TextView textView, SeekBar seekBar2, TextView textView2, SeekBar seekBar3, TextView textView3, SeekBar seekBar4, TextView textView4, SeekBar seekBar5, TextView textView5, TextView textView6, TextView textView7, Button button2, MapView mapView, Button button3) {
        this.rootView = frameLayout;
        this.controlSpeed = button;
        this.factor1 = seekBar;
        this.factor1V = textView;
        this.factor2 = seekBar2;
        this.factor2V = textView2;
        this.factor3 = seekBar3;
        this.factor3V = textView3;
        this.factor4 = seekBar4;
        this.factor4V = textView4;
        this.factor5 = seekBar5;
        this.factor5V = textView5;
        this.info = textView6;
        this.infoStop = textView7;
        this.linestop = button2;
        this.map = mapView;
        this.turnStop = button3;
    }

    public static ActivityTestStopBinding bind(View view) {
        int i = R.id.controlSpeed;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.factor1;
            SeekBar seekBar = (SeekBar) view.findViewById(i);
            if (seekBar != null) {
                i = R.id.factor1V;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.factor2;
                    SeekBar seekBar2 = (SeekBar) view.findViewById(i);
                    if (seekBar2 != null) {
                        i = R.id.factor2V;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.factor3;
                            SeekBar seekBar3 = (SeekBar) view.findViewById(i);
                            if (seekBar3 != null) {
                                i = R.id.factor3V;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.factor4;
                                    SeekBar seekBar4 = (SeekBar) view.findViewById(i);
                                    if (seekBar4 != null) {
                                        i = R.id.factor4V;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.factor5;
                                            SeekBar seekBar5 = (SeekBar) view.findViewById(i);
                                            if (seekBar5 != null) {
                                                i = R.id.factor5V;
                                                TextView textView5 = (TextView) view.findViewById(i);
                                                if (textView5 != null) {
                                                    i = R.id.info;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        i = R.id.infoStop;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = R.id.linestop;
                                                            Button button2 = (Button) view.findViewById(i);
                                                            if (button2 != null) {
                                                                i = R.id.map;
                                                                MapView mapView = (MapView) view.findViewById(i);
                                                                if (mapView != null) {
                                                                    i = R.id.turnStop;
                                                                    Button button3 = (Button) view.findViewById(i);
                                                                    if (button3 != null) {
                                                                        return new ActivityTestStopBinding((FrameLayout) view, button, seekBar, textView, seekBar2, textView2, seekBar3, textView3, seekBar4, textView4, seekBar5, textView5, textView6, textView7, button2, mapView, button3);
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

    public static ActivityTestStopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTestStopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_test_stop, viewGroup, false);
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
