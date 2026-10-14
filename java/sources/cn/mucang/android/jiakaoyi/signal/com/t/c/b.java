package cn.mucang.android.jiakaoyi.signal.com.t.c;

import android.os.SystemClock;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.utils.CRCUtil;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
public class b extends cn.mucang.android.jiakaoyi.signal.com.t.b {
    private byte[] b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5325d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f5326a;
    }

    public b() {
        this.f5532a = true;
        this.b = new byte[512];
        this.f5325d = 0;
    }

    private byte[] e(int i, int i2, AtomicBoolean atomicBoolean) {
        byte[] bArr = this.b;
        int i3 = (bArr[i + 2] & 255) - 5;
        if (i3 <= 0 || i + 1 + 1 + i3 + 4 + 1 != i2) {
            return null;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i + 3, bArr2, 0, i3);
        byte[] bArr3 = new byte[4];
        System.arraycopy(this.b, i2 - 4, bArr3, 0, 4);
        int iJ = new r(bArr3, b()).j();
        int iA = CRCUtil.a(bArr2);
        if (iA == iJ || bArr2[0] == 25 || bArr2[0] == 33 || bArr2[0] == 35 || bArr2[0] == 36 || n.a()) {
            if (iA == iJ && bArr2[0] == 17) {
                this.f5325d = i3;
            }
            if (bArr2[0] == 25 && i3 == this.f5325d) {
                atomicBoolean.set(false);
                if (!n.a()) {
                    f.f("0x11识别成了0x19，crc校验失败，0x" + Integer.toHexString(bArr2[0]) + " , crc=" + iJ + " , cal crc=" + iA);
                }
                return null;
            }
            atomicBoolean.set(true);
        } else {
            atomicBoolean.set(false);
            if (!n.a()) {
                f.f("crc校验失败，0x" + Integer.toHexString(bArr2[0]) + " , crc=" + iJ + " , cal crc=" + iA);
            }
        }
        return bArr2;
    }

    private byte[] g(InputStream inputStream, int i, long j, boolean z, AtomicBoolean atomicBoolean) throws IOException {
        this.c = 0;
        Arrays.fill(this.b, (byte) 0);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (this.f5532a) {
            if (inputStream.available() <= 0) {
                if (!this.f5532a) {
                    return null;
                }
                if (j > 0 && SystemClock.elapsedRealtime() - jElapsedRealtime > j) {
                    if (z) {
                        f.f("尝试解析帧数据超时1 " + cn.mucang.android.jiakaoyi.signal.communicate.utils.a.b(this.b));
                    }
                    return null;
                }
                SystemClock.sleep(1L);
            } else {
                if (j > 0 && SystemClock.elapsedRealtime() - jElapsedRealtime > j) {
                    if (z) {
                        f.f("尝试解析帧数据超时2 " + cn.mucang.android.jiakaoyi.signal.communicate.utils.a.b(this.b));
                    }
                    return null;
                }
                byte[] bArr = this.b;
                int i2 = this.c;
                this.c = i2 + 1;
                bArr[i2] = (byte) inputStream.read();
                int i3 = this.c;
                if (i3 >= i) {
                    this.f5532a = false;
                    return null;
                }
                if (i3 >= 10) {
                    byte[] bArr2 = this.b;
                    if (bArr2[i3 - 1] == -61 && bArr2[i3 - 2] == -61) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (int i4 = 0; i4 < this.c - 1; i4++) {
                            byte[] bArr3 = this.b;
                            if (bArr3[i4] == -91 && bArr3[i4 + 1] == 90) {
                                arrayList.add(Integer.valueOf(i4));
                            }
                            byte[] bArr4 = this.b;
                            if (bArr4[i4] == -61 && bArr4[i4 + 1] == -61) {
                                arrayList2.add(Integer.valueOf(i4));
                            }
                        }
                        if (arrayList.isEmpty()) {
                            Arrays.fill(this.b, (byte) 0);
                            this.c = 0;
                        } else {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                int iIntValue = ((Integer) it.next()).intValue();
                                Iterator it2 = arrayList2.iterator();
                                while (it2.hasNext()) {
                                    byte[] bArrE = e(iIntValue, ((Integer) it2.next()).intValue(), atomicBoolean);
                                    if (bArrE != null) {
                                        return bArrE;
                                    }
                                }
                            }
                        }
                    }
                }
                int i5 = this.c;
                byte[] bArr5 = this.b;
                if (i5 == bArr5.length - 1) {
                    System.arraycopy(bArr5, 1, bArr5, 0, bArr5.length - 1);
                    this.c--;
                }
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.t.b, cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a
    /* JADX INFO: renamed from: d */
    public cn.mucang.android.jiakaoyi.signal.com.t.a a(InputStream inputStream, int i, ComName comName) throws IOException {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        byte[] bArrG = g(inputStream, 100000, i, false, atomicBoolean);
        if (bArrG == null) {
            t.d("V600", "解析一帧空数据");
            return null;
        }
        r rVar = new r(bArrG);
        return new cn.mucang.android.jiakaoyi.signal.com.t.a(rVar.e() & UnsignedBytes.MAX_VALUE, rVar.f(), atomicBoolean.get());
    }

    public a h(InputStream inputStream, int i) throws IOException {
        byte[] bArrG = g(inputStream, Videoio.CAP_PROP_XI_DOWNSAMPLING, i, true, new AtomicBoolean(true));
        a aVar = new a();
        if (bArrG == null) {
            int i2 = this.c;
            if (i2 != 0) {
                System.arraycopy(this.b, 0, new byte[i2], 0, i2);
            }
            aVar.f5326a = null;
        } else {
            aVar.f5326a = bArrG;
        }
        return aVar;
    }
}
