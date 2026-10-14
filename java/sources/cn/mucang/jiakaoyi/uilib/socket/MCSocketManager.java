package cn.mucang.jiakaoyi.uilib.socket;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.jiakaoyi.uilib.socket.model.DiffDataModel;
import cn.mucang.jiakaoyi.uilib.socket.parser.excption.MCException;
import cn.mucang.jiakaoyi.uilib.socket.util.NetworkErrorUtil;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class MCSocketManager implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f9630a;
    private volatile boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile r f9631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<o> f9632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f9633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConnectErrorType f9635h;
    private HandlerThread i;
    private Handler j;
    private volatile boolean k;
    private volatile int l;
    private final GlobalNetWorkMonitor.a m;
    private final Runnable n;
    private final Runnable o;
    private final p.a p;

    public enum ConnectErrorType {
        Network,
        Service
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MCSocketManager.this.f9634g = 0;
            MCSocketManager.this.I(1000L);
            GlobalNetWorkMonitor.e(MCSocketManager.this.m);
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 6) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(MCSocketManager.this.N() + "开始执行：" + message.what);
            }
            if (message.obj instanceof Runnable) {
                MCSocketManager.this.k = true;
                try {
                    ((Runnable) message.obj).run();
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.f(MCSocketManager.this.N() + "socket执行失败：" + th.getMessage() + ", action = " + message.what);
                }
                MCSocketManager.this.k = false;
            }
            if (message.what != 6) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(MCSocketManager.this.N() + "结束执行：" + message.what);
            }
        }
    }

    class c implements p.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e(SocketModel socketModel) {
            MCSocketManager.this.c(socketModel);
        }

        @Override // cn.mucang.jiakaoyi.uilib.socket.p.a
        public void a(MCException mCException) {
            cn.mucang.android.core.utils.t.a("MCSocketManager", "帧解析异常:" + mCException.getMessage());
        }

        @Override // cn.mucang.jiakaoyi.uilib.socket.p.a
        public void b(final SocketModel socketModel) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f9639a.e(socketModel);
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.socket.p.a
        public void c(String str) {
            cn.mucang.android.core.utils.u.c(new n(MCSocketManager.this));
            MCSocketManager.this.i("onConnectException:" + str);
            MCSocketManager.this.I(1000L);
        }
    }

    public MCSocketManager() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D() {
        if (!m()) {
            R();
            this.f9633f = false;
            return;
        }
        this.f9633f = false;
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "已经成功start" + g());
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0039 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0030, B:8:0x0039), top: B:14:0x0004 }] */
    private synchronized void J(Runnable runnable, int i) {
        Handler handler;
        if (i != 6) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "执行动作：" + i + g() + ", handler=" + this.j);
            this.l = i;
            l();
            handler = this.j;
            if (handler != null) {
                handler.sendMessage(Message.obtain(handler, i, runnable));
            }
        } else {
            this.l = i;
            l();
            handler = this.j;
            if (handler != null) {
                handler.sendMessage(Message.obtain(handler, i, runnable));
            }
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String N() {
        return this.c ? "GpsService" : "BusinessService";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        String str;
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            i("showConnectError");
            return;
        }
        NetworkErrorUtil.DialogGrade dialogGrade = NetworkErrorUtil.DialogGrade.High;
        ConnectErrorType connectErrorType = this.f9635h;
        if (connectErrorType == ConnectErrorType.Network) {
            str = "网络连接异常，请检查设备网络状态";
        } else if (connectErrorType == ConnectErrorType.Service) {
            dialogGrade = NetworkErrorUtil.DialogGrade.Middle;
            str = "与服务器连接异常，请联系教练";
        } else {
            str = "网络连接异常，请检查网络或者网络权限是否打开";
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "显示连接错误弹窗:" + str + g());
        NetworkErrorUtil.c().j(str, this.n, dialogGrade);
        GlobalNetWorkMonitor.d(this.m);
    }

    private void R() {
        if (this.f9630a) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "开始连接, 但已经销毁");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "开始连接" + g());
        while (!this.f9630a && n0.e(DeviceUtils.c()) && !AppUtils.e() && !AppUtils.j()) {
            try {
                cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "设备号为空" + g());
                SystemClock.sleep(1000L);
            } catch (Throwable th) {
                cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "连接失败：" + q0.d(th) + " ， retryCount=" + this.f9634g + g());
                j();
                if ((th instanceof ConnectException) && x.e() && JNet.e()) {
                    I(3000L);
                    cn.mucang.android.jiakaoyi.framework.log.f.f("服务器在重启，3秒后重试");
                    return;
                }
                if (x.e()) {
                    ConnectErrorType connectErrorType = this.f9635h;
                    ConnectErrorType connectErrorType2 = ConnectErrorType.Service;
                    if (connectErrorType != connectErrorType2) {
                        this.f9635h = connectErrorType2;
                        this.f9634g = 0;
                    }
                } else {
                    ConnectErrorType connectErrorType3 = this.f9635h;
                    ConnectErrorType connectErrorType4 = ConnectErrorType.Network;
                    if (connectErrorType3 != connectErrorType4) {
                        this.f9635h = connectErrorType4;
                        this.f9634g = 0;
                    }
                }
                int i = this.f9634g + 1;
                this.f9634g = i;
                if (i > 5) {
                    if (i == 6) {
                        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9672a.P();
                            }
                        });
                        return;
                    }
                    return;
                }
                cn.mucang.android.core.utils.u.c(new n(this));
                if (th instanceof ApiException) {
                    cn.mucang.android.core.utils.u.h(th.getApiResponse().getMessage());
                } else if ((th instanceof UnknownHostException) || th.getClass().getName().contains("GaiException")) {
                    cn.mucang.android.core.utils.u.h("网络连接异常");
                }
                I(3000L);
                return;
            }
        }
        r rVar = new r(this.c, this.p, this.o);
        rVar.t();
        this.f9631d = rVar;
        this.f9634g = 0;
        cn.mucang.android.core.utils.u.c(new m(this));
    }

    private String g() {
        return ", isHandling = " + this.k + " , action = " + this.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        r rVar = this.f9631d;
        this.f9631d = null;
        if (rVar != null) {
            rVar.c();
        }
    }

    private synchronized void l() {
        HandlerThread handlerThread = this.i;
        if (handlerThread == null || !handlerThread.isAlive()) {
            HandlerThread handlerThread2 = new HandlerThread(this.c ? "McGpsTd" : "McBusinessTd");
            this.i = handlerThread2;
            handlerThread2.start();
            this.j = new b(this.i.getLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(long j) {
        try {
            j();
            if (j > 0) {
                SystemClock.sleep(j);
            }
            Q();
        } catch (Throwable th) {
            try {
                cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "重试错误：" + th.getLocalizedMessage() + g());
            } finally {
                this.b = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t() {
        i("来自socket的重启");
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(String str, int i) {
        r rVar = this.f9631d;
        if (rVar == null) {
            I(1000L);
            return;
        }
        try {
            rVar.n(str, i);
            cn.mucang.android.core.utils.u.c(new m(this));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x() {
        j();
        synchronized (this.f9632e) {
            this.f9632e.clear();
        }
    }

    public void E(final String str, final int i) {
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f9675a.v(str, i);
            }
        }, 3);
    }

    public void F(o oVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("注册Socket监听:" + oVar);
        synchronized (this.f9632e) {
            if (oVar != null) {
                if (!this.f9632e.contains(oVar)) {
                    this.f9632e.add(oVar);
                }
            }
        }
    }

    public void G() {
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "回收" + g());
        this.f9630a = true;
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f9676a.x();
            }
        }, 5);
    }

    public synchronized void H() {
        this.f9630a = true;
        this.f9633f = true;
        this.b = true;
        Handler handler = this.j;
        if (handler != null) {
            handler.getLooper().quit();
            this.i = null;
            this.j = null;
        }
        this.f9633f = false;
        this.b = false;
        this.f9630a = false;
        i("resetAndStart");
        Q();
    }

    void I(final long j) {
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "重连" + g());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f9668a.z(j);
            }
        });
    }

    public boolean K(final byte[] bArr) {
        final r rVar = this.f9631d;
        if (!m() || rVar == null || !rVar.b()) {
            return false;
        }
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.j
            @Override // java.lang.Runnable
            public final void run() {
                rVar.p(bArr);
            }
        }, 6);
        return true;
    }

    boolean L(final byte b2, final byte[] bArr) {
        final r rVar = this.f9631d;
        if (!m() || rVar == null || !rVar.b()) {
            return false;
        }
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.g
            @Override // java.lang.Runnable
            public final void run() {
                rVar.q(b2, bArr);
            }
        }, 6);
        return true;
    }

    public boolean M(int i, boolean z) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        return K(s.c(byteBufferAllocate.array(), z ? (byte) 99 : (byte) 96));
    }

    public void O(int i) {
        r rVar = this.f9631d;
        if (rVar != null) {
            rVar.s(i);
        }
    }

    public synchronized void Q() {
        this.f9630a = false;
        if (this.f9633f) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "已经在开始" + g());
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "开始" + g());
        this.f9633f = true;
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f9666a.D();
            }
        }, 1);
    }

    public void S(o oVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("注销Socket监听:" + oVar);
        if (oVar != null) {
            synchronized (this.f9632e) {
                this.f9632e.remove(oVar);
            }
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void a() {
        synchronized (this.f9632e) {
            Iterator<o> it = this.f9632e.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void c(SocketModel socketModel) {
        synchronized (this.f9632e) {
            for (o oVar : this.f9632e) {
                if (!(socketModel instanceof DiffDataModel)) {
                    oVar.c(socketModel);
                } else if (this.c) {
                    oVar.c(socketModel);
                }
            }
        }
    }

    boolean h() {
        return this.f9631d != null && this.f9631d.j();
    }

    public void i(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + " " + str + " ,关闭" + g());
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f9669a.j();
            }
        }, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public synchronized void z(final long j) {
        if (this.b) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "已经在重连" + g());
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(N() + "开始重连" + g());
        this.b = true;
        J(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f9673a.p(j);
            }
        }, 2);
    }

    public boolean m() {
        return this.f9631d != null;
    }

    @Override // cn.mucang.jiakaoyi.uilib.socket.o
    public void onConnect() {
        synchronized (this.f9632e) {
            Iterator<o> it = this.f9632e.iterator();
            while (it.hasNext()) {
                it.next().onConnect();
            }
        }
    }

    public MCSocketManager(boolean z) {
        this.f9632e = new CopyOnWriteArrayList();
        this.f9633f = false;
        this.m = new GlobalNetWorkMonitor.a() { // from class: cn.mucang.jiakaoyi.uilib.socket.f
            @Override // cn.mucang.android.jiakaoyi.framework.utils.GlobalNetWorkMonitor.a
            public final void a() {
                NetworkErrorUtil.c().b();
            }
        };
        this.n = new a();
        this.o = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f9667a.t();
            }
        };
        this.p = new c();
        this.c = z;
        this.f9630a = false;
        this.b = false;
        this.f9634g = 0;
        this.k = false;
    }
}
