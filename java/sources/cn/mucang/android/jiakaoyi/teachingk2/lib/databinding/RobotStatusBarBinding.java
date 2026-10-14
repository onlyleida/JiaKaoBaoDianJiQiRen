package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class RobotStatusBarBinding implements a {
    public final TextView brakeDesc;
    public final TextView brakeTv;
    public final TextView gpsTv;
    public final ImageView netIv;
    public final TextView noVisionLogin;
    public final TextView rainMode;
    private final LinearLayout rootView;
    public final TextView satelliteTv;
    public final TextView timeTv;
    public final TextView videoTv;

    private RobotStatusBarBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, ImageView imageView, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.brakeDesc = textView;
        this.brakeTv = textView2;
        this.gpsTv = textView3;
        this.netIv = imageView;
        this.noVisionLogin = textView4;
        this.rainMode = textView5;
        this.satelliteTv = textView6;
        this.timeTv = textView7;
        this.videoTv = textView8;
    }

    public static RobotStatusBarBinding bind(View view) {
        int i = R.id.brakeDesc;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.brakeTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.gpsTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.netIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.noVisionLogin;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.rain_mode;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.satelliteTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.timeTv;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.videoTv;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new RobotStatusBarBinding((LinearLayout) view, textView, textView2, textView3, imageView, textView4, textView5, textView6, textView7, textView8);
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

    public static RobotStatusBarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RobotStatusBarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.robot_status_bar, viewGroup, false);
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
