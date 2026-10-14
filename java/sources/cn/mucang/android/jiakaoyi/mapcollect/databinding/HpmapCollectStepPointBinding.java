package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapCollectStepPointBinding implements a {
    private final LinearLayout rootView;
    public final TextView text;

    private HpmapCollectStepPointBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.text = textView;
    }

    public static HpmapCollectStepPointBinding bind(View view) {
        int i = R.id.text;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new HpmapCollectStepPointBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static HpmapCollectStepPointBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapCollectStepPointBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__collect_step_point, viewGroup, false);
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
