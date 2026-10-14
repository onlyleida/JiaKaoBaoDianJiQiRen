package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.b.c;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.heartbeat.HeartBeatPolicy;
import cn.mucang.android.jiakaoyi.signal.com.p;
import cn.mucang.android.jiakaoyi.signal.com.u.b.e;
import cn.mucang.android.jiakaoyi.signal.com.x.b;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.d.g;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class i extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g f5527f = new g();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.com.heartbeat.a f5528g = new cn.mucang.android.jiakaoyi.signal.com.heartbeat.a(new HeartBeatPolicy(1, 100000), new a(this));

    class a implements cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b {
        a(i iVar) {
        }

        static /* synthetic */ byte[] d() {
            v vVar = new v(true);
            vVar.f(Integer.parseInt(new SimpleDateFormat("yyMMdd", Locale.CHINA).format(Long.valueOf(System.currentTimeMillis()))));
            vVar.e(Float.parseFloat(new SimpleDateFormat("HHmmss.SSS", Locale.CHINA).format(Long.valueOf(System.currentTimeMillis()))));
            vVar.c((byte) d.f());
            int iD = d.d();
            if (iD == -1) {
                iD = 0;
            }
            vVar.c((byte) iD);
            vVar.c((byte) -1);
            vVar.c(c.c() ? (byte) 1 : (byte) 0);
            return vVar.b();
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void a(int i) {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public boolean b() {
            return false;
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public void c(int i) {
            m.h().P(Cmd.SendHeart, new b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.k.b
                @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
                public final byte[] a() {
                    return i.a.d();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.signal.com.heartbeat.a.b
        public String name() {
            return "主控";
        }
    }

    private void j(cn.mucang.android.jiakaoyi.signal.com.v.b bVar, int i, byte[] bArr) {
        f.s(bArr, "收到 " + bVar.w() + ", 0x" + Integer.toHexString(i & 255));
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d
    protected boolean c(cn.mucang.android.jiakaoyi.signal.com.v.b bVar) throws Exception {
        cn.mucang.android.jiakaoyi.signal.com.t.a aVarA = ((cn.mucang.android.jiakaoyi.signal.com.t.b) this.f5522a).a(bVar.t(), i(), bVar.o());
        if (aVarA != null && aVarA.c) {
            r rVar = new r(aVarA.b, true);
            j(bVar, aVarA.f5324a, aVarA.b);
            if (bVar.isRunning()) {
                this.f5527f.a(aVarA.f5324a, rVar);
            }
        }
        return aVarA != null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.d, cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.f5528g.i();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e
    public void f(cn.mucang.android.jiakaoyi.signal.com.v.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) throws Exception {
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
        outputStreamM.write(new e(cVar.b(), (short) 0).b(bArrB, 0, bArrB.length, 153, false, (short) 0, false));
        outputStreamM.flush();
        f.s(bArrB, "发送到主控网口 , 0x" + Integer.toHexString(153));
        try {
            cn.mucang.android.jiakaoyi.signal.com.t.a aVarA = cVar.a(inputStreamT, 2000, bVar.o());
            if (aVarA == null || !aVarA.c) {
                f.f("授权失败");
                throw new ComException(bVar.o(), ComState.ErrorAuthorise, new Exception("授权失败"));
            }
            r rVar = new r(aVarA.b, cVar.b());
            byte bE = rVar.e();
            if (bE != 0) {
                f.f("授权失败, 错误码:" + ((int) bE));
                throw new ComException(bVar.o(), ComState.ErrorAuthorise, new Exception("授权失败, 错误码:" + ((int) bE)));
            }
            int iL = rVar.l();
            int iL2 = rVar.l();
            if (iL > 0 || iL2 > 0) {
                p.c(iL == 514 ? 2 : 1);
                this.f5522a = new cn.mucang.android.jiakaoyi.signal.com.t.c.c(iL2, true);
                this.b = new cn.mucang.android.jiakaoyi.signal.com.x.e.d(new cn.mucang.android.jiakaoyi.signal.com.x.e.c(new cn.mucang.android.jiakaoyi.signal.com.x.d.a(new cn.mucang.android.jiakaoyi.signal.com.x.e.e(outputStreamM), true, bVar.v())), new e(this.f5522a.b(), (short) iL2), bVar.o());
                this.f5528g.g();
                h(bVar, bVar2);
                return;
            }
            f.f("授权失败:version=" + iL + ",token=" + iL2);
            throw new RuntimeException("授权失败:version=" + iL + ",token=" + iL2);
        } catch (Throwable th) {
            throw new ComException(bVar.o(), ComState.ErrorAuthorise, th);
        }
    }
}
