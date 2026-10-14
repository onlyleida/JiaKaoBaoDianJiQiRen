package cn.mucang.android.jiakaoyi.signal.com.v;

import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected InputStream f5333a;
    protected OutputStream b;
    protected volatile boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ComName f5334d;

    protected a(ComName comName) {
        this.f5334d = comName;
    }

    public void b(boolean z) {
        this.c = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c = false;
        o.a(this.f5333a);
        o.a(this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public boolean isRunning() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public OutputStream m() {
        if (this.c) {
            return this.b;
        }
        throw new RuntimeException("输出流已经关闭");
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public ComName o() {
        return this.f5334d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public InputStream t() {
        if (this.c) {
            return this.f5333a;
        }
        throw new RuntimeException("输入流已经关闭");
    }
}
