package cn.mucang.android.core.webview.model;

import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class TitleBarModel implements BaseModel {
    private boolean hideRightButton;
    private boolean showBackButton;
    private boolean showProgressBar;
    private String title;
    private String url;
    private boolean urlEditable;

    public TitleBarModel() {
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isHideRightButton() {
        return this.hideRightButton;
    }

    public boolean isShowBackButton() {
        return this.showBackButton;
    }

    public boolean isShowProgressBar() {
        return this.showProgressBar;
    }

    public boolean isUrlEditable() {
        return this.urlEditable;
    }

    public void setHideRightButton(boolean z) {
        this.hideRightButton = z;
    }

    public void setShowBackButton(boolean z) {
        this.showBackButton = z;
    }

    public void setShowProgressBar(boolean z) {
        this.showProgressBar = z;
    }

    public TitleBarModel setTitle(String str) {
        this.title = str;
        return this;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUrlEditable(boolean z) {
        this.urlEditable = z;
    }

    public TitleBarModel(boolean z) {
        this.showProgressBar = z;
    }
}
