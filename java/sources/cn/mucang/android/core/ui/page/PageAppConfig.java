package cn.mucang.android.core.ui.page;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PageAppConfig implements Serializable {
    private int maxPageCount = 5;

    public int getMaxPageCount() {
        return this.maxPageCount;
    }

    public void setMaxPageCount(int i) {
        if (i < 3) {
            i = 3;
        }
        this.maxPageCount = i;
    }
}
