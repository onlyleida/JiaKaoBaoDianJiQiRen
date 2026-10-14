package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.AiUpdateException;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.heartbeat.HeartBeatPolicy;
import cn.mucang.android.jiakaoyi.signal.com.heartbeat.b;
import cn.mucang.android.jiakaoyi.signal.com.x.e.d;
import cn.mucang.android.jiakaoyi.signal.com.x.e.e;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.d.f;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class c extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final f f5518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.com.heartbeat.a f5519g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f5520h;

    class a implements cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void a(int i) {
            c.this.f5520h = true;
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public /* synthetic */ boolean b() {
            return b.a(this);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void c(int i) {
            v vVar = new v(true);
            vVar.f(i);
            m.h().Q(Cmd.AiHeartBeat, vVar.b());
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public String name() {
            return "AI";
        }
    }

    public c() {
        cn.mucang.android.jiakaoyi.signal.com.heartbeat.a aVarK = k();
        this.f5519g = aVarK;
        this.f5518f = new f(aVarK);
    }

    private cn.mucang.android.jiakaoyi.signal.com.heartbeat.a k() {
        return new cn.mucang.android.jiakaoyi.signal.com.heartbeat.a(new HeartBeatPolicy(1, 5), new a());
    }

    private void l(cn.mucang.android.jiakaoyi.signal.com.v.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
        this.b = new d(new cn.mucang.android.jiakaoyi.signal.com.x.e.c(new cn.mucang.android.jiakaoyi.signal.com.x.d.a(new e(bVar.m()), true, bVar.v())), new cn.mucang.android.jiakaoyi.signal.com.u.b.a(), bVar.o());
        this.f5522a = new cn.mucang.android.jiakaoyi.signal.com.t.c.a();
        this.f5518f.g(1);
        this.f5518f.f();
        h(bVar, bVar2);
    }

    private void n(cn.mucang.android.jiakaoyi.signal.com.v.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
        if (bVar2 != null) {
            bVar2.callback(ComState.Authorising);
        }
        OutputStream outputStreamM = bVar.m();
        InputStream inputStreamT = bVar.t();
        v vVar = new v(true);
        vVar.h((short) 257);
        vVar.h((short) (Math.random() * 65536.0d));
        byte[] bArrB = vVar.b();
        cn.mucang.android.jiakaoyi.signal.com.t.c.c cVar = new cn.mucang.android.jiakaoyi.signal.com.t.c.c(0, false);
        outputStreamM.write(new cn.mucang.android.jiakaoyi.signal.com.u.b.e(cVar.b(), (short) 0).b(bArrB, 0, bArrB.length, Cmd.AiLogin.order, false, (short) 0, false));
        outputStreamM.flush();
        try {
            cn.mucang.android.jiakaoyi.signal.com.t.a aVarA = cVar.a(inputStreamT, 2000, bVar.o());
            if (aVarA == null || aVarA.f5324a != 161 || !aVarA.c) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("授权失败");
                throw new ComException(bVar.o(), ComState.ErrorAuthorise, new Exception("授权失败"));
            }
            r rVar = new r(aVarA.b, cVar.b());
            byte bE = rVar.e();
            if (bE != 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("授权失败, 错误码:" + ((int) bE));
                throw new ComException(bVar.o(), ComState.ErrorAuthorise, new Exception("授权失败, 错误码:" + ((int) bE)));
            }
            int iL = rVar.l();
            int iL2 = rVar.l();
            cn.mucang.android.jiakaoyi.framework.log.f.f("ai p_version=" + iL);
            if (iL > 0 || iL2 > 0) {
                this.f5522a = new cn.mucang.android.jiakaoyi.signal.com.t.c.c(iL2, true);
                this.b = new d(new cn.mucang.android.jiakaoyi.signal.com.x.e.c(new cn.mucang.android.jiakaoyi.signal.com.x.d.a(new e(outputStreamM), true, bVar.v())), new cn.mucang.android.jiakaoyi.signal.com.u.b.e(this.f5522a.b(), (short) iL2), bVar.o());
                this.f5518f.g(2);
                this.f5519g.g();
                this.f5520h = false;
                this.f5518f.f();
                h(bVar, bVar2);
                cn.mucang.android.jiakaoyi.framework.log.f.f("发送Ai启动成功的消息");
                LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.ota.d.class).l(new cn.mucang.android.jiakaoyi.signal.ai.ota.d());
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.f("授权失败:version=" + iL + ",token=" + iL2);
            throw new RuntimeException("授权失败:version=" + iL + ",token=" + iL2);
        } catch (Throwable th) {
            throw new ComException(bVar.o(), ComState.ErrorAuthorise, th);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected boolean c(cn.mucang.android.jiakaoyi.signal.com.v.b bVar) throws Exception {
        if (this.f5520h) {
            this.f5520h = false;
            if (this.f5518f.f5549a) {
                throw new AiUpdateException();
            }
            throw new ComException(bVar.o(), ComState.ErrorComBroken, "心跳差异过大，关掉连接");
        }
        cn.mucang.android.jiakaoyi.signal.com.t.a aVarA = ((cn.mucang.android.jiakaoyi.signal.com.t.b) this.f5522a).a(bVar.t(), i(), bVar.o());
        if (aVarA != null && aVarA.c) {
            r rVar = new r(aVarA.b, true);
            if (bVar.isRunning()) {
                this.f5518f.a(aVarA.f5324a, rVar);
            }
        }
        return aVarA != null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d, cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.f5519g.i();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    public ComState d() {
        return this.f5518f.f5549a ? ComState.AiUpdatingFirmware : super.d();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e
    public void f(cn.mucang.android.jiakaoyi.signal.com.v.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
        try {
            cn.mucang.android.jiakaoyi.signal.com.t.a aVarA = new cn.mucang.android.jiakaoyi.signal.com.t.c.a().a(bVar.t(), 2000, bVar.o());
            if (aVarA != null && aVarA.c) {
                l(bVar, bVar2);
                return;
            }
        } catch (Throwable th) {
            if (!(th instanceof SocketTimeoutException)) {
                if (!this.f5518f.f5549a) {
                    throw th;
                }
                SystemClock.sleep(3000L);
                throw new AiUpdateException();
            }
        }
        try {
            n(bVar, bVar2);
        } catch (Throwable th2) {
            if (!this.f5518f.f5549a) {
                throw th2;
            }
            SystemClock.sleep(3000L);
            throw new AiUpdateException();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected int i() {
        return n.a() ? 86400000 : 4000;
    }
}
