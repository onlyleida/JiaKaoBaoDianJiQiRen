package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class StopLineLayoutBinding implements a {
    public final AppCompatEditText etLineWidth;
    private final ConstraintLayout rootView;
    public final TextView tvCollectEnd;
    public final TextView tvCollectStart;
    public final TextView tvExample;
    public final TextView tvLineWidth;

    private StopLineLayoutBinding(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.etLineWidth = appCompatEditText;
        this.tvCollectEnd = textView;
        this.tvCollectStart = textView2;
        this.tvExample = textView3;
        this.tvLineWidth = textView4;
    }

    public static StopLineLayoutBinding bind(View view) {
        int i = R.id.etLineWidth;
        AppCompatEditText appCompatEditText = (AppCompatEditText) view.findViewById(i);
        if (appCompatEditText != null) {
            i = R.id.tvCollectEnd;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tvCollectStart;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tvExample;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.tvLineWidth;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new StopLineLayoutBinding((ConstraintLayout) view, appCompatEditText, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static StopLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static StopLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.stop_line_layout, viewGroup, false);
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
