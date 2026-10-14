package cn.mucang.android.jiakaoyi.signal.com.x.e;

import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class d extends cn.mucang.android.jiakaoyi.signal.com.x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.com.x.a f5375a;
    private final cn.mucang.android.jiakaoyi.signal.com.u.a b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ComName f5376d;

    public d(cn.mucang.android.jiakaoyi.signal.com.x.a aVar, cn.mucang.android.jiakaoyi.signal.com.u.a aVar2, ComName comName) {
        this.f5375a = aVar;
        this.b = aVar2;
        this.f5376d = comName;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.x.a
    public boolean a(byte[] bArr, int i, boolean z, int i2, int i3, int i4) throws Throwable {
        if (!z) {
            return this.f5375a.a(this.b.b(bArr, 0, bArr.length, i, false, (short) 0, true), i, false, i2, 0, 0);
        }
        if (bArr.length <= i2) {
            return this.f5375a.a(this.b.b(bArr, 0, bArr.length, i, true, (short) 0, true), i, true, i2, 0, 0);
        }
        if (i2 <= 0) {
            throw new ComException(this.f5376d, ComState.ErrorSplit, new RuntimeException("分包长度错误:" + i2));
        }
        int i5 = 0;
        short s = 0;
        while (this.c) {
            int iMin = Math.min(bArr.length, i5 + i2);
            int i6 = iMin - i5;
            boolean z2 = iMin >= bArr.length;
            this.f5375a.a(this.b.b(bArr, i5, i6, i, true, s, z2), i, true, i6, s, this.b.a());
            i5 += i6;
            s = (short) (s + 1);
            if (z2) {
                return true;
            }
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c = false;
        this.f5375a.close();
    }
}
