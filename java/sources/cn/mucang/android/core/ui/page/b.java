package cn.mucang.android.core.ui.page;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    View createContentView(PageArgument pageArgument);

    void doDestroy();

    void doPause();

    void doRestoreInstanceState(PageState pageState);

    void doResume(PageArgument pageArgument);

    PageState doSaveInstanceState();

    void onCreate(Context context, d dVar, PageView pageView);
}
