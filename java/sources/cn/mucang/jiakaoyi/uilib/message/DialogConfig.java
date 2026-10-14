package cn.mucang.jiakaoyi.uilib.message;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DialogConfig implements Serializable {
    private boolean autoConfirm;
    private List<ButtonConfig> buttonConfig;
    private boolean closeable;
    private String imageUrl;

    public DialogConfig() {
        this.closeable = true;
        this.autoConfirm = false;
    }

    public List<ButtonConfig> getButtonConfig() {
        return this.buttonConfig;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public boolean isAutoConfirm() {
        return this.autoConfirm;
    }

    public boolean isCloseable() {
        return this.closeable;
    }

    public void setAutoConfirm(boolean z) {
        this.autoConfirm = z;
    }

    public void setButtonConfig(List<ButtonConfig> list) {
        this.buttonConfig = list;
    }

    public void setCloseable(boolean z) {
        this.closeable = z;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public DialogConfig(List<ButtonConfig> list, boolean z, boolean z2) {
        this.closeable = true;
        this.autoConfirm = false;
        this.buttonConfig = list;
        this.closeable = z;
        this.autoConfirm = z2;
    }
}
