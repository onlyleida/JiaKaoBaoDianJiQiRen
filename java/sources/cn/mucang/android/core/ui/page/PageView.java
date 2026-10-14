package cn.mucang.android.core.ui.page;

import android.content.Context;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import cn.mucang.android.framework.webview.R;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PageView extends LinearLayout implements Serializable {
    private View bogusBackground;
    private FrameLayout bogusTitleBar;
    private WebView loadingView;
    private e navigationBar;
    private b page;
    private View pageContentView;
    private FrameLayout pageLayout;
    private View statusBar;
    private LinearLayout topLayout;

    public PageView(Context context, d dVar, PageHistory pageHistory) {
        super(context);
        this.page = createPage(pageHistory);
        View viewInflate = View.inflate(context, R.layout.core__page, null);
        this.statusBar = viewInflate.findViewById(R.id.status_bar);
        this.bogusTitleBar = (FrameLayout) viewInflate.findViewById(R.id.bogus_title_bar);
        this.bogusBackground = viewInflate.findViewById(R.id.bogus_background);
        this.loadingView = (WebView) viewInflate.findViewById(R.id.loading_view);
        this.navigationBar = new e(context);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.top_layout);
        this.topLayout = linearLayout;
        linearLayout.addView(this.navigationBar, new LinearLayout.LayoutParams(-1, -2));
        this.pageLayout = (FrameLayout) viewInflate.findViewById(R.id.page_layout);
        this.page.onCreate(context, dVar, this);
        dVar.C(false);
        View viewCreateContentView = this.page.createContentView(pageHistory.getPageArgument());
        this.pageContentView = viewCreateContentView;
        this.pageLayout.addView(viewCreateContentView, new FrameLayout.LayoutParams(-1, -1));
        addView(viewInflate, new LinearLayoutCompat.a(-1, -1));
    }

    private b createPage(PageHistory pageHistory) {
        try {
            return pageHistory.getPageClass().newInstance();
        } catch (Exception e2) {
            e2.printStackTrace();
            throw new RuntimeException("无法初始化Page对象，class=" + pageHistory.getPageClass() + ",\n ex message:" + e2.getMessage(), e2);
        }
    }

    private void doLog(String str) {
        Log.i("mucang", str);
    }

    void doDestroy() {
        doLog("doDestroy");
        this.pageContentView = null;
        this.page.doDestroy();
    }

    void doPause() {
        doLog("doPause");
        this.page.doPause();
    }

    void doRestoreInstanceState(PageState pageState) {
        doLog("doRestoreInstanceState");
        if (pageState != null) {
            this.page.doRestoreInstanceState(pageState);
        }
    }

    void doResume(PageArgument pageArgument) {
        doLog("doResume");
        this.page.doResume(pageArgument);
    }

    PageState doSaveInstanceState() {
        doLog("doSaveInstanceState");
        return this.page.doSaveInstanceState();
    }

    public View getBogusBackground() {
        return this.bogusBackground;
    }

    public FrameLayout getBogusTitleBar() {
        return this.bogusTitleBar;
    }

    public WebView getLoadingView() {
        return this.loadingView;
    }

    public e getNavigationBar() {
        return this.navigationBar;
    }

    b getPage() {
        return this.page;
    }

    public View getStatusBar() {
        return this.statusBar;
    }

    public LinearLayout getTopLayout() {
        return this.topLayout;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }
}
