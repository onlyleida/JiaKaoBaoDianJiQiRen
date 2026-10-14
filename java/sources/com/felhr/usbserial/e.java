package com.felhr.usbserial;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.os.Build;
import android.util.Log;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class e extends j {
    private static final String l = "e";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final UsbInterface f11705h;
    private UsbEndpoint i;
    private UsbEndpoint j;
    public a k;

    public class a {
        public a(e eVar) {
        }

        public byte[] a(byte[] bArr) {
            int length = bArr.length;
            int i = 64;
            if (length <= 64) {
                return Arrays.copyOfRange(bArr, 2, length);
            }
            int i2 = 1;
            while (i < length) {
                i2++;
                i = i2 * 64;
            }
            byte[] bArr2 = new byte[length - (i2 * 2)];
            e.p(bArr, bArr2);
            return bArr2;
        }
    }

    public e(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection, int i) {
        super(usbDevice, usbDeviceConnection);
        this.k = new a(this);
        this.f11705h = usbDevice.getInterface(i < 0 ? 0 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(byte[] bArr, byte[] bArr2) {
        int i = 0;
        int i2 = 2;
        while (i2 - 2 <= bArr.length - 64) {
            System.arraycopy(bArr, i2, bArr2, i, 62);
            i2 += 64;
            i += 62;
        }
        int length = (bArr.length - i2) + 2;
        if (length > 0) {
            System.arraycopy(bArr, i2, bArr2, i, length - 2);
        }
    }

    private short[] q(int i) {
        int i2;
        int i3;
        int i4;
        short[] sArr = new short[2];
        byte[] bArr = {0, 3, 2, 4, 1, 5, 6, 7};
        byte[] bArr2 = {0, 1, 0, 1, 0, -1, 2, 1, 0, -1, -2, -3, 4, 3, 2, 1};
        short sR = r();
        if (sR == -1) {
            return null;
        }
        boolean z = sR == 512 && s() == 0;
        boolean z2 = sR == 1280 || sR == 1792 || sR == 2048 || sR == 2304 || sR == 4096;
        boolean z3 = sR == 1792 || sR == 2048 || sR == 2304;
        if (i < 1200 || !z3) {
            i2 = 3000000;
            i3 = 0;
        } else {
            i2 = 12000000;
            i3 = 131072;
        }
        if (i < (i2 >> 14) || i > i2) {
            return null;
        }
        int i5 = (i2 << 4) / i;
        int i6 = i5 & 15;
        if (i6 == 1) {
            i4 = i5 & (-8);
        } else {
            i4 = z ? bArr2[i6] + i5 : i5 + 1;
        }
        int i7 = i4 >> 1;
        if (!t((i2 << 3) / i7, i)) {
            return null;
        }
        int i8 = i7 & 7;
        int i9 = i7 >> 3;
        if (i9 == 1) {
            if (i8 == 0) {
                i9 = 0;
            } else {
                i8 = 0;
            }
        }
        int i10 = (bArr[i8] << Ascii.SO) | i3 | i9;
        sArr[0] = (short) i10;
        sArr[1] = (short) (i10 >> 16);
        if (z2) {
            sArr[1] = (short) (sArr[1] << 8);
        }
        return sArr;
    }

    private short r() {
        if (Build.VERSION.SDK_INT < 13) {
            return (short) -1;
        }
        byte[] rawDescriptors = this.f11713a.getRawDescriptors();
        return (short) ((rawDescriptors[12] << 8) + rawDescriptors[13]);
    }

    private byte s() {
        if (Build.VERSION.SDK_INT >= 13) {
            return this.f11713a.getRawDescriptors()[16];
        }
        return (byte) -1;
    }

    private boolean t(long j, long j2) {
        long j3 = j2 * 100;
        return j >= j3 / 103 && j <= j3 / 97;
    }

    private boolean u() {
        if (!this.f11713a.claimInterface(this.f11705h, true)) {
            Log.i(l, "Interface could not be claimed");
            return false;
        }
        Log.i(l, "Interface succesfully claimed");
        int endpointCount = this.f11705h.getEndpointCount();
        for (int i = 0; i <= endpointCount - 1; i++) {
            UsbEndpoint endpoint = this.f11705h.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 128) {
                this.i = endpoint;
            } else {
                this.j = endpoint;
            }
        }
        return v(0, 0, 0) >= 0 && v(4, 8, 0) >= 0 && v(1, 257, 0) >= 0 && v(1, Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE, 0) >= 0 && v(2, 0, 0) >= 0 && v(3, 16696, 0) >= 0;
    }

    private int v(int i, int i2, int i3) {
        int iControlTransfer = this.f11713a.controlTransfer(64, i, i2, this.f11705h.getId() + 1 + i3, null, 0, 0);
        Log.i(l, "Control Transfer Response: " + String.valueOf(iControlTransfer));
        return iControlTransfer;
    }

    private void w(short[] sArr) {
        this.f11713a.controlTransfer(64, 3, sArr[0], sArr[1], null, 0, 0);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003c  */
    private void x(int i) {
        int i2 = 32771;
        if (i >= 0 && i <= 300) {
            i2 = 10000;
        } else if (i > 300 && i <= 600) {
            i2 = 5000;
        } else if (i > 600 && i <= 1200) {
            i2 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
        } else if (i > 1200 && i <= 2400) {
            i2 = 1250;
        } else if (i > 2400 && i <= 4800) {
            i2 = 625;
        } else if (i > 4800 && i <= 9600) {
            i2 = 16696;
        } else if (i > 9600 && i <= 19200) {
            i2 = 32924;
        } else if (i > 19200 && i <= 38400) {
            i2 = 49230;
        } else if (i > 19200 && i <= 57600) {
            i2 = 52;
        } else if (i > 57600 && i <= 115200) {
            i2 = 26;
        } else if (i > 115200 && i <= 230400) {
            i2 = 13;
        } else if (i > 230400 && i <= 460800) {
            i2 = 16390;
        } else if ((i <= 460800 || i > 921600) && i <= 921600) {
            i2 = 16696;
        }
        v(3, i2, 0);
    }

    @Override // com.felhr.usbserial.j, com.felhr.usbserial.k
    public int a(byte[] bArr, int i, int i2, int i3) {
        int iCurrentTimeMillis;
        long jCurrentTimeMillis = System.currentTimeMillis() + ((long) i3);
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        int i4 = i2 / 62;
        if (i2 % 62 != 0) {
            i4++;
        }
        int i5 = (i4 * 2) + i2;
        byte[] bArr2 = new byte[i5];
        int i6 = 0;
        do {
            if (i3 > 0) {
                iCurrentTimeMillis = (int) (jCurrentTimeMillis - System.currentTimeMillis());
                if (iCurrentTimeMillis > 0) {
                    break;
                }
                break;
            }
            iCurrentTimeMillis = 0;
            int iBulkTransfer = this.f11713a.bulkTransfer(this.i, bArr2, i5, iCurrentTimeMillis);
            if (iBulkTransfer > 2) {
                System.arraycopy(this.k.a(bArr2), 0, bArr, i, i2);
                int i7 = iBulkTransfer / 64;
                if (iBulkTransfer % 64 != 0) {
                    i7++;
                }
                i6 = iBulkTransfer - (i7 * 2);
            }
        } while (i6 <= 0);
        return i6;
    }

    @Override // com.felhr.usbserial.j, com.felhr.usbserial.k
    public int b(byte[] bArr, int i) {
        int iCurrentTimeMillis;
        long jCurrentTimeMillis = System.currentTimeMillis() + ((long) i);
        if (this.f11716f) {
            return -1;
        }
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length / 62;
        if (bArr.length % 62 != 0) {
            length++;
        }
        int length2 = bArr.length + (length * 2);
        byte[] bArr2 = new byte[length2];
        int i2 = 0;
        do {
            if (i > 0) {
                iCurrentTimeMillis = (int) (jCurrentTimeMillis - System.currentTimeMillis());
                if (iCurrentTimeMillis > 0) {
                    break;
                }
                break;
            }
            iCurrentTimeMillis = 0;
            int iBulkTransfer = this.f11713a.bulkTransfer(this.i, bArr2, length2, iCurrentTimeMillis);
            if (iBulkTransfer > 2) {
                System.arraycopy(this.k.a(bArr2), 0, bArr, 0, bArr.length);
                int i3 = iBulkTransfer / 64;
                if (iBulkTransfer % 64 != 0) {
                    i3++;
                }
                i2 = iBulkTransfer - (i3 * 2);
            }
        } while (i2 <= 0);
        return i2;
    }

    @Override // com.felhr.usbserial.j
    public void k(int i) {
        short[] sArrQ = q(i);
        if (sArrQ != null) {
            w(sArrQ);
        } else {
            x(i);
        }
    }

    @Override // com.felhr.usbserial.j
    public void m() {
        v(1, 256, 0);
        v(1, 512, 0);
        this.f11713a.releaseInterface(this.f11705h);
    }

    @Override // com.felhr.usbserial.j
    public boolean n() {
        if (!u()) {
            return false;
        }
        l(this.i, this.j);
        this.f11716f = false;
        this.f11714d = new h(this);
        this.f11715e = new i(this);
        return true;
    }
}
