package cn.mucang.android.core.webview.protocol.bridge;

import cn.mucang.android.core.webview.core.MucangWebView;

/* JADX INFO: loaded from: classes.dex */
public abstract class k0 extends j0 {
    public static final String KEY_CALLBACK_NAME = "callbackName";
    protected cn.mucang.android.core.webview.core.d bridge;

    public k0(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView);
        this.bridge = dVar;
        addFunction();
    }

    protected abstract void addFunction();
}
