package cn.mucang.android.jiakaoyi.signal.k;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.i0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.k.callback.FirmwareUpgradeStateCallback;
import cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.TestOTAUpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HandlerThread f5771a;
    private Handler b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<UpgradeInfoModel> f5772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Integer, Boolean> f5773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FirmwareUpgradeStateCallback f5774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f0 f5775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f5776h;
    private cn.mucang.android.jiakaoyi.signal.k.callback.e i;
    private final Object j;
    private final SingleFirmwareUpgradeCallback k;

    class a implements SingleFirmwareUpgradeCallback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void k(int i, int i2, int i3) {
            if (e0.this.f5774f != null) {
                e0.this.f5774f.d(i, i2, i3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void m() {
            e0.this.U();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void o() {
            e0.this.U();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void q() {
            e0.this.U();
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void a(String str, UpgradeInfoModel upgradeInfoModel, UpgradeState upgradeState, UpgradeUploadModel upgradeUploadModel) {
            if (e0.this.f5774f != null) {
                e0.this.f5774f.a(str, upgradeInfoModel, upgradeState, upgradeUploadModel);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void b(UpgradeInfoModel upgradeInfoModel, j0 j0Var) {
            e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_UPGRADING, "开始升级" + upgradeInfoModel.getTypeName() + "..."));
            if (e0.this.f5774f != null) {
                e0.this.f5774f.b(upgradeInfoModel, j0Var);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void c(UpgradeInfoModel upgradeInfoModel, String str) {
            synchronized (e0.this.j) {
                e0.this.f5773e.put(Integer.valueOf(e0.this.c), Boolean.FALSE);
            }
            if (e0.this.b != null) {
                e0.this.b.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5767a.q();
                    }
                });
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void d(UpgradeInfoModel upgradeInfoModel, int i) {
            cn.mucang.android.core.utils.t.h("DebugOta", "第" + e0.this.c + "个更新固件成功");
            synchronized (e0.this.j) {
                e0.this.f5773e.put(Integer.valueOf(e0.this.c), Boolean.TRUE);
            }
            if (e0.this.f5774f != null) {
                e0.this.f5774f.d(0, 0, 0);
            }
            e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_SUCCESS, upgradeInfoModel.getTypeName() + "更新成功"));
            cn.mucang.android.core.utils.t.h("DebugOta", "post更新下一个任务");
            if (e0.this.b != null) {
                if (e0.this.c >= e0.this.f5772d.size() - 1) {
                    e0.this.b.postDelayed(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5765a.m();
                        }
                    }, 15000L);
                } else {
                    e0.this.b.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5763a.o();
                        }
                    });
                }
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void e(UpgradeInfoModel upgradeInfoModel, int i) {
            if (upgradeInfoModel.isMainObd()) {
                e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_PACK_FINISH, "主控固件更新完毕，等待设备重启"));
                return;
            }
            e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_SUCCESS, upgradeInfoModel.getTypeName() + "文件下发成功"));
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void f(UpgradeInfoModel upgradeInfoModel, int i) {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void g(UpgradeInfoModel upgradeInfoModel, int i) {
            e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.START, upgradeInfoModel.getTypeName() + "更新开始第" + i + "次本地更新"));
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void h(UpgradeInfoModel upgradeInfoModel, final int i, final int i2, int i3) {
            final int i4 = (i * 100) / i2;
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5769a.k(i4, i, i2);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback
        public void i(UpgradeInfoModel upgradeInfoModel, String str, int i, boolean z) {
            String str2 = upgradeInfoModel.getTypeName() + "第" + i + "次升级失败";
            cn.mucang.android.jiakaoyi.framework.log.f.f(str2);
            e0.this.R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_FAIL, str2));
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e0 f5778a = new e0(null);
    }

    /* synthetic */ e0(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void C() {
        if (this.f5775g == null || cn.mucang.android.jiakaoyi.signal.com.p.b()) {
            return;
        }
        this.f5775g.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void E(UpgradeStateModel upgradeStateModel) {
        FirmwareUpgradeStateCallback firmwareUpgradeStateCallback = this.f5774f;
        if (firmwareUpgradeStateCallback != null) {
            firmwareUpgradeStateCallback.c(upgradeStateModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void G() {
        f0 f0Var = this.f5775g;
        if (f0Var != null) {
            f0Var.R();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K() {
        FirmwareUpgradeStateCallback firmwareUpgradeStateCallback = this.f5774f;
        if (firmwareUpgradeStateCallback != null) {
            firmwareUpgradeStateCallback.d(0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(final UpgradeStateModel upgradeStateModel) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f5787a.E(upgradeStateModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public void I(List<UpgradeInfoModel> list) {
        this.f5772d.clear();
        this.f5772d.addAll(list);
        this.f5776h = true;
        X();
        cn.mucang.android.jiakaoyi.framework.log.f.f("开始更新流程");
        i("开始更新流程");
        R(new UpgradeStateModel(null, UpgradeState.START, "开始更新固件流程..."));
        SystemClock.sleep(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        int i = this.c + 1;
        this.c = i;
        if (i > this.f5772d.size() - 1) {
            l();
            return;
        }
        X();
        i("开始更新第" + this.c + "个固件");
        cn.mucang.android.jiakaoyi.framework.log.f.f("开始更新第" + this.c + "个固件");
        Z(this.f5772d.get(this.c));
    }

    private void V() {
        Handler handler = this.b;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5798a.G();
                }
            });
        }
    }

    private void W() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVarI = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().i();
        if (jVarI != null) {
            jVarI.K();
        }
    }

    private void X() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.j jVarI = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().i();
        if (jVarI != null) {
            jVarI.L();
        }
    }

    private void Z(UpgradeInfoModel upgradeInfoModel) {
        StringBuilder sb = new StringBuilder();
        sb.append(upgradeInfoModel.isMainObd() ? "开始升级" : "开始下发");
        sb.append(upgradeInfoModel.getTypeName());
        sb.append("...");
        String string = sb.toString();
        i(string);
        cn.mucang.android.jiakaoyi.framework.log.f.f(string);
        cn.mucang.android.core.utils.t.h("DebugOta", "发送START消息:${desc}");
        R(new UpgradeStateModel(upgradeInfoModel, UpgradeState.SINGLE_MODEL_START, string));
        if (!n(new File(upgradeInfoModel.getDownloadFilePath())).booleanValue()) {
            U();
            return;
        }
        f0 f0Var = this.f5775g;
        if (f0Var != null) {
            f0Var.f5780a = upgradeInfoModel;
        } else if (cn.mucang.android.jiakaoyi.signal.com.p.b()) {
            this.f5775g = new cn.mucang.android.jiakaoyi.signal.k.h0.c(upgradeInfoModel, this.k, this.i);
        } else {
            this.f5775g = new f0(upgradeInfoModel, this.k, this.i);
        }
        V();
    }

    private void i(String str) {
        if (MucangConfig.v()) {
            LiveBus.d(TestOTAUpgradeState.class).l(new TestOTAUpgradeState(str));
        }
    }

    public static e0 j() {
        return b.f5778a;
    }

    private UpgradeState k() {
        HashMap map;
        boolean z;
        synchronized (this.j) {
            map = new HashMap(this.f5773e);
        }
        if (cn.mucang.android.core.utils.g.c(map)) {
            return UpgradeState.FAIL;
        }
        Iterator it = map.values().iterator();
        loop0: while (true) {
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                z = z && ((Boolean) it.next()).booleanValue();
            }
        }
        return z ? UpgradeState.SUCCESS : UpgradeState.FAIL;
    }

    private void l() {
        cn.mucang.android.core.utils.u.h("所有固件已提交更新");
        i("更新完毕");
        final McCommandManager mcCommandManager = McCommandManager.f5380a;
        mcCommandManager.getClass();
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.a
            @Override // java.lang.Runnable
            public final void run() {
                mcCommandManager.f();
            }
        }, 3000L);
        UpgradeState upgradeStateK = k();
        cn.mucang.android.core.utils.t.h("DebugOta", "更新结果" + upgradeStateK);
        String str = upgradeStateK == UpgradeState.FAIL ? "固件升级流程失败" : "固件更新流程完成";
        cn.mucang.android.jiakaoyi.framework.log.f.f(str);
        R(new UpgradeStateModel(null, upgradeStateK, str));
        this.f5776h = false;
        W();
    }

    private void m() {
        HandlerThread handlerThread = this.f5771a;
        if (handlerThread != null) {
            handlerThread.quit();
            this.b.removeCallbacksAndMessages(null);
            this.f5771a = null;
            this.b = null;
        }
        HandlerThread handlerThread2 = new HandlerThread(HttpHeaders.UPGRADE);
        this.f5771a = handlerThread2;
        handlerThread2.start();
        this.b = new Handler(this.f5771a.getLooper());
    }

    private Boolean n(File file) throws Throwable {
        Boolean bool = Boolean.FALSE;
        if (file != null && file.exists()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    Boolean boolValueOf = Boolean.valueOf(fileInputStream2.available() > 0);
                    cn.mucang.android.core.utils.o.a(fileInputStream2);
                    return boolValueOf;
                } catch (Exception unused) {
                    fileInputStream = fileInputStream2;
                    cn.mucang.android.core.utils.o.a(fileInputStream);
                    return bool;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    cn.mucang.android.core.utils.o.a(fileInputStream);
                    throw th;
                }
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(j0 j0Var) {
        this.f5775g.G(j0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(boolean z) {
        this.f5775g.I(z, this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(i0 i0Var) {
        f0 f0Var = this.f5775g;
        if (f0Var != null) {
            f0Var.J(i0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.b bVar) {
        f0 f0Var = this.f5775g;
        if (f0Var == null || !(f0Var instanceof cn.mucang.android.jiakaoyi.signal.k.h0.c)) {
            return;
        }
        ((cn.mucang.android.jiakaoyi.signal.k.h0.c) f0Var).X(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A() {
        f0 f0Var = this.f5775g;
        if (f0Var != null) {
            f0Var.K(this.b);
        }
    }

    public void L(final j0 j0Var) {
        if (this.b == null || !this.f5776h) {
            return;
        }
        this.b.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f5800a.s(j0Var);
            }
        });
    }

    public void M(final boolean z) {
        Handler handler = this.b;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5804a.u(z);
                }
            });
        }
    }

    public void N(final i0 i0Var) {
        Handler handler = this.b;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5795a.w(i0Var);
                }
            });
        }
    }

    public void O(final cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.b bVar) {
        Handler handler = this.b;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5799a.y(bVar);
                }
            });
        }
    }

    public void P() {
        Handler handler;
        if (!p().booleanValue() || (handler = this.b) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f5805a.A();
            }
        });
    }

    public void Q(cn.mucang.android.jiakaoyi.signal.communicate.receive.y yVar) {
        Handler handler = this.b;
        if (handler != null) {
            if (yVar.f5428a) {
                handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5803a.C();
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5801a.U();
                    }
                });
            }
        }
    }

    public void S() {
        this.c = -1;
        HandlerThread handlerThread = this.f5771a;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        Handler handler = this.b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        synchronized (this.j) {
            this.f5773e.clear();
        }
        this.f5775g = null;
        this.f5774f = null;
        this.f5776h = false;
        W();
    }

    public void Y(final List<UpgradeInfoModel> list, FirmwareUpgradeStateCallback firmwareUpgradeStateCallback) {
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().i() == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("主控连接不支持OTA升级");
            firmwareUpgradeStateCallback.c(new UpgradeStateModel(null, UpgradeState.FAIL, "主控连接不支持OTA升级"));
        } else {
            if (this.f5776h) {
                return;
            }
            S();
            this.f5774f = firmwareUpgradeStateCallback;
            m();
            this.b.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5779a.I(list);
                }
            });
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5802a.K();
                }
            });
        }
    }

    public Boolean o() {
        f0 f0Var;
        UpgradeInfoModel upgradeInfoModel;
        return (!this.f5776h || (f0Var = this.f5775g) == null || (upgradeInfoModel = f0Var.f5780a) == null) ? Boolean.FALSE : Boolean.valueOf(upgradeInfoModel.isMainObd());
    }

    public Boolean p() {
        return Boolean.valueOf(this.f5776h);
    }

    private e0() {
        this.c = -1;
        this.f5772d = new ArrayList();
        this.f5773e = new HashMap();
        this.f5775g = null;
        this.i = null;
        this.j = new Object();
        this.k = new a();
        this.i = new cn.mucang.android.jiakaoyi.signal.k.callback.f();
    }
}
