package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.core.webview.core.MucangWebView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogUserAgreementBinding implements a {
    public final TextView agree;
    public final TextView appName;
    public final TextView exit;
    public final View line;
    public final ProgressBar progressBar;
    private final LinearLayout rootView;
    public final TextView tvTitle;
    public final MucangWebView webView;

    private DialogUserAgreementBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, View view, ProgressBar progressBar, TextView textView4, MucangWebView mucangWebView) {
        this.rootView = linearLayout;
        this.agree = textView;
        this.appName = textView2;
        this.exit = textView3;
        this.line = view;
        this.progressBar = progressBar;
        this.tvTitle = textView4;
        this.webView = mucangWebView;
    }

    public static DialogUserAgreementBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.agree;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.app_name;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.exit;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.line))) != null) {
                    i = R.id.progressBar;
                    ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                    if (progressBar != null) {
                        i = R.id.tvTitle;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.web_view;
                            MucangWebView mucangWebView = (MucangWebView) view.findViewById(i);
                            if (mucangWebView != null) {
                                return new DialogUserAgreementBinding((LinearLayout) view, textView, textView2, textView3, viewFindViewById, progressBar, textView4, mucangWebView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogUserAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogUserAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_user_agreement, viewGroup, false);
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
