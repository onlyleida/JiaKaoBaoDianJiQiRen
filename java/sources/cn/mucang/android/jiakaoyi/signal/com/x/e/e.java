package cn.mucang.android.jiakaoyi.signal.com.x.e;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class e extends cn.mucang.android.jiakaoyi.signal.com.x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f5377a;
    private volatile boolean b;
    private final cn.mucang.android.jiakaoyi.signal.com.u.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f5379e;

    public e(OutputStream outputStream) {
        this(outputStream, null);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.x.a
    public boolean a(byte[] bArr, int i, boolean z, int i2, int i3, int i4) throws Throwable {
        byte[] bArrD;
        if (!this.b) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.f5378d;
        if (j < this.f5379e) {
            SystemClock.sleep((((long) this.f5379e) - Math.max(0L, j)) + 2);
        }
        this.f5378d = jCurrentTimeMillis;
        if (!this.b) {
            return false;
        }
        this.f5377a.write(bArr, 0, bArr.length);
        if (!this.b) {
            return false;
        }
        this.f5377a.flush();
        if (!this.b) {
            return false;
        }
        if (this.c == null || Cmd.isSendOTAOrder(i) || DeviceUtils.i() < 106 || (bArrD = cn.mucang.android.jiakaoyi.signal.communicate.x.a.b().d(bArr.length, this.c)) == null) {
            return true;
        }
        SystemClock.sleep(this.f5379e);
        if (!this.b) {
            return false;
        }
        this.f5377a.write(bArrD, 0, bArrD.length);
        if (!this.b) {
            return false;
        }
        this.f5377a.flush();
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b = false;
    }

    public e(OutputStream outputStream, cn.mucang.android.jiakaoyi.signal.com.u.a aVar) {
        this.f5377a = outputStream;
        this.b = true;
        this.c = aVar;
        this.f5379e = AppUtils.n() ? 40 : 100;
    }
}
