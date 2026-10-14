package cn.mucang.android.jiakaoyi.signal.com.heartbeat;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.v;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f5301a = new AtomicInteger(0);
    private final AtomicInteger b = new AtomicInteger(0);
    private final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HeartBeatPolicy f5302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f5303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v f5304f;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.com.heartbeat.a$a, reason: collision with other inner class name */
    class RunnableC0123a implements Runnable {
        RunnableC0123a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!a.this.c.b() || a.this.d()) {
                a.this.c.c(a.this.f5301a.getAndIncrement());
            }
        }
    }

    public interface b {
        void a(int i);

        boolean b();

        void c(int i);

        String name();
    }

    public a(HeartBeatPolicy heartBeatPolicy, b bVar) {
        RunnableC0123a runnableC0123a = new RunnableC0123a();
        this.f5303e = runnableC0123a;
        this.c = bVar;
        if (heartBeatPolicy == null) {
            HeartBeatPolicy heartBeatPolicy2 = new HeartBeatPolicy();
            this.f5302d = heartBeatPolicy2;
            heartBeatPolicy2.intervalSeconds = 5;
            heartBeatPolicy2.stopBeatDiff = 5;
        } else {
            this.f5302d = heartBeatPolicy;
        }
        this.f5304f = new v(runnableC0123a, this.f5302d.intervalSeconds * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        int iAbs = Math.abs(this.f5301a.get() - this.b.get());
        if (iAbs < this.f5302d.stopBeatDiff) {
            return true;
        }
        f.f(this.c.name() + "心跳差异太大,重连,receiveIndex=" + this.b.get() + ",sendIndex=" + this.f5301a.get());
        i();
        this.c.a(iAbs);
        return false;
    }

    private void h() {
        f.f(this.c.name() + "开始心跳");
        this.f5304f.g();
    }

    public void e(HeartBeatPolicy heartBeatPolicy) {
        if (heartBeatPolicy != null) {
            HeartBeatPolicy heartBeatPolicy2 = this.f5302d;
            heartBeatPolicy2.stopBeatDiff = heartBeatPolicy.stopBeatDiff;
            heartBeatPolicy2.intervalSeconds = heartBeatPolicy.intervalSeconds;
            this.f5304f.f(heartBeatPolicy.intervalSeconds * 1000);
        }
    }

    public void f(int i) {
        this.b.getAndSet(i);
    }

    public void g() {
        i();
        h();
        this.b.set(0);
        this.f5301a.set(0);
    }

    public void i() {
        f.f(this.c.name() + "停止心跳,receiveIndex=" + this.b.get() + ",sendIndex=" + this.f5301a.get());
        this.f5304f.h();
        this.b.set(0);
        this.f5301a.set(0);
    }
}
