package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class CommonLoadingDialogBinding implements a {
    public final ProgressBar progress;
    private final LinearLayout rootView;
    public final TextView text;

    private CommonLoadingDialogBinding(LinearLayout linearLayout, ProgressBar progressBar, TextView textView) {
        this.rootView = linearLayout;
        this.progress = progressBar;
        this.text = textView;
    }

    public static CommonLoadingDialogBinding bind(View view) {
        int i = R.id.progress;
        ProgressBar progressBar = (ProgressBar) view.findViewById(i);
        if (progressBar != null) {
            i = R.id.text;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new CommonLoadingDialogBinding((LinearLayout) view, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CommonLoadingDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CommonLoadingDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.common_loading_dialog, viewGroup, false);
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
