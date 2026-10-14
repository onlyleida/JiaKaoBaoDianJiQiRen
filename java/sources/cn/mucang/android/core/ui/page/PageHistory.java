package cn.mucang.android.core.ui.page;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PageHistory implements Serializable {
    private PageArgument pageArgument;
    private Class<? extends b> pageClass;
    private String pageName;
    PageState pageState;
    transient PageView pageView;

    public PageHistory(Class<? extends b> cls, PageArgument pageArgument) {
        this(cls, pageArgument, null);
    }

    public PageArgument getPageArgument() {
        return this.pageArgument;
    }

    public Class<? extends b> getPageClass() {
        return this.pageClass;
    }

    public String getPageName() {
        return this.pageName;
    }

    void setPageArgument(PageArgument pageArgument) {
        this.pageArgument = pageArgument;
    }

    void setPageName(String str) {
        this.pageName = str;
    }

    public PageHistory(Class<? extends b> cls, PageArgument pageArgument, String str) {
        this.pageClass = cls;
        this.pageArgument = pageArgument;
        this.pageName = str;
    }
}
