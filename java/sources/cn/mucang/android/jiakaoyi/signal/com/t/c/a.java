package cn.mucang.android.jiakaoyi.signal.com.t.c;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class a extends cn.mucang.android.jiakaoyi.signal.com.t.b {
    private final byte[] b = new byte[1024];
    private final byte[] c = new byte[1024];

    public a() {
        this.f5532a = true;
    }

    private void e(int i, long j) throws SocketTimeoutException {
        if (i > 0 && SystemClock.elapsedRealtime() - j > i) {
            throw new SocketTimeoutException();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0080  */
    /* JADX WARN: Code duplicated, block: B:41:0x0084  */
    /* JADX WARN: Code duplicated, block: B:43:0x008b  */
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
                        this.b[0] = b;
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
                this.b[i2] = b2;
                i2++;
            }
        }
        if (!this.f5532a) {
            return null;
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2) {
            byte[] bArr = this.b;
            if (bArr[i5] == 127) {
                i3 = i5 + 1;
                if (bArr[i3] == 1) {
                    i4 = i6 + 1;
                    this.c[i6] = 126;
                } else {
                    if (bArr[i5] == 127) {
                        i3 = i5 + 1;
                        if (bArr[i3] == 2) {
                            i4 = i6 + 1;
                            this.c[i6] = Ascii.DEL;
                        }
                    }
                    this.c[i6] = bArr[i5];
                    i6++;
                }
                i6 = i4;
                i5 = i3;
            } else {
                if (bArr[i5] == 127) {
                    i3 = i5 + 1;
                    if (bArr[i3] == 2) {
                        i4 = i6 + 1;
                        this.c[i6] = Ascii.DEL;
                        i6 = i4;
                        i5 = i3;
                    }
                }
                this.c[i6] = bArr[i5];
                i6++;
            }
            i5++;
        }
        byte[] bArr2 = this.c;
        int i7 = bArr2[0] & UnsignedBytes.MAX_VALUE;
        byte b3 = bArr2[3];
        int i8 = i6 - 3;
        byte[] bArr3 = new byte[i8];
        if (i8 > 0) {
            System.arraycopy(bArr2, 3, bArr3, 0, i8);
        }
        return new cn.mucang.android.jiakaoyi.signal.com.t.a(i7, bArr3);
    }
}
