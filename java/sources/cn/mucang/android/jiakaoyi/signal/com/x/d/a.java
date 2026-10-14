package cn.mucang.android.jiakaoyi.signal.com.x.d;

import android.os.SystemClock;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class a extends cn.mucang.android.jiakaoyi.signal.com.x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5364a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.com.x.a f5365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5366e;
    private long c = 0;
    private int b = 0;

    public a(cn.mucang.android.jiakaoyi.signal.com.x.a aVar, boolean z, int i) {
        this.f5364a = i;
        this.f5365d = aVar;
        this.f5366e = z;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.x.a
    public boolean a(byte[] bArr, int i, boolean z, int i2, int i3, int i4) throws Throwable {
        if (!this.f5366e) {
            return this.f5365d.a(bArr, i, z, i2, i3, i4);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.c;
        if (j > 1000) {
            this.c = jElapsedRealtime;
            this.b = bArr.length;
        } else {
            int length = this.b + bArr.length;
            if (length > this.f5364a) {
                SystemClock.sleep(Math.max(0L, Math.min(1000 - j, 200L)));
                this.c = jElapsedRealtime;
                this.b = bArr.length;
            } else {
                this.b = length;
            }
        }
        return this.f5365d.a(bArr, i, z, i2, i3, i4);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5365d.close();
    }
}
