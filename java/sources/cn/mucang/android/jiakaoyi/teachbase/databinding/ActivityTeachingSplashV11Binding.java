package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import org.libpag.PAGView;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTeachingSplashV11Binding implements a {
    public final LinearLayout debugContainer;
    public final LinearLayout descLl;
    public final TextView descTv;
    public final View maskView;
    public final TextView obdWareDebugInfo;
    public final PAGView pagView;
    public final SeekBar progressBar;
    public final TextView progressTv;
    private final ConstraintLayout rootView;
    public final TextView upgradeDebugInfo;
    public final TextView versionTv;

    private ActivityTeachingSplashV11Binding(ConstraintLayout constraintLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, View view, TextView textView2, PAGView pAGView, SeekBar seekBar, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.debugContainer = linearLayout;
        this.descLl = linearLayout2;
        this.descTv = textView;
        this.maskView = view;
        this.obdWareDebugInfo = textView2;
        this.pagView = pAGView;
        this.progressBar = seekBar;
        this.progressTv = textView3;
        this.upgradeDebugInfo = textView4;
        this.versionTv = textView5;
    }

    public static ActivityTeachingSplashV11Binding bind(View view) {
        View viewFindViewById;
        int i = R.id.debugContainer;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.descLl;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
            if (linearLayout2 != null) {
                i = R.id.descTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null && (viewFindViewById = view.findViewById((i = R.id.maskView))) != null) {
                    i = R.id.obdWareDebugInfo;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.pagView;
                        PAGView pAGView = (PAGView) view.findViewById(i);
                        if (pAGView != null) {
                            i = R.id.progressBar;
                            SeekBar seekBar = (SeekBar) view.findViewById(i);
                            if (seekBar != null) {
                                i = R.id.progressTv;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.upgradeDebugInfo;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.versionTv;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            return new ActivityTeachingSplashV11Binding((ConstraintLayout) view, linearLayout, linearLayout2, textView, viewFindViewById, textView2, pAGView, seekBar, textView3, textView4, textView5);
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

    public static ActivityTeachingSplashV11Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTeachingSplashV11Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_teaching_splash_v11, viewGroup, false);
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
