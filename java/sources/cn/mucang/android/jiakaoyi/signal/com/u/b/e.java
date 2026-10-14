package cn.mucang.android.jiakaoyi.signal.com.u.b;

import cn.mucang.android.jiakaoyi.signal.utils.CRCUtil;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class e implements cn.mucang.android.jiakaoyi.signal.com.u.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5330a;
    private final short b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5332e = -1;
    private final byte[] c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f5331d = new byte[2048];

    public e(boolean z, short s) {
        this.f5330a = z;
        this.b = s;
    }

    private byte c(boolean z, boolean z2) {
        if (!z) {
            return (byte) 0;
        }
        byte b = (byte) 128;
        return z2 ? (byte) (b | SignedBytes.MAX_POWER_OF_TWO) : b;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.u.a
    public short a() {
        return (short) this.f5332e;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.u.a
    public byte[] b(byte[] bArr, int i, int i2, int i3, boolean z, short s, boolean z2) {
        int i4 = this.f5332e + 1;
        this.f5332e = i4;
        if (i4 > 65535) {
            this.f5332e = 0;
        }
        int iH = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.h(this.c, cn.mucang.android.jiakaoyi.signal.communicate.utils.a.j(this.c, this.b, cn.mucang.android.jiakaoyi.signal.communicate.utils.a.j(this.c, (short) this.f5332e, cn.mucang.android.jiakaoyi.signal.communicate.utils.a.j(this.c, s, cn.mucang.android.jiakaoyi.signal.communicate.utils.a.g(this.c, c(z, z2), cn.mucang.android.jiakaoyi.signal.communicate.utils.a.g(this.c, (byte) i3, 0)), this.f5330a), this.f5330a), this.f5330a), bArr, i, i2);
        int i5 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.i(this.c, CRCUtil.crc(this.c, 0, iH), iH, this.f5330a);
        this.f5331d[0] = 126;
        int i6 = 1;
        for (int i7 = 0; i7 < i5; i7++) {
            byte[] bArr2 = this.c;
            if (bArr2[i7] == 126) {
                byte[] bArr3 = this.f5331d;
                int i8 = i6 + 1;
                bArr3[i6] = Ascii.DEL;
                i6 = i8 + 1;
                bArr3[i8] = 1;
            } else if (bArr2[i7] == 127) {
                byte[] bArr4 = this.f5331d;
                int i9 = i6 + 1;
                bArr4[i6] = Ascii.DEL;
                i6 = i9 + 1;
                bArr4[i9] = 2;
            } else {
                this.f5331d[i6] = bArr2[i7];
                i6++;
            }
        }
        byte[] bArr5 = this.f5331d;
        bArr5[i6] = 126;
        return Arrays.copyOfRange(bArr5, 0, i6 + 1);
    }
}
