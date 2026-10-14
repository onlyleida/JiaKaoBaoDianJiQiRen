package cn.mucang.android.ui.framework.fetcher.page;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class PageModel implements Serializable {
    private String cursor;
    private Boolean hasMore;
    private String nextPageCursor;
    private int page;
    private PageMode pageMode;
    private int pageSize;

    public enum PageMode {
        CURSOR,
        PAGE
    }

    public PageModel() {
    }

    public String getCursor() {
        return this.cursor;
    }

    public String getNextPageCursor() {
        return this.nextPageCursor;
    }

    public int getPage() {
        return this.page;
    }

    public PageMode getPageMode() {
        return this.pageMode;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public Boolean hasMore() {
        return this.hasMore;
    }

    public void setCursor(String str) {
        this.cursor = str;
    }

    public void setHasMore(Boolean bool) {
        this.hasMore = bool;
    }

    public void setNextPageCursor(String str) {
        this.nextPageCursor = str;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public void setPageMode(PageMode pageMode) {
        this.pageMode = pageMode;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }

    public PageModel(int i, int i2, PageMode pageMode) {
        this.pageMode = pageMode;
        this.page = i;
        this.pageSize = i2;
    }

    public PageModel(String str, int i, PageMode pageMode) {
        this.pageSize = i;
        this.pageMode = pageMode;
        this.cursor = str;
    }
}
