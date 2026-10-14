package com.felhr.usbserial;

import android.annotation.TargetApi;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j implements k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final boolean f11712g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final UsbDeviceConnection f11713a;
    private UsbEndpoint b;
    private UsbEndpoint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected h f11714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected i f11715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f11716f = true;

    static {
        f11712g = Build.VERSION.SDK_INT > 17;
    }

    public j(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) {
        this.f11713a = usbDeviceConnection;
        new g(f11712g);
    }

    public static j e(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) {
        return f(usbDevice, usbDeviceConnection, -1);
    }

    public static j f(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        if (g.c.a.c.a(usbDevice)) {
            return new e(usbDevice, usbDeviceConnection, i);
        }
        if (g.c.a.b.a(vendorId, productId)) {
            return new d(usbDevice, usbDeviceConnection, i);
        }
        if (g.c.a.e.a(vendorId, productId)) {
            return new f(usbDevice, usbDeviceConnection, i);
        }
        if (g.c.a.a.a(vendorId, productId)) {
            return new c(usbDevice, usbDeviceConnection, i);
        }
        if (i(usbDevice)) {
            return new b(usbDevice, usbDeviceConnection, i);
        }
        return null;
    }

    public static boolean i(UsbDevice usbDevice) {
        int interfaceCount = usbDevice.getInterfaceCount();
        for (int i = 0; i <= interfaceCount - 1; i++) {
            if (usbDevice.getInterface(i).getInterfaceClass() == 10) {
                return true;
            }
        }
        return false;
    }

    public static boolean j(UsbDevice usbDevice) {
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        return g.c.a.c.a(usbDevice) || g.c.a.b.a(vendorId, productId) || g.c.a.e.a(vendorId, productId) || g.c.a.a.a(vendorId, productId) || i(usbDevice);
    }

    @Override // com.felhr.usbserial.k
    @TargetApi(18)
    public int a(byte[] bArr, int i, int i2, int i3) {
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        return this.f11713a.bulkTransfer(this.b, bArr, i, i2, i3);
    }

    @Override // com.felhr.usbserial.k
    public int b(byte[] bArr, int i) {
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        return this.f11713a.bulkTransfer(this.b, bArr, bArr.length, i);
    }

    @Override // com.felhr.usbserial.k
    public int c(byte[] bArr, int i) {
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        return this.f11713a.bulkTransfer(this.c, bArr, bArr.length, i);
    }

    @Override // com.felhr.usbserial.k
    @TargetApi(18)
    public int d(byte[] bArr, int i, int i2, int i3) {
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        return this.f11713a.bulkTransfer(this.c, bArr, i, i2, i3);
    }

    public h g() {
        if (this.f11716f) {
            throw new IllegalStateException("InputStream only available in Sync mode. \nOpen the port with syncOpen()");
        }
        return this.f11714d;
    }

    public i h() {
        if (this.f11716f) {
            throw new IllegalStateException("OutputStream only available in Sync mode. \nOpen the port with syncOpen()");
        }
        return this.f11715e;
    }

    public abstract void k(int i);

    protected void l(UsbEndpoint usbEndpoint, UsbEndpoint usbEndpoint2) {
        this.b = usbEndpoint;
        this.c = usbEndpoint2;
    }

    public abstract void m();

    public abstract boolean n();
}
