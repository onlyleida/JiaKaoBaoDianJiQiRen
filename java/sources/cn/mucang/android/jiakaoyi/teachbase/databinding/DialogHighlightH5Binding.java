package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogHighlightH5Binding implements a {
    public final View bg;
    public final TextView closeTv;
    private final ConstraintLayout rootView;
    public final TextView shareTv;
    public final MucangWebView webView;

    private DialogHighlightH5Binding(ConstraintLayout constraintLayout, View view, TextView textView, TextView textView2, MucangWebView mucangWebView) {
        this.rootView = constraintLayout;
        this.bg = view;
        this.closeTv = textView;
        this.shareTv = textView2;
        this.webView = mucangWebView;
    }

    public static DialogHighlightH5Binding bind(View view) {
        int i = R.id.bg;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.closeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.shareTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.webView;
                    MucangWebView mucangWebView = (MucangWebView) view.findViewById(i);
                    if (mucangWebView != null) {
                        return new DialogHighlightH5Binding((ConstraintLayout) view, viewFindViewById, textView, textView2, mucangWebView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogHighlightH5Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogHighlightH5Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_highlight_h5, viewGroup, false);
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
