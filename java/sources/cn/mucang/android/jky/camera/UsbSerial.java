package cn.mucang.android.jky.camera;

import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jky/camera/UsbSerial;", "", "devBus", "", "serial", "", "(ILjava/lang/String;)V", "getDevBus", "()I", "getSerial", "()Ljava/lang/String;", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "toString", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class UsbSerial {
    private final int devBus;
    private final String serial;

    public UsbSerial(int i, String serial) {
        kotlin.jvm.internal.r.e(serial, "serial");
        this.devBus = i;
        this.serial = serial;
    }

    public static /* synthetic */ UsbSerial copy$default(UsbSerial usbSerial, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = usbSerial.devBus;
        }
        if ((i2 & 2) != 0) {
            str = usbSerial.serial;
        }
        return usbSerial.copy(i, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDevBus() {
        return this.devBus;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSerial() {
        return this.serial;
    }

    public final UsbSerial copy(int devBus, String serial) {
        kotlin.jvm.internal.r.e(serial, "serial");
        return new UsbSerial(devBus, serial);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UsbSerial)) {
            return false;
        }
        UsbSerial usbSerial = (UsbSerial) other;
        return this.devBus == usbSerial.devBus && kotlin.jvm.internal.r.a(this.serial, usbSerial.serial);
    }

    public final int getDevBus() {
        return this.devBus;
    }

    public final String getSerial() {
        return this.serial;
    }

    public int hashCode() {
        return (this.devBus * 31) + this.serial.hashCode();
    }

    public String toString() {
        return "UsbSerial(devBus=" + this.devBus + ", serial=" + this.serial + ')';
    }
}
