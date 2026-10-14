package com.felhr.usbserial;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes5.dex */
public class c extends j {
    private static final String r = "c";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private UsbInterface f11701h;
    private UsbEndpoint i;
    private UsbEndpoint j;
    private b k;
    private k.b l;
    private k.c m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;

    private class b extends com.felhr.usbserial.a {
        private b() {
        }

        @Override // com.felhr.usbserial.a
        public void a() {
            if (this.f11699a) {
                if (c.this.n && c.this.l != null) {
                    c.this.l.a(c.this.p);
                }
                if (c.this.o && c.this.m != null) {
                    c.this.m.a(c.this.q);
                }
                this.f11699a = false;
                return;
            }
            if (c.this.n) {
                if (c.this.p != c()) {
                    c cVar = c.this;
                    cVar.p = !cVar.p;
                    if (c.this.l != null) {
                        c.this.l.a(c.this.p);
                    }
                }
            }
            if (c.this.o) {
                if (c.this.q != d()) {
                    c cVar2 = c.this;
                    cVar2.q = !cVar2.q;
                    if (c.this.m != null) {
                        c.this.m.a(c.this.q);
                    }
                }
            }
        }

        public boolean c() {
            synchronized (this) {
                try {
                    wait(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            return c.this.y();
        }

        public boolean d() {
            synchronized (this) {
                try {
                    wait(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            return c.this.z();
        }
    }

    public c(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        super(usbDevice, usbDeviceConnection);
        this.p = false;
        this.q = false;
        this.n = false;
        this.o = false;
        this.f11701h = usbDevice.getInterface(i < 0 ? 0 : i);
    }

    private int A(String str, int i, int i2, int[] iArr) {
        int iF = F(i, i2, 0, new byte[iArr.length]);
        if (iF == iArr.length) {
            return 0;
        }
        Log.i(r, "Expected " + iArr.length + " bytes, but get " + iF + " [" + str + "]");
        return -1;
    }

    private void B() {
        this.k = new b();
    }

    private int C() {
        if (G(161, 49820, 45753, null) < 0) {
            Log.i(r, "init failed! #1");
            return -1;
        }
        if (G(164, 223, 0, null) < 0) {
            Log.i(r, "init failed! #2");
            return -1;
        }
        if (G(164, Opcodes.IF_ICMPEQ, 0, null) < 0) {
            Log.i(r, "init failed! #3");
            return -1;
        }
        if (A("init #4", Opcodes.FCMPL, 1798, new int[]{Opcodes.IF_ICMPEQ, 238}) == -1) {
            return -1;
        }
        if (G(154, 10023, 0, null) < 0) {
            Log.i(r, "init failed! #5");
            return -1;
        }
        if (G(154, 4882, 45698, null) < 0) {
            Log.i(r, "init failed! #6");
            return -1;
        }
        if (G(154, 3884, 8, null) < 0) {
            Log.i(r, "init failed! #7");
            return -1;
        }
        if (G(154, 9496, 195, null) < 0) {
            Log.i(r, "init failed! #8");
            return -1;
        }
        if (A("init #9", Opcodes.FCMPL, 1798, new int[]{Opcodes.IF_ICMPEQ, 238}) == -1) {
            return -1;
        }
        if (G(154, 10023, 0, null) >= 0) {
            return 0;
        }
        Log.i(r, "init failed! #10");
        return -1;
    }

    private boolean D() {
        if (!this.f11713a.claimInterface(this.f11701h, true)) {
            Log.i(r, "Interface could not be claimed");
            return false;
        }
        Log.i(r, "Interface succesfully claimed");
        int endpointCount = this.f11701h.getEndpointCount();
        for (int i = 0; i <= endpointCount - 1; i++) {
            UsbEndpoint endpoint = this.f11701h.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 128) {
                this.i = endpoint;
            } else if (endpoint.getType() == 2 && endpoint.getDirection() == 0) {
                this.j = endpoint;
            }
        }
        return C() == 0;
    }

    private int E(int i, int i2) {
        return (G(154, 4882, i, null) >= 0 && G(154, 3884, i2, null) >= 0 && A("set_baud_rate", Opcodes.FCMPL, 1798, new int[]{Opcodes.IF_ICMPEQ, 238}) != -1 && G(154, 10023, 0, null) >= 0) ? 0 : -1;
    }

    private int F(int i, int i2, int i3, byte[] bArr) {
        int iControlTransfer = this.f11713a.controlTransfer(192, i, i2, i3, bArr, bArr != null ? bArr.length : 0, 0);
        Log.i(r, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    private int G(int i, int i2, int i3, byte[] bArr) {
        int iControlTransfer = this.f11713a.controlTransfer(64, i, i2, i3, bArr, bArr != null ? bArr.length : 0, 0);
        Log.i(r, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    private void H() {
        b bVar = this.k;
        if (bVar != null) {
            bVar.b();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        byte[] bArr = new byte[2];
        int iF = F(Opcodes.FCMPL, 1798, 0, bArr);
        if (iF == 2) {
            return (bArr[0] & 1) == 0;
        }
        Log.i(r, "Expected 2 bytes, but get " + iF);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean z() {
        byte[] bArr = new byte[2];
        int iF = F(Opcodes.FCMPL, 1798, 0, bArr);
        if (iF == 2) {
            return (2 & bArr[0]) == 0;
        }
        Log.i(r, "Expected 2 bytes, but get " + iF);
        return false;
    }

    @Override // com.felhr.usbserial.j
    public void k(int i) {
        if (i <= 300) {
            if (E(55680, 235) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 300 && i <= 600) {
            if (E(25729, 118) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 600 && i <= 1200) {
            if (E(45697, 59) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 1200 && i <= 2400) {
            if (E(55681, 30) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 2400 && i <= 4800) {
            if (E(25730, 15) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 4800 && i <= 9600) {
            if (E(45698, 8) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 9600 && i <= 19200) {
            if (E(55682, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 19200 && i <= 38400) {
            if (E(25731, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 38400 && i <= 57600) {
            if (E(39043, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 57600 && i <= 115200) {
            if (E(52355, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 115200 && i <= 230400) {
            if (E(59011, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 230400 && i <= 460800) {
            if (E(62339, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
                return;
            }
            return;
        }
        if (i > 460800 && i <= 921600) {
            if (E(62343, 7) == -1) {
                Log.i(r, "SetBaudRate failed!");
            }
        } else if (i > 921600 && i <= 1228800) {
            if (E(64259, 33) == -1) {
                Log.i(r, "SetBaudRate failed!");
            }
        } else {
            if (i <= 1228800 || i > 2000000 || E(64771, 2) != -1) {
                return;
            }
            Log.i(r, "SetBaudRate failed!");
        }
    }

    @Override // com.felhr.usbserial.j
    public void m() {
        H();
        this.f11713a.releaseInterface(this.f11701h);
    }

    @Override // com.felhr.usbserial.j
    public boolean n() {
        if (!D()) {
            return false;
        }
        B();
        l(this.i, this.j);
        this.f11716f = false;
        this.f11714d = new h(this);
        this.f11715e = new i(this);
        return true;
    }
}
