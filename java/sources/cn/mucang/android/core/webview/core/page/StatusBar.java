package cn.mucang.android.core.webview.core.page;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class StatusBar implements Serializable {
    private String background;
    private String fontColor;
    private boolean transparent;

    public String getBackground() {
        return this.background;
    }

    public String getFontColor() {
        return this.fontColor;
    }

    public boolean isDarkMode() {
        return "dark".equals(this.fontColor);
    }

    public boolean isTransparent() {
        return this.transparent;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public void setFontColor(String str) {
        this.fontColor = str;
    }

    public void setTransparent(boolean z) {
        this.transparent = z;
    }
}
