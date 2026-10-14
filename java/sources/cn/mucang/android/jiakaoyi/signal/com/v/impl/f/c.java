package cn.mucang.android.jiakaoyi.signal.com.v.impl.f;

import cn.mucang.android.core.utils.t;
import com.rscja.deviceapi.b;
import com.rscja.deviceapi.exception.ConfigurationException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class c extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f5354a = false;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        super.close();
        this.f5354a = true;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new RuntimeException("不支持write(int)，请用write(byte[])");
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.f5354a) {
            throw new IOException("v600串口已经关闭");
        }
        t.h("V600", "send data : " + bArr.length);
        if (i == 0 && i2 == bArr.length) {
            try {
                b.b().e(bArr);
            } catch (ConfigurationException e2) {
                t.h("V600", "send error : " + e2);
                throw new IOException(e2);
            }
        } else {
            try {
                b.b().e(Arrays.copyOfRange(bArr, i, i2 + i));
            } catch (ConfigurationException e3) {
                throw new IOException(e3);
            }
        }
    }
}
