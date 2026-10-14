package cn.mucang.android.core.webview.core.page;

import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.ui.page.PageActivity;
import cn.mucang.android.core.ui.page.PageView;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.MucangWebView;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            return Color.parseColor(str);
        } catch (Exception unused) {
            return -1;
        }
    }

    private static void b(View view, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            view.setBackgroundColor(Color.parseColor(str));
        } catch (Exception e2) {
            t.c("e", e2);
        }
    }

    public static void c(PageView pageView, WebPageArgument webPageArgument, cn.mucang.android.core.ui.page.d dVar, MucangWebView mucangWebView) {
        if (pageView == null || webPageArgument == null || dVar == null || mucangWebView == null || !(pageView.getContext() instanceof PageActivity)) {
            return;
        }
        if (webPageArgument.isShowTitleBar()) {
            pageView.getTopLayout().setVisibility(0);
        } else {
            pageView.getTopLayout().setVisibility(8);
        }
        if (!webPageArgument.isTransition()) {
            dVar.l();
        }
        if (webPageArgument.getStatusBar() != null && (pageView.getContext() instanceof n)) {
            n nVar = (n) pageView.getContext();
            if (Build.VERSION.SDK_INT < 21) {
                pageView.getStatusBar().setVisibility(8);
                if (webPageArgument.getTitleBar() != null) {
                    nVar.setStatusBarColor(a(webPageArgument.getTitleBar().getBackground()));
                }
            } else if (webPageArgument.getStatusBar().isTransparent()) {
                pageView.getNavigationBar().setPadding(0, o0.r(), 0, 0);
                pageView.getStatusBar().setVisibility(8);
            } else {
                pageView.getStatusBar().getLayoutParams().height = o0.r();
                b(pageView.getStatusBar(), webPageArgument.getStatusBar().getBackground());
                pageView.getStatusBar().setVisibility(0);
                pageView.getNavigationBar().setPadding(0, 0, 0, 0);
            }
            o0.z(webPageArgument.getStatusBar().isDarkMode(), nVar);
        }
        TitleBar titleBar = webPageArgument.getTitleBar();
        if (titleBar != null) {
            if (webPageArgument.isFullScreen()) {
                b(pageView.getBogusTitleBar(), webPageArgument.getTitleBar().getBackground());
                b(pageView.getBogusBackground(), webPageArgument.getBackground());
                pageView.getBogusBackground().setVisibility(0);
                if (webPageArgument.getStatusBar() != null) {
                    if (webPageArgument.getStatusBar().isTransparent()) {
                        pageView.getStatusBar().setVisibility(8);
                    } else {
                        pageView.getStatusBar().getLayoutParams().height = o0.r();
                        b(pageView.getStatusBar(), webPageArgument.getStatusBar().getBackground());
                        pageView.getStatusBar().setVisibility(0);
                    }
                }
                pageView.getBogusTitleBar().getLayoutParams().height = Math.round(webPageArgument.getTitleBar().getHeight() * ((mucangWebView.getContext().getResources().getDisplayMetrics().widthPixels * 1.0f) / webPageArgument.getBaseWidth()));
                pageView.getTopLayout().setVisibility(8);
                pageView.getBogusTitleBar().setVisibility(0);
                mucangWebView.setBackgroundColor(0);
            }
            b(pageView.getTopLayout(), titleBar.getBackground());
            if (titleBar.getTitle() != null) {
                pageView.getNavigationBar().setText(titleBar.getTitle().getText());
                int iA = a(titleBar.getTitle().getColor());
                if (iA != -1) {
                    pageView.getNavigationBar().setTextColor(iA);
                }
            }
            if (titleBar.getBack() != null) {
                int iA2 = a(titleBar.getBack().getColor());
                if (iA2 != -1) {
                    pageView.getNavigationBar().setBackButtonColor(iA2);
                }
                pageView.getNavigationBar().setBackButtonText(titleBar.getBack().getText());
            }
        }
    }
}
