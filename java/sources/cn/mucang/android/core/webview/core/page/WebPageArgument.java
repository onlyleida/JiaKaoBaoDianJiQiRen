package cn.mucang.android.core.webview.core.page;

import cn.mucang.android.core.ui.page.PageArgument;

/* JADX INFO: loaded from: classes.dex */
public class WebPageArgument implements PageArgument {
    private String background;
    private int baseWidth;
    private boolean fullScreen;
    private boolean hasConfig;
    private String pageNme;
    private boolean showTitleBar;
    private StatusBar statusBar;
    private TitleBar titleBar;
    private boolean transition;
    private String url;

    public WebPageArgument() {
    }

    public static WebPageArgument defaultConfig(String str) {
        WebPageArgument webPageArgument = new WebPageArgument(str, false);
        webPageArgument.setTitleBar(new TitleBar());
        webPageArgument.setFullScreen(true);
        return webPageArgument;
    }

    public void from(WebPageArgument webPageArgument) {
        if (webPageArgument == null) {
            return;
        }
        this.titleBar = webPageArgument.titleBar;
        this.statusBar = webPageArgument.statusBar;
        this.transition = webPageArgument.transition;
        this.showTitleBar = webPageArgument.showTitleBar;
        this.fullScreen = webPageArgument.fullScreen;
        this.hasConfig = webPageArgument.hasConfig;
        this.baseWidth = webPageArgument.baseWidth;
        this.background = webPageArgument.background;
        this.pageNme = webPageArgument.pageNme;
    }

    public String getBackground() {
        return this.background;
    }

    public int getBaseWidth() {
        return this.baseWidth;
    }

    public String getPageNme() {
        return this.pageNme;
    }

    public StatusBar getStatusBar() {
        return this.statusBar;
    }

    public TitleBar getTitleBar() {
        return this.titleBar;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isFullScreen() {
        return this.fullScreen;
    }

    public boolean isHasConfig() {
        return this.hasConfig;
    }

    public boolean isShowTitleBar() {
        return this.showTitleBar;
    }

    public boolean isTransition() {
        return this.transition;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public void setBaseWidth(int i) {
        this.baseWidth = i;
    }

    public void setFullScreen(boolean z) {
        this.fullScreen = z;
    }

    public void setHasConfig(boolean z) {
        this.hasConfig = z;
    }

    public void setPageNme(String str) {
        this.pageNme = str;
    }

    public void setShowTitleBar(boolean z) {
        this.showTitleBar = z;
    }

    public void setStatusBar(StatusBar statusBar) {
        this.statusBar = statusBar;
    }

    public void setTitleBar(TitleBar titleBar) {
        this.titleBar = titleBar;
    }

    public void setTransition(boolean z) {
        this.transition = z;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public WebPageArgument(String str, boolean z) {
        this.url = str;
        this.showTitleBar = z;
    }
}
