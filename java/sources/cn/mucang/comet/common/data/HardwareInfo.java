package cn.mucang.comet.common.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class HardwareInfo implements Serializable {
    private String colorDepth;
    private String devicePixelRatio;
    private String hardwareConcurrency;
    private String navigatorPlatform;
    private String pixelDepth;
    private String screenHeight;
    private String screenWidth;

    public String getColorDepth() {
        return this.colorDepth;
    }

    public String getDevicePixelRatio() {
        return this.devicePixelRatio;
    }

    public String getHardwareConcurrency() {
        return this.hardwareConcurrency;
    }

    public String getNavigatorPlatform() {
        return this.navigatorPlatform;
    }

    public String getPixelDepth() {
        return this.pixelDepth;
    }

    public String getScreenHeight() {
        return this.screenHeight;
    }

    public String getScreenWidth() {
        return this.screenWidth;
    }

    public void setColorDepth(String str) {
        this.colorDepth = str;
    }

    public void setDevicePixelRatio(String str) {
        this.devicePixelRatio = str;
    }

    public void setHardwareConcurrency(String str) {
        this.hardwareConcurrency = str;
    }

    public void setNavigatorPlatform(String str) {
        this.navigatorPlatform = str;
    }

    public void setPixelDepth(String str) {
        this.pixelDepth = str;
    }

    public void setScreenHeight(String str) {
        this.screenHeight = str;
    }

    public void setScreenWidth(String str) {
        this.screenWidth = str;
    }
}
