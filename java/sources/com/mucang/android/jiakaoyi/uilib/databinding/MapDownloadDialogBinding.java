package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class MapDownloadDialogBinding implements a {
    public final ProgressBar progress;
    private final LinearLayout rootView;
    public final TextView txtTitle;

    private MapDownloadDialogBinding(LinearLayout linearLayout, ProgressBar progressBar, TextView textView) {
        this.rootView = linearLayout;
        this.progress = progressBar;
        this.txtTitle = textView;
    }

    public static MapDownloadDialogBinding bind(View view) {
        int i = R.id.progress;
        ProgressBar progressBar = (ProgressBar) view.findViewById(i);
        if (progressBar != null) {
            i = R.id.txt_title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new MapDownloadDialogBinding((LinearLayout) view, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static MapDownloadDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MapDownloadDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.map_download_dialog, viewGroup, false);
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
