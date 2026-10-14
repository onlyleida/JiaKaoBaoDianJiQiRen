package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutTraceAutoStudyBinding implements a {
    public final TextView backTv;
    public final TextView func1Tv;
    public final TextView resultTv;
    private final ConstraintLayout rootView;
    public final TextView signalInfo;

    private LayoutTraceAutoStudyBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.backTv = textView;
        this.func1Tv = textView2;
        this.resultTv = textView3;
        this.signalInfo = textView4;
    }

    public static LayoutTraceAutoStudyBinding bind(View view) {
        int i = R.id.backTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.func1Tv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.resultTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.signalInfo;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new LayoutTraceAutoStudyBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutTraceAutoStudyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutTraceAutoStudyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_trace_auto_study, viewGroup, false);
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
