package cn.mucang.sundial.library.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceSupport implements Serializable {
    private boolean support;

    public boolean isSupport() {
        return this.support;
    }

    public void setSupport(boolean z) {
        this.support = z;
    }

    public String toString() {
        return "support=" + this.support;
    }
}
