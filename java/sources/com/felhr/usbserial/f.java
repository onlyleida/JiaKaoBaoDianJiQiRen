package com.felhr.usbserial;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes5.dex */
public class f extends j {
    private static final String l = "f";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f11706h;
    private final UsbInterface i;
    private UsbEndpoint j;
    private UsbEndpoint k;

    public f(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        super(usbDevice, usbDeviceConnection);
        this.f11706h = new byte[]{UnsignedBytes.MAX_POWER_OF_TWO, 37, 0, 0, 0, 0, 8};
        if (i > 1) {
            throw new IllegalArgumentException("Multi-interface PL2303 devices not supported!");
        }
        this.i = usbDevice.getInterface(i < 0 ? 0 : i);
    }

    private boolean o() {
        if (!this.f11713a.claimInterface(this.i, true)) {
            Log.i(l, "Interface could not be claimed");
            return false;
        }
        Log.i(l, "Interface succesfully claimed");
        int endpointCount = this.i.getEndpointCount();
        for (int i = 0; i <= endpointCount - 1; i++) {
            UsbEndpoint endpoint = this.i.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 128) {
                this.j = endpoint;
            } else if (endpoint.getType() == 2 && endpoint.getDirection() == 0) {
                this.k = endpoint;
            }
        }
        byte[] bArr = new byte[1];
        return p(192, 1, 33924, 0, bArr) >= 0 && p(64, 1, 1028, 0, null) >= 0 && p(192, 1, 33924, 0, bArr) >= 0 && p(192, 1, 33667, 0, bArr) >= 0 && p(192, 1, 33924, 0, bArr) >= 0 && p(64, 1, 1028, 1, null) >= 0 && p(192, 1, 33924, 0, bArr) >= 0 && p(192, 1, 33667, 0, bArr) >= 0 && p(64, 1, 0, 1, null) >= 0 && p(64, 1, 1, 0, null) >= 0 && p(64, 1, 2, 68, null) >= 0 && p(33, 34, 3, 0, null) >= 0 && p(33, 32, 0, 0, this.f11706h) >= 0 && p(64, 1, 1285, 4881, null) >= 0;
    }

    private int p(int i, int i2, int i3, int i4, byte[] bArr) {
        int iControlTransfer = this.f11713a.controlTransfer(i, i2, i3, i4, bArr, bArr != null ? bArr.length : 0, 0);
        Log.i(l, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    @Override // com.felhr.usbserial.j
    public void k(int i) {
        byte[] bArr = {(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
        byte b = bArr[0];
        byte[] bArr2 = this.f11706h;
        if (b == bArr2[0] && bArr[1] == bArr2[1] && bArr[2] == bArr2[2] && bArr[3] == bArr2[3]) {
            return;
        }
        bArr2[0] = bArr[0];
        bArr2[1] = bArr[1];
        bArr2[2] = bArr[2];
        bArr2[3] = bArr[3];
        p(33, 32, 0, 0, bArr2);
    }

    @Override // com.felhr.usbserial.j
    public void m() {
        this.f11713a.releaseInterface(this.i);
    }

    @Override // com.felhr.usbserial.j
    public boolean n() {
        if (!o()) {
            return false;
        }
        l(this.j, this.k);
        this.f11716f = false;
        this.f11714d = new h(this);
        this.f11715e = new i(this);
        return true;
    }
}
