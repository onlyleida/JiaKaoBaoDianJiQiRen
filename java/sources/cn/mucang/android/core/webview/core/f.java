package cn.mucang.android.core.webview.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends WebView {
    public f(Context context) {
        super(context);
    }

    @Override // android.webkit.WebView
    @SuppressLint({"JavascriptInterface"})
    public void addJavascriptInterface(Object obj, String str) {
        if (obj != null) {
            super.addJavascriptInterface(obj, str);
        } else if (MucangConfig.v()) {
            throw new RuntimeException("作为" + str + "的js接口的对象不能为null");
        }
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
