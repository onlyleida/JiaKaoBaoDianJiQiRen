package cn.mucang.android.jiakaoyi.signal.com.v.impl;

import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.v.a;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class d extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f5343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Socket f5344g;

    public d(String str, int i, ComName comName) {
        super(comName);
        this.f5342e = str;
        this.f5343f = i;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Socket socket = this.f5344g;
        if (socket == null) {
            return;
        }
        try {
            if (!socket.isInputShutdown() && this.f5344g.isConnected()) {
                this.f5344g.shutdownInput();
            }
        } catch (Throwable th) {
            f.f("关闭socket输入流失败:" + th.getMessage());
        }
        try {
            if (!this.f5344g.isOutputShutdown() && this.f5344g.isConnected()) {
                this.f5344g.shutdownOutput();
            }
        } catch (Throwable th2) {
            f.f("关闭socket输出流失败" + th2.getMessage());
        }
        o.a(this.f5344g);
        this.f5344g = null;
        super.close();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public void init() throws ComException {
        String message;
        try {
            Socket socket = new Socket();
            this.f5344g = socket;
            socket.connect(new InetSocketAddress(this.f5342e, this.f5343f), 3000);
            this.f5344g.setSoTimeout(180000);
            this.f5333a = this.f5344g.getInputStream();
            this.b = this.f5344g.getOutputStream();
        } catch (Throwable th) {
            if (th instanceof SocketTimeoutException) {
                message = "连接超时，请检查网络连接是否畅通";
            } else {
                message = ((th instanceof IllegalArgumentException) || (th instanceof SocketException)) ? th.getMessage() : th.getMessage();
            }
            throw new ComException(this.f5334d, ComState.ErrorInitial, message);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public int v() {
        return 10485760;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.v.b
    public String w() {
        return this.f5342e + ":" + this.f5343f;
    }
}
