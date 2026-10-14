package com.felhr.usbserial;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class b extends j {
    private static final String l = "b";
    private static final byte[] m = {0, -62, 1, 0, 0, 0, 8};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final UsbInterface f11700h;
    private UsbEndpoint i;
    private UsbEndpoint j;
    private int k;

    public b(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        super(usbDevice, usbDeviceConnection);
        this.k = 0;
        this.f11700h = usbDevice.getInterface(i < 0 ? o(usbDevice) : i);
    }

    private static int o(UsbDevice usbDevice) {
        int interfaceCount = usbDevice.getInterfaceCount();
        for (int i = 0; i < interfaceCount; i++) {
            if (usbDevice.getInterface(i).getInterfaceClass() == 10) {
                return i;
            }
        }
        Log.i(l, "There is no CDC class interface");
        return -1;
    }

    private byte[] r() {
        byte[] bArr = new byte[7];
        int iControlTransfer = this.f11713a.controlTransfer(161, 33, 0, 0, bArr, 7, 0);
        Log.i(l, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return bArr;
    }

    private boolean s() {
        if (!this.f11713a.claimInterface(this.f11700h, true)) {
            Log.i(l, "Interface could not be claimed");
            return false;
        }
        Log.i(l, "Interface succesfully claimed");
        int endpointCount = this.f11700h.getEndpointCount();
        for (int i = 0; i <= endpointCount - 1; i++) {
            UsbEndpoint endpoint = this.f11700h.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 128) {
                this.i = endpoint;
            } else if (endpoint.getType() == 2 && endpoint.getDirection() == 0) {
                this.j = endpoint;
            }
        }
        if (this.j == null || this.i == null) {
            Log.i(l, "Interface does not have an IN or OUT interface");
            return false;
        }
        t(32, 0, q());
        t(34, 3, null);
        return true;
    }

    private int t(int i, int i2, byte[] bArr) {
        int iControlTransfer = this.f11713a.controlTransfer(33, i, i2, 0, bArr, bArr != null ? bArr.length : 0, 0);
        Log.i(l, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    @Override // com.felhr.usbserial.j
    public void k(int i) {
        byte[] bArrR = r();
        bArrR[0] = (byte) (i & 255);
        bArrR[1] = (byte) ((i >> 8) & 255);
        bArrR[2] = (byte) ((i >> 16) & 255);
        bArrR[3] = (byte) ((i >> 24) & 255);
        t(32, 0, bArrR);
    }

    @Override // com.felhr.usbserial.j
    public void m() {
        t(34, 0, null);
        this.f11713a.releaseInterface(this.f11700h);
        this.f11713a.close();
    }

    @Override // com.felhr.usbserial.j
    public boolean n() {
        if (!s()) {
            return false;
        }
        l(this.i, this.j);
        this.f11716f = false;
        this.f11714d = new h(this);
        this.f11715e = new i(this);
        return true;
    }

    public int p() {
        return this.k;
    }

    protected byte[] q() {
        int iP = p();
        if (iP <= 0) {
            return m;
        }
        byte[] bArr = (byte[]) m.clone();
        for (int i = 0; i < 4; i++) {
            bArr[i] = (byte) ((iP >> (i * 8)) & 255);
        }
        return bArr;
    }
}
