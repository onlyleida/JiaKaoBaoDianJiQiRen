package cn.mucang.jiakaoyi.uilib.socket;

import android.os.SystemClock;
import cn.mucang.jiakaoyi.uilib.socket.config.MCMessageParserConfig;
import cn.mucang.jiakaoyi.uilib.socket.parser.excption.MCException;
import cn.mucang.jiakaoyi.uilib.socket.y.w;
import java.io.Closeable;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class p implements Runnable, Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile a f9681a;
    private final DataInputStream c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f9682d;
    private volatile boolean b = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9683e = 0;

    public interface a {
        void a(MCException mCException);

        void b(SocketModel socketModel);

        void c(String str);
    }

    public p(DataInputStream dataInputStream, a aVar, String str) {
        this.c = dataInputStream;
        this.f9681a = aVar;
        this.f9682d = str;
    }

    private void a(long j) {
        SystemClock.sleep(j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        cn.mucang.android.jiakaoyi.framework.log.f.f("关闭reader:" + this.f9682d);
        this.b = false;
        this.f9681a = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.b) {
            try {
                SocketModel socketModelB = cn.mucang.jiakaoyi.uilib.socket.util.c.b(this.c);
                if (socketModelB != null) {
                    try {
                        w<? extends SocketModel> messageHandler = MCMessageParserConfig.getMessageHandler(socketModelB.getType());
                        if (messageHandler == null || !messageHandler.a(socketModelB)) {
                            if (this.f9681a != null) {
                                this.f9681a.b(socketModelB);
                            }
                        }
                    } catch (Throwable th) {
                        cn.mucang.android.core.utils.t.d("SocketTag", "帧处理异常" + th.getMessage());
                        cn.mucang.android.jiakaoyi.framework.log.f.f("帧处理异常:" + th.getMessage() + " , " + this.f9682d);
                    }
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("帧获取为空: , " + this.f9682d);
                }
            } catch (Exception e2) {
                if (!this.b) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f("主动关闭socket:" + this.f9682d);
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.f("帧解析异常:" + this.f9682d + " , error = " + e2.getClass() + ":" + e2.getMessage());
                if (e2 instanceof MCException) {
                    this.f9683e++;
                    a(10L);
                    cn.mucang.android.jiakaoyi.framework.log.f.f(this.f9682d + ",自定义异常:" + e2.getMessage() + " , frameErrorCount = " + this.f9683e);
                    MCException mCException = (MCException) e2;
                    a aVar = this.f9681a;
                    if (aVar != null) {
                        aVar.a(mCException);
                    }
                    if (this.f9683e > 5 && aVar != null) {
                        close();
                        aVar.c("多次帧解析异常，重启连接:" + e2.getMessage());
                    }
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.f(this.f9682d + ",io连接异常:" + e2.getMessage());
                    a aVar2 = this.f9681a;
                    if (aVar2 != null) {
                        aVar2.c("帧解析异常:" + e2.getMessage());
                    }
                    close();
                }
            }
        }
    }
}
