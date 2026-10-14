package com.felhr.usbserial;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class d extends j {
    private static final String v = "d";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11703h;
    private boolean i;
    private boolean j;
    private boolean k;
    private k.b l;
    private k.c m;
    private final UsbInterface n;
    private UsbEndpoint o;
    private UsbEndpoint p;
    private b q;
    private k.f r;
    private k.a s;
    private k.d t;
    private k.e u;

    private class b extends com.felhr.usbserial.a {
        private b() {
        }

        private byte[] c() {
            synchronized (this) {
                try {
                    wait(40L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            return d.this.E();
        }

        @Override // com.felhr.usbserial.a
        public void a() {
            if (this.f11699a) {
                if (d.this.f11703h && d.this.l != null) {
                    d.this.l.a(d.this.j);
                }
                if (d.this.i && d.this.m != null) {
                    d.this.m.a(d.this.k);
                }
                this.f11699a = false;
                return;
            }
            byte[] bArrC = c();
            byte[] bArrD = d.this.D();
            if (d.this.f11703h) {
                if (d.this.j != ((bArrC[0] & Ascii.DLE) == 16)) {
                    d dVar = d.this;
                    dVar.j = !dVar.j;
                    if (d.this.l != null) {
                        d.this.l.a(d.this.j);
                    }
                }
            }
            if (d.this.i) {
                if (d.this.k != ((bArrC[0] & 32) == 32)) {
                    d dVar2 = d.this;
                    dVar2.k = !dVar2.k;
                    if (d.this.m != null) {
                        d.this.m.a(d.this.k);
                    }
                }
            }
            if (d.this.r != null && (bArrD[0] & Ascii.DLE) == 16) {
                d.this.r.a();
            }
            if (d.this.t != null && (bArrD[0] & 2) == 2) {
                d.this.t.a();
            }
            if (d.this.s != null && (bArrD[0] & 1) == 1) {
                d.this.s.a();
            }
            if (d.this.u != null) {
                if ((bArrD[0] & 4) == 4 || (bArrD[0] & 8) == 8) {
                    d.this.u.a();
                }
            }
        }
    }

    public d(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        super(usbDevice, usbDeviceConnection);
        this.f11703h = false;
        this.i = false;
        this.j = true;
        this.k = true;
        this.n = usbDevice.getInterface(i < 0 ? 0 : i);
    }

    private void C() {
        this.q = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] D() {
        byte[] bArr = new byte[19];
        int iControlTransfer = this.f11713a.controlTransfer(193, 16, 0, this.n.getId(), bArr, 19, 0);
        Log.i(v, "Control Transfer Response (Comm status): " + String.valueOf(iControlTransfer));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] E() {
        byte[] bArr = new byte[1];
        this.f11713a.controlTransfer(193, 8, 0, this.n.getId(), bArr, 1, 0);
        return bArr;
    }

    private boolean F() {
        if (!this.f11713a.claimInterface(this.n, true)) {
            Log.i(v, "Interface could not be claimed");
            return false;
        }
        Log.i(v, "Interface succesfully claimed");
        int endpointCount = this.n.getEndpointCount();
        for (int i = 0; i <= endpointCount - 1; i++) {
            UsbEndpoint endpoint = this.n.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 128) {
                this.o = endpoint;
            } else {
                this.p = endpoint;
            }
        }
        if (G(0, 1, null) < 0) {
            return false;
        }
        k(9600);
        if (G(3, 2048, null) < 0) {
            return false;
        }
        H(0);
        return G(7, 0, null) >= 0;
    }

    private int G(int i, int i2, byte[] bArr) {
        int iControlTransfer = this.f11713a.controlTransfer(65, i, i2, this.n.getId(), bArr, bArr != null ? bArr.length : 0, 0);
        Log.i(v, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    private void I() {
        if (this.q.isAlive()) {
            return;
        }
        this.q.start();
    }

    private void J() {
        b bVar = this.q;
        if (bVar != null) {
            bVar.b();
            this.q = null;
        }
    }

    public void H(int i) {
        if (i == 0) {
            byte[] bArr = {1, 0, 0, 0, SignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 0, UnsignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 32, 0, 0};
            this.f11703h = false;
            this.i = false;
            G(19, 0, bArr);
            return;
        }
        if (i == 1) {
            byte[] bArr2 = {9, 0, 0, 0, SignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 0, UnsignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 32, 0, 0};
            this.f11703h = true;
            this.i = false;
            G(19, 0, bArr2);
            G(7, Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE, null);
            this.j = (D()[4] & 1) == 0;
            I();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            byte[] bArr3 = {1, 0, 0, 0, 67, 0, 0, 0, 0, UnsignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 32, 0, 0};
            G(25, 0, new byte[]{0, 0, 0, 0, 17, 19});
            G(19, 0, bArr3);
            return;
        }
        byte[] bArr4 = {17, 0, 0, 0, SignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 0, UnsignedBytes.MAX_POWER_OF_TWO, 0, 0, 0, 32, 0, 0};
        this.i = true;
        this.f11703h = false;
        G(19, 0, bArr4);
        G(7, 257, null);
        this.k = (D()[4] & 2) == 0;
        I();
    }

    @Override // com.felhr.usbserial.j
    public void k(int i) {
        G(30, 0, new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)});
    }

    @Override // com.felhr.usbserial.j
    public void m() {
        G(18, 15, null);
        G(0, 0, null);
        J();
        this.f11713a.releaseInterface(this.n);
    }

    @Override // com.felhr.usbserial.j
    public boolean n() {
        if (!F()) {
            return false;
        }
        C();
        l(this.o, this.p);
        this.f11716f = false;
        this.f11714d = new h(this);
        this.f11715e = new i(this);
        return true;
    }
}
