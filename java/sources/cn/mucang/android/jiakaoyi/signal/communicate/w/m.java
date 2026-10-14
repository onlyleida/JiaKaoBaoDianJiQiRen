package cn.mucang.android.jiakaoyi.signal.communicate.w;

import android.os.SystemClock;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.monitor.ComMonitor;
import cn.mucang.android.jiakaoyi.signal.com.monitor.ComMonitorState;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ExecutorService f5495h = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5496a;
    private cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.b b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile ComStateListener.State f5497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<ComStateListener> f5498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> f5499f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<IComConnectListener> f5500g;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final m f5501a = new m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(ComName comName) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("开始重启:" + comName);
        y(comName);
        SystemClock.sleep(100L);
        E(comName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(boolean z) {
        if (this.c) {
            return;
        }
        boolean z2 = true;
        this.c = true;
        try {
            this.b = cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.n.a.a();
            if (z || this.f5499f.size() == 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("先清空再初始化,force=" + z + ",size=" + this.f5499f.size());
                d();
                synchronized (this.f5496a) {
                    this.f5499f.clear();
                }
                this.b.b(this.f5499f, this.f5500g, this.f5496a);
                I(ComStateListener.State.Valid, null);
            } else if (m()) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("所有通道都是合法的,force=false,size=" + this.f5499f.size());
                I(ComStateListener.State.Valid, null);
            } else if (this.f5499f.size() > 0) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("选择初始化,force=false,size=" + this.f5499f.size());
                this.b.b(this.f5499f, this.f5500g, this.f5496a);
                I(ComStateListener.State.Valid, null);
            }
            synchronized (this.f5496a) {
                if (this.f5499f.size() < 1 || ComName.MasterSerial != this.f5499f.get(0).f5512e) {
                    z2 = false;
                }
            }
            if (z2) {
                McCommandManager.f5380a.f();
            }
        } catch (Throwable th) {
            try {
                cn.mucang.android.jiakaoyi.framework.log.f.f("McCommunicatorManager:连接初始化失败, force=" + z + ", error=" + q0.d(th));
                I(ComStateListener.State.Error, th);
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5485a.v(th);
                    }
                });
            } finally {
                this.c = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(IComConnectListener iComConnectListener) {
        this.f5500g.remove(iComConnectListener);
    }

    private synchronized void I(final ComStateListener.State state, final Throwable th) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f5484a.t(state, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ArrayList arrayList;
        cn.mucang.android.jiakaoyi.framework.log.f.f("McCommunicatorManager:清空连接");
        if (cn.mucang.android.core.utils.g.b(this.f5499f)) {
            return;
        }
        synchronized (this.f5496a) {
            arrayList = new ArrayList(this.f5499f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j) it.next()).a();
        }
        this.c = false;
        synchronized (this.f5496a) {
            this.f5499f.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void z(ComName comName) {
        ArrayList<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> arrayList;
        if (cn.mucang.android.core.utils.g.b(this.f5499f)) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("信道列表为空，终止销毁");
            return;
        }
        synchronized (this.f5496a) {
            arrayList = new ArrayList(this.f5499f);
        }
        for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : arrayList) {
            if (comName == jVar.e()) {
                jVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void F(final ComName comName) {
        ArrayList<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> arrayList;
        if (cn.mucang.android.core.utils.g.b(this.f5499f)) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("信道列表为空，启动终止");
            return;
        }
        synchronized (this.f5496a) {
            arrayList = new ArrayList(this.f5499f);
        }
        for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : arrayList) {
            if (comName.equals(jVar.e())) {
                try {
                    jVar.a();
                    jVar.A();
                    I(ComStateListener.State.Valid, null);
                } catch (Exception e2) {
                    jVar.a();
                    cn.mucang.android.jiakaoyi.framework.log.f.f("McCommunicatorManager:连接初始化失败, error=" + e2.getLocalizedMessage());
                    I(ComStateListener.State.Error, e2);
                    if (jVar.f5511d.f5463g) {
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.i
                            @Override // java.lang.Runnable
                            public final void run() {
                                ComMonitor.e(new ComMonitorState(ComState.ErrorCom, "" + e2.getMessage(), comName));
                            }
                        });
                    } else {
                        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.j
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f5492a.r(comName);
                            }
                        }, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                    }
                }
            }
        }
    }

    public static m h() {
        return b.f5501a;
    }

    public static boolean l() {
        i0.b("__key_ai_open", false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(ComStateListener.State state, Throwable th) {
        this.f5497d = state;
        Iterator<ComStateListener> it = this.f5498e.iterator();
        while (it.hasNext()) {
            it.next().a(state, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(Throwable th) {
        ComName name = th instanceof ComException ? ((ComException) th).getName() : null;
        if (ComName.AiNet == name) {
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5494a.R();
                }
            }, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
            return;
        }
        ComMonitor.e(new ComMonitorState(ComState.ErrorCom, "" + th.getMessage(), name));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(IComConnectListener iComConnectListener) {
        this.f5500g.add(iComConnectListener);
    }

    public void J() {
        if (this.c) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("通信重连");
        L();
        R();
    }

    public void K(final IComConnectListener iComConnectListener) {
        if (iComConnectListener == null || this.f5500g.contains(iComConnectListener)) {
            return;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f5489a.x(iComConnectListener);
            }
        });
    }

    public void L() {
        f5495h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f5487a.d();
            }
        });
    }

    public void M(final ComName comName) {
        f5495h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f5493a.z(comName);
            }
        });
    }

    public synchronized void N(ComStateListener comStateListener) {
        this.f5498e.remove(comStateListener);
    }

    public void O(final ComName comName) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("重启:" + comName);
        f5495h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5483a.B(comName);
            }
        });
    }

    public boolean P(Cmd cmd, cn.mucang.android.jiakaoyi.signal.com.x.b bVar) {
        return Q(cmd, bVar.a());
    }

    public boolean Q(Cmd cmd, byte[] bArr) {
        synchronized (this.f5496a) {
            if (!cn.mucang.android.core.utils.g.b(this.f5499f)) {
                for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : this.f5499f) {
                    if (jVar.j(cmd)) {
                        jVar.E(cmd, bArr);
                        break;
                    }
                }
                return true;
            }
            if (cmd != Cmd.OrderSendRtcm) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("McCommunicatorManager:发送指令0x" + Integer.toHexString(cmd.order) + "(" + cmd.desc + ")失败,communicator为空");
            }
            return false;
        }
    }

    public void R() {
        T(false);
    }

    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public void r(final ComName comName) {
        f5495h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f5490a.F(comName);
            }
        });
    }

    public void T(final boolean z) {
        if (this.c) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("McCommunicatorManager:开始连接, force=" + z);
        f5495h.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f5486a.D(z);
            }
        });
    }

    public void U(final IComConnectListener iComConnectListener) {
        if (iComConnectListener != null) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5488a.H(iComConnectListener);
                }
            });
        }
    }

    public synchronized void a(ComStateListener comStateListener) {
        if (this.f5498e.contains(comStateListener)) {
            return;
        }
        this.f5498e.add(comStateListener);
    }

    public boolean b() {
        if (cn.mucang.android.core.utils.g.b(this.f5499f) || this.b == null) {
            return false;
        }
        synchronized (this.f5496a) {
            int i = 0;
            for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : this.f5499f) {
                if (!jVar.g()) {
                    if (jVar.f5511d.f5463g) {
                        return false;
                    }
                    i++;
                }
            }
            return this.b.a() == this.f5499f.size() - i;
        }
    }

    public boolean c(ComName comName) {
        synchronized (this.f5496a) {
            Iterator<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> it = this.f5499f.iterator();
            while (it.hasNext()) {
                if (it.next().f5512e == comName) {
                    return true;
                }
            }
            return false;
        }
    }

    public void g(Runnable runnable) {
        f5495h.execute(runnable);
    }

    public cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j i() {
        if (cn.mucang.android.core.utils.g.b(this.f5499f)) {
            return null;
        }
        synchronized (this.f5496a) {
            for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : this.f5499f) {
                if (jVar.i()) {
                    return jVar;
                }
            }
            return null;
        }
    }

    public ComState j(ComName comName) {
        synchronized (this.f5496a) {
            for (cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVar : this.f5499f) {
                if (jVar.f5512e == comName) {
                    return jVar.f();
                }
            }
            return ComState.None;
        }
    }

    public ComStateListener.State k() {
        return this.f5497d;
    }

    public boolean m() {
        if (cn.mucang.android.core.utils.g.b(this.f5499f) || this.b == null) {
            return false;
        }
        synchronized (this.f5496a) {
            if (this.b.a() != this.f5499f.size()) {
                return false;
            }
            Iterator<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> it = this.f5499f.iterator();
            while (it.hasNext()) {
                if (!it.next().g()) {
                    return false;
                }
            }
            return true;
        }
    }

    public boolean n() {
        synchronized (this.f5496a) {
            Iterator<cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j> it = this.f5499f.iterator();
            while (it.hasNext()) {
                if (it.next().f() == ComState.UpdatingFirmware) {
                    return true;
                }
            }
            return false;
        }
    }

    private m() {
        this.f5496a = new Object();
        this.b = null;
        this.f5498e = new CopyOnWriteArrayList();
        this.f5499f = new ArrayList();
        this.f5500g = new CopyOnWriteArrayList();
    }
}
