package cn.mucang.android.jiakaoyi.signal.com.t.c;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.utils.CRCUtil;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class c extends cn.mucang.android.jiakaoyi.signal.com.t.b {
    private int b;
    private final byte[] c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f5327d = new byte[1024];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f5328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5329f;

    public c(int i, boolean z) {
        this.f5328e = i;
        this.f5329f = z;
        this.f5532a = true;
        this.b = 0;
    }

    private void e(int i, long j) throws SocketTimeoutException {
        if (i <= 0 || SystemClock.elapsedRealtime() - j <= i) {
            return;
        }
        f.f("V2Decoder读流超时" + Math.round(i / 1000) + "s");
        throw new SocketTimeoutException("读取主控数据超时，请重启主控");
    }

    private static boolean g(int i) {
        return i != 153;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a
    public boolean b() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:41:0x008b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    @Override // cn.mucang.android.jiakaoyi.signal.com.t.b, cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a
    /* JADX INFO: renamed from: d */
    public cn.mucang.android.jiakaoyi.signal.com.t.a a(InputStream inputStream, int i, ComName comName) throws ComException, IOException {
        int i2;
        int i3;
        int i4;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            if (this.f5532a) {
                if (inputStream.available() <= 0) {
                    SystemClock.sleep(1L);
                    e(i, jElapsedRealtime);
                } else if (((byte) inputStream.read()) != 126) {
                    continue;
                } else if (inputStream.available() > 0) {
                    byte b = (byte) inputStream.read();
                    if (b != 126) {
                        this.c[0] = b;
                        i2 = 1;
                        break;
                    }
                } else {
                    SystemClock.sleep(1L);
                    e(i, jElapsedRealtime);
                }
            }
            i2 = 0;
            break;
        }
        while (this.f5532a) {
            if (inputStream.available() <= 0) {
                SystemClock.sleep(1L);
                e(i, jElapsedRealtime);
            } else {
                byte b2 = (byte) inputStream.read();
                if (b2 == 126) {
                    break;
                }
                this.c[i2] = b2;
                i2++;
            }
        }
        if (!this.f5532a) {
            return null;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2) {
            byte[] bArr = this.c;
            if (bArr[i5] == 127) {
                i3 = i5 + 1;
                if (bArr[i3] == 1) {
                    i4 = i6 + 1;
                    this.f5327d[i6] = 126;
                } else {
                    if (bArr[i5] == 127) {
                        i3 = i5 + 1;
                        if (bArr[i3] == 2) {
                            i4 = i6 + 1;
                            this.f5327d[i6] = Ascii.DEL;
                        }
                    }
                    this.f5327d[i6] = bArr[i5];
                    i6++;
                }
                i6 = i4;
                i5 = i3;
            } else {
                if (bArr[i5] == 127) {
                    i3 = i5 + 1;
                    if (bArr[i3] == 2) {
                        i4 = i6 + 1;
                        this.f5327d[i6] = Ascii.DEL;
                        i6 = i4;
                        i5 = i3;
                    }
                }
                this.f5327d[i6] = bArr[i5];
                i6++;
            }
            i5++;
        }
        byte[] bArr2 = this.f5327d;
        int i7 = bArr2[0] & UnsignedBytes.MAX_VALUE;
        byte b3 = bArr2[1];
        boolean z = (b3 & UnsignedBytes.MAX_POWER_OF_TWO) != 0;
        boolean z2 = (b3 & SignedBytes.MAX_POWER_OF_TWO) != 0;
        int iF = z ? cn.mucang.android.jiakaoyi.signal.communicate.utils.a.f(b(), this.f5327d, 2) : 0;
        int iF2 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.f(b(), this.f5327d, 4);
        int iF3 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.f(b(), this.f5327d, 6);
        if (g(i7) && iF3 != this.f5328e && this.f5329f) {
            f.f("V2Decoder鉴权码非法");
            if (AppUtils.c()) {
                return null;
            }
            throw new ComException(comName, ComState.ErrorCom, new Exception("鉴权码非法"));
        }
        int i8 = i6 - 12;
        byte[] bArr3 = new byte[i8];
        if (i8 > 0) {
            System.arraycopy(this.f5327d, 8, bArr3, 0, i8);
        }
        int i9 = i6 - 4;
        int iE = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.e(b(), this.f5327d, i9);
        int iCrc = CRCUtil.crc(this.f5327d, 0, i9);
        if (iE == iCrc) {
            this.b = 0;
            return new cn.mucang.android.jiakaoyi.signal.com.t.a(i7, bArr3, z, z2, iF, iF2, iE == iCrc);
        }
        f.f("V2Decoder校验失败");
        byte[] bArr4 = new byte[i6];
        System.arraycopy(this.f5327d, 0, bArr4, 0, i6);
        f.f("指令:" + i7 + " crc 校验失败:" + iE + "->" + iCrc + " data:" + h0.a(bArr4));
        if (AppUtils.c()) {
            return null;
        }
        int i10 = this.b + 1;
        this.b = i10;
        if (i10 < 5) {
            return null;
        }
        throw new ComException(comName, ComState.ErrorCom, new Exception("校验失败"));
    }
}
