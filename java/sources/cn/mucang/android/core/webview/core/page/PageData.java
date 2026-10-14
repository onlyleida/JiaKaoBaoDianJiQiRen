package cn.mucang.android.core.webview.core.page;

import cn.mucang.android.core.ui.page.PageState;

/* JADX INFO: loaded from: classes.dex */
public class PageData implements PageState {
    private String pageJsonData;

    public PageData() {
    }

    public String getPageJsonData() {
        return this.pageJsonData;
    }

    public void setPageJsonData(String str) {
        this.pageJsonData = str;
    }

    public PageData(String str) {
        this.pageJsonData = str;
    }
}
