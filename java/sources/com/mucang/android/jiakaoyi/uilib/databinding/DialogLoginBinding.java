package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.core.webview.core.MucangWebView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogLoginBinding implements a {
    public final ImageView closeDialog;
    public final TextView dialogTitle;
    public final TextView loginOut;
    public final TextView phoneLogin;
    private final FrameLayout rootView;
    public final MucangWebView webView;
    public final FrameLayout webViewContainer;
    public final TextView weixinLogin;
    public final TextView wxTip;

    private DialogLoginBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, MucangWebView mucangWebView, FrameLayout frameLayout2, TextView textView4, TextView textView5) {
        this.rootView = frameLayout;
        this.closeDialog = imageView;
        this.dialogTitle = textView;
        this.loginOut = textView2;
        this.phoneLogin = textView3;
        this.webView = mucangWebView;
        this.webViewContainer = frameLayout2;
        this.weixinLogin = textView4;
        this.wxTip = textView5;
    }

    public static DialogLoginBinding bind(View view) {
        int i = R.id.close_dialog;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dialog_title;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.login_out;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.phone_login;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.web_view;
                        MucangWebView mucangWebView = (MucangWebView) view.findViewById(i);
                        if (mucangWebView != null) {
                            i = R.id.web_view_container;
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                            if (frameLayout != null) {
                                i = R.id.weixin_login;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.wxTip;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        return new DialogLoginBinding((FrameLayout) view, imageView, textView, textView2, textView3, mucangWebView, frameLayout, textView4, textView5);
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

    public static DialogLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_login, viewGroup, false);
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
