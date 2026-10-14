package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m;

import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<T> implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile boolean f5532a = true;

    public abstract T a(InputStream inputStream, int i, ComName comName) throws ComException, IOException;

    public boolean b() {
        return true;
    }

    public void c() {
        this.f5532a = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5532a = false;
    }

    public boolean isRunning() {
        return this.f5532a;
    }
}
