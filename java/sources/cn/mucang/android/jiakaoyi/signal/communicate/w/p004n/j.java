package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n;

import android.os.SystemClock;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.signal.center.model.d;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.AiUpdateException;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.monitor.ComMonitor;
import cn.mucang.android.jiakaoyi.signal.com.monitor.ComMonitorState;
import cn.mucang.android.jiakaoyi.signal.com.v.a;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.config.McChannelConfig;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.c;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.f;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.i;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.handle.gps.g;
import cn.mucang.android.jiakaoyi.signal.k.e0;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class j {
    private volatile a b;
    private e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final McChannelConfig f5511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ComName f5512e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a f5514g;
    protected volatile long i;
    protected f j;
    private boolean l;
    private List<IComConnectListener> m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5510a = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected volatile ComState f5513f = ComState.None;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final ExecutorService f5515h = Executors.newSingleThreadExecutor();
    private final b<ComState> n = new b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f5505a.n((ComState) obj);
        }
    };
    private volatile boolean o = false;
    private int k = 0;

    public j(McChannelConfig mcChannelConfig) {
        this.f5511d = mcChannelConfig;
        this.f5512e = mcChannelConfig.f5462f;
    }

    private void B(final boolean z) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f5509a.r(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (this.f5511d.f5463g) {
            this.k++;
        } else {
            this.k = 0;
        }
        if (this.k <= 3) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "重试");
            m.h().g(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5504a.t();
                }
            });
            return;
        }
        z(e() + "连接异常");
        u.h("信道" + e() + "连接断开");
    }

    private void I(Cmd cmd, byte[] bArr) {
        byte b = cmd.order;
        if (b == 34) {
            cn.mucang.android.jiakaoyi.framework.log.f.r("发送到" + e() + " ota分包数据,长度=" + bArr.length + " , 0x" + cmd.orderDesc);
            return;
        }
        if (b == Cmd.OrderSendRtcm.order || b == Cmd.SendRtcmToJKY.order) {
            g.g("长度=" + bArr.length);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.s(bArr, "发送到" + e() + " , 0x" + cmd.orderDesc);
    }

    private Exception M(Exception exc) {
        return exc;
    }

    private void N() {
        if (this.o || this.f5513f == ComState.Initialing || this.f5513f == ComState.ReInitialing || !this.f5511d.f5462f.isGps() || !(this.f5511d.b instanceof cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.g)) {
            return;
        }
        this.o = true;
        cn.mucang.android.jiakaoyi.framework.log.f.f("GPS通道发送时不可用，重新连接GPS通道");
        m.h().g(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5502a.x();
            }
        });
    }

    private void b() {
        cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "先关闭, 当前状态：" + this.f5513f.desc);
        this.f5511d.b.close();
        o.a(this.b);
        this.b = null;
        o.a(this.f5514g);
        this.f5514g = null;
        o.a(this.c);
        this.c = null;
        this.i = 0L;
    }

    private boolean h(ComState comState) {
        return comState == ComState.Valid || comState == ComState.UpdatingFirmware;
    }

    static /* synthetic */ boolean l(d dVar) {
        dVar.getCurrentPosition().f5282h = 1;
        dVar.d().M = (byte) 3;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(ComState comState) {
        if (this.f5513f == ComState.UpdatingFirmware && e0.j().o().booleanValue()) {
            return;
        }
        if (comState == ComState.AiUpdatingFirmware) {
            this.l = true;
            a();
            D();
        } else {
            H(comState);
            if (comState == ComState.ErrorCom) {
                D();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(String str) {
        ComMonitor.e(new ComMonitorState(this.f5513f, str, this.f5512e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(boolean z) {
        for (IComConnectListener iComConnectListener : this.m) {
            if (z) {
                iComConnectListener.a(this.f5512e);
            } else {
                iComConnectListener.b(this.f5512e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t() {
        try {
            a();
            A();
        } catch (Throwable unused) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "重试时打开失败，重试次数:" + this.k);
            u.d(new b(this), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(byte[] bArr, Cmd cmd) {
        try {
            if (bArr == null) {
                t.h("McCommunicator", "发送数据为空");
                return;
            }
            if (g()) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.i >= 10) {
                    this.i = jElapsedRealtime;
                } else {
                    SystemClock.sleep(10 - (jElapsedRealtime - this.i));
                    this.i = SystemClock.elapsedRealtime();
                }
                try {
                    I(cmd, bArr);
                } catch (Exception unused) {
                }
                d(cmd, bArr);
                return;
            }
            t.h("McCommunicator", "信道不可用");
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "发送时不可用，发送的order:0x" + cmd.orderDesc);
            N();
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "数据发送失败,状态:" + this.f5513f.desc + ",命令:0x" + cmd.orderDesc + ",错误:" + th);
            if ((th instanceof IOException) && this.f5513f == ComState.Valid) {
                a();
                m.h().r(this.f5512e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x() {
        try {
            try {
                A();
            } finally {
                this.o = false;
            }
        } catch (Throwable unused) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "重试时打开失败，重试次数:" + this.k);
        }
    }

    private void y(ComState comState) {
        if (this.m != null) {
            if (!h(this.f5513f) && h(comState)) {
                B(true);
            } else {
                if (!h(this.f5513f) || h(comState)) {
                    return;
                }
                B(false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0056  */
    public void A() throws Exception {
        long j;
        cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "打开");
        ComState comState = this.f5513f;
        ComState comState2 = ComState.Initialing;
        if (comState == comState2 || this.f5513f == ComState.Valid || this.f5513f == ComState.UpdatingFirmware) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "的状态:" + this.f5513f.desc);
            return;
        }
        b();
        H(comState2);
        cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "正在打开");
        try {
            McChannelConfig mcChannelConfig = this.f5511d;
            e eVar = mcChannelConfig.b;
            if (eVar instanceof c) {
                j = 0;
            } else if (eVar instanceof i) {
                j = 30000;
            } else if (ComName.GpsNet.equals(mcChannelConfig.f5462f) && (this.f5511d.b instanceof cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.g)) {
                j = 10000;
            } else {
                j = 0;
            }
            if (j <= 0 || this.f5510a) {
                c();
                break;
            }
            this.f5510a = true;
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                try {
                    c();
                    break;
                } catch (Throwable th) {
                    if (System.currentTimeMillis() - jCurrentTimeMillis > j) {
                        throw th;
                    }
                    b();
                    SystemClock.sleep(3000L);
                }
            }
            try {
                f fVar = this.j;
                if (fVar != null) {
                    fVar.a(this.b.t());
                }
                try {
                    J();
                    cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "打开成功");
                    H(ComState.Valid);
                    this.k = 0;
                    this.l = false;
                } catch (Exception e2) {
                    G(e2);
                    if (e2 instanceof AiUpdateException) {
                        this.l = true;
                        SystemClock.sleep(100L);
                        A();
                    } else {
                        cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "打开失败:" + e2.getLocalizedMessage());
                        M(e2);
                        throw e2;
                    }
                }
            } catch (Exception e3) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "check失败:" + e3);
                G(e3);
                Exception comException = new ComException(this.f5512e, this.f5513f, new Exception("初始化失败:没有数据"));
                M(comException);
                throw comException;
            }
        } catch (Exception e4) {
            b();
            G(e4);
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "初始化失败:" + e4);
            if (this.l) {
                SystemClock.sleep(3000L);
                A();
            } else {
                if (e4 instanceof ComException) {
                    M(e4);
                    throw e4;
                }
                Exception comException2 = new ComException(this.f5512e, this.f5513f, e4, e4.getLocalizedMessage());
                M(comException2);
                throw comException2;
            }
        }
    }

    public void C() {
        a();
    }

    public void E(final Cmd cmd, final byte[] bArr) {
        this.f5515h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f5508a.v(bArr, cmd);
            }
        });
    }

    public void F(List<IComConnectListener> list) {
        this.m = list;
    }

    protected void G(Throwable th) {
        if (th instanceof ComException) {
            H(((ComException) th).state);
        } else if (this.f5513f == ComState.Valid || this.f5513f == ComState.UpdatingFirmware) {
            H(ComState.ErrorCom);
        } else {
            H(ComState.ErrorComBroken);
        }
    }

    protected synchronized void H(ComState comState) {
        if (comState != null) {
            y(comState);
            this.f5513f = comState;
            ComName comName = this.f5512e;
            if (comName == ComName.GpsNet || comName == ComName.MasterSerial || comName == ComName.BloothClient) {
                if (this.f5513f == ComState.Valid) {
                    GpsAnalysis.f().e(true);
                } else if (this.f5513f == ComState.ErrorCom || this.f5513f == ComState.ErrorComBroken || this.f5513f == ComState.ErrorAuthorise || this.f5513f == ComState.ErrorInitial || this.f5513f == ComState.ErrorSplit || this.f5513f == ComState.ErrorUpdateFirmware) {
                    GpsAnalysis.f().e(false);
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.f("设置" + this.f5512e + "的状态:" + comState.desc);
        }
    }

    protected void J() throws Exception {
        this.c.f(this.b, this.n);
    }

    public synchronized boolean K() {
        if (this.f5513f != ComState.UpdatingFirmware) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("修改通信为正常状态");
        H(ComState.Valid);
        return true;
    }

    public synchronized boolean L() {
        if (this.f5513f != ComState.Valid || !i()) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("修改通信为固件升级状态");
        H(ComState.UpdatingFirmware);
        return true;
    }

    public void a() {
        H(ComState.None);
        b();
        if (this.f5511d.f5462f.isGps()) {
            cn.mucang.android.jiakaoyi.signal.c.d.v(new cn.mucang.android.jiakaoyi.signal.c.d.a() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.f
                @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
                public final boolean a(d dVar) {
                    return j.l(dVar);
                }
            }, true);
        }
    }

    protected void c() throws Exception {
        this.b = this.f5511d.f5459a;
        this.b.init();
        this.b.b(true);
        McChannelConfig mcChannelConfig = this.f5511d;
        this.j = mcChannelConfig.f5460d;
        this.c = mcChannelConfig.b;
    }

    protected void d(Cmd cmd, byte[] bArr) throws Throwable {
        if (this.c == null) {
            t.h("McCommunicator", "信道" + e() + "不支持发送数据, 指令类型" + ((int) cmd.order));
            return;
        }
        if (!j(cmd)) {
            u.h("信道" + e() + "不支持指令" + ((int) cmd.order));
            return;
        }
        if (this.f5513f == ComState.UpdatingFirmware && (Cmd.isSendOTAOrder(cmd.order) || Cmd.SendHeart == cmd)) {
            try {
                this.c.r(cmd.order, bArr);
                return;
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(e() + " OTA消息发送失败");
                if (th instanceof IOException) {
                    throw th;
                }
            }
        }
        if (this.f5513f != ComState.Valid) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "消息发送失败,当前状态:" + this.f5513f.desc);
            return;
        }
        try {
            this.c.r(cmd.order, bArr);
        } catch (Throwable th2) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(e() + "消息发送失败");
            if (th2 instanceof IOException) {
                throw th2;
            }
        }
    }

    public ComName e() {
        return this.f5512e;
    }

    public synchronized ComState f() {
        return this.f5513f;
    }

    public boolean g() {
        return this.f5513f == ComState.Valid || this.f5513f == ComState.UpdatingFirmware;
    }

    public boolean i() {
        return this.f5511d.f5461e;
    }

    public boolean j(Cmd cmd) {
        return this.f5511d.c.a(cmd);
    }

    protected void z(final String str) {
        if (this.f5511d.f5463g) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5506a.p(str);
                }
            });
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("通信配置是连接错误不弹窗，10秒后重试");
        this.k = 0;
        u.d(new b(this), 30000L);
    }
}
