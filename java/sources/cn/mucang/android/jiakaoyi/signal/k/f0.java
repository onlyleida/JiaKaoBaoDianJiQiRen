package cn.mucang.android.jiakaoyi.signal.k;

import android.os.Handler;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.i0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.k.callback.SingleFirmwareUpgradeCallback;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.TestOTAUpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import cn.mucang.android.jiakaoyi.signal.utils.CRCUtil;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UpgradeInfoModel f5780a;
    protected final SingleFirmwareUpgradeCallback b;
    protected final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f5781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final cn.mucang.android.jiakaoyi.signal.k.callback.e f5782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected byte[] f5783f;
    protected int q;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f5784g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f5785h = 0;
    protected int i = 0;
    protected int j = 1;
    protected int k = 1;
    protected int l = 0;
    protected boolean m = false;
    private boolean n = false;
    protected String o = "";
    private boolean p = false;
    private final Runnable r = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0 f0Var = f0.this;
            if (f0Var.m) {
                return;
            }
            f0Var.m = true;
            SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = f0Var.b;
            if (singleFirmwareUpgradeCallback != null) {
                singleFirmwareUpgradeCallback.i(f0Var.f5780a, "设备重启超时", f0Var.k, true);
            }
            cn.mucang.android.core.utils.t.h("DebugOta", "设备重启超时,开始重试");
            f0.this.b("设备重启超时,开始重试");
            if (f0.this.b != null) {
                String str = f0.this.O() + "主控升级失败-设备启动超时";
                UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                upgradeUploadModel.setMsg(str);
                upgradeUploadModel.setType(1);
                f0 f0Var2 = f0.this;
                f0Var2.b.a(f0Var2.o, f0Var2.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
            }
            f0.this.N();
        }
    }

    public f0(UpgradeInfoModel upgradeInfoModel, SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback, cn.mucang.android.jiakaoyi.signal.k.callback.e eVar) {
        this.f5781d = 246;
        this.f5780a = upgradeInfoModel;
        this.b = singleFirmwareUpgradeCallback;
        boolean zS = S();
        this.c = zS;
        if (zS) {
            this.f5781d = 512;
        }
        this.f5782e = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ byte[] B(int i, byte[] bArr) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.f(this.f5785h);
        if (!this.c) {
            vVar.c((byte) i);
        }
        vVar.d(bArr);
        return vVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D() {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.y.class, 0, SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.k.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f5813a.j();
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.k.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f5812a.l();
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.signal.k.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f5764a.n((cn.mucang.android.jiakaoyi.signal.communicate.receive.y) obj);
            }
        }).i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.f(this.f5780a, this.k);
        }
    }

    private void H(i0 i0Var) {
        this.l = 0;
        this.m = true;
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.i(this.f5780a, "分包发送失败", this.k, true);
            String str = O() + "收到分包响应消息-返回码错误";
            UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
            upgradeUploadModel.setMsg(str);
            upgradeUploadModel.setType(7);
            this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
        }
        cn.mucang.android.core.utils.t.h("DebugOta", "分包发送失败,开始重试,失败的索引:" + i0Var.f5425a);
        b("分包发送失败,开始重试");
        N();
    }

    private void M() {
        this.f5785h = 1;
        this.f5783f = null;
        this.f5784g = 0;
        this.m = false;
        this.n = false;
    }

    private void P() {
        byte[] bArr;
        int i = this.f5785h;
        int i2 = this.f5781d;
        int i3 = (i - 1) * i2;
        int i4 = this.f5784g;
        if (i3 > i4 - 1 || (bArr = this.f5783f) == null) {
            return;
        }
        final int i5 = i <= this.i - 1 ? i2 : i4 % i2;
        final byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, (i - 1) * i2, bArr2, 0, i5);
        try {
            b("开始发分包" + this.f5785h + ", 第几次:" + this.k);
            this.q = this.q + i5;
            cn.mucang.android.core.utils.t.h("DebugOta", "发送分包:序号" + this.f5785h + "当前分包大小:" + i5 + ",已发送大小:" + this.q + ",总数:" + this.f5783f.length);
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.PackageOrder, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.k.c0
                @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
                public final byte[] a() {
                    return this.f5766a.B(i5, bArr2);
                }
            });
            StringBuilder sb = new StringBuilder();
            sb.append("开始发送分包:");
            sb.append(this.f5785h);
            cn.mucang.android.core.utils.t.h("DebugOta", sb.toString());
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.h("DebugOta", "发送分包异常:" + e2.getLocalizedMessage());
            b("发送分包异常" + e2.getLocalizedMessage());
            this.m = true;
            SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
            if (singleFirmwareUpgradeCallback != null) {
                singleFirmwareUpgradeCallback.i(this.f5780a, "发送分包异常", this.k, true);
                String str = O() + "发送分包指令异常" + e2.getLocalizedMessage();
                cn.mucang.android.jiakaoyi.framework.log.f.f(str);
                UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                upgradeUploadModel.setMsg(str);
                upgradeUploadModel.setType(5);
                this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
            }
            N();
        }
    }

    private void Q() {
        b("开始发送ota指令，buffer大小:" + this.f5783f.length);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f5809a.D();
            }
        });
    }

    private boolean S() {
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        return absSignalProvider != null && absSignalProvider.useNonOldProtocol();
    }

    private boolean a(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        rVar.j();
        byte bE = rVar.e();
        byte bE2 = rVar.e();
        rVar.e();
        rVar.e();
        rVar.l();
        rVar.e();
        DeviceUtils.k(bE2);
        cn.mucang.android.jiakaoyi.framework.log.f.f("文件头信息：  产品类型：" + ((int) bE) + "   固件类型：" + ((int) bE2) + "    使用新协议：" + this.c);
        if (bE2 != this.f5780a.getType()) {
            return true;
        }
        if (!AppUtils.k()) {
            if (AppUtils.l()) {
                return bE != 6;
            }
            return bE != 1;
        }
        if (AppUtils.n()) {
            return bE != 2;
        }
        if (AppUtils.c()) {
            return bE != 8;
        }
        return bE != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.d(this.f5780a, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ byte[] h() {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) this.j);
        vVar.f(this.f5783f.length);
        if (cn.mucang.android.jiakaoyi.signal.com.p.b()) {
            vVar.f(this.i - 1);
        }
        vVar.f(CRCUtil.a(this.f5783f));
        if (!this.c) {
            vVar.h((short) this.f5780a.getVersion());
            vVar.f(0);
        }
        return vVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ kotlin.v j() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(cn.mucang.android.jiakaoyi.signal.com.p.b() ? Cmd.StartOrderV2 : Cmd.StartOrder, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.k.v
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return this.f5811a.h();
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.f("发送OTA请求升级 0x80指令");
        b("发送OTA指令,固件类型:" + this.j + ", 固件版本:" + this.f5780a.getVersion());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ kotlin.v l() {
        b("发送OTA开始指令无响应");
        this.m = true;
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.i(this.f5780a, "发送0x80指令超时", this.k, true);
        }
        if (this.b != null) {
            UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
            upgradeUploadModel.setMsg("发送OTA开始指令无响应");
            upgradeUploadModel.setType(4);
            this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
        }
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback2 = this.b;
        if (singleFirmwareUpgradeCallback2 != null) {
            singleFirmwareUpgradeCallback2.c(this.f5780a, "重试失败，请重新尝试更新");
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("发送指令异常,开始重试");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ kotlin.v n(cn.mucang.android.jiakaoyi.signal.communicate.receive.y yVar) {
        if (yVar.f5428a || this.b == null) {
            return null;
        }
        UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
        upgradeUploadModel.setMsg("OTA开始指令响应无法升级或模块不在线");
        upgradeUploadModel.setType(4);
        this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(j0 j0Var) {
        if (j0Var.a()) {
            int i = j0Var.f5426a;
            SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
            if (singleFirmwareUpgradeCallback != null) {
                singleFirmwareUpgradeCallback.b(this.f5780a, j0Var);
                this.b.h(this.f5780a, (i / 2) + 50, 100, this.k);
                if (i >= 100) {
                    this.b.d(this.f5780a, this.k);
                    return;
                }
                return;
            }
            return;
        }
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback2 = this.b;
        if (singleFirmwareUpgradeCallback2 != null) {
            singleFirmwareUpgradeCallback2.c(this.f5780a, "子模块固件更新异常");
            String str = "子模块更新异常: " + j0Var.b + ",进度: " + j0Var.f5426a;
            UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
            upgradeUploadModel.setMsg(str);
            upgradeUploadModel.setType(8);
            this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
        }
        cn.mucang.android.core.utils.t.h("DebugOta", "子模块更新异常: " + j0Var.b + ",进度: " + j0Var.f5426a);
        StringBuilder sb = new StringBuilder();
        sb.append("更新");
        sb.append(this.f5780a.getTypeName());
        sb.append("固件异常，升级下一个固件");
        cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
        b("更新子模块固件异常，升级下一个固件");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        if (this.b != null) {
            int i = this.f5785h;
            if (!this.f5780a.isMainObd()) {
                i = this.f5785h / 2;
            }
            this.b.h(this.f5780a, i, this.i, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.d(this.f5780a, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.h(this.f5780a, this.f5785h, this.i, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.g(this.f5780a, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z() {
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
        if (singleFirmwareUpgradeCallback != null) {
            singleFirmwareUpgradeCallback.c(this.f5780a, "重试失败，请重新尝试更新");
        }
    }

    public void G(final j0 j0Var) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f5762a.p(j0Var);
            }
        });
    }

    public void I(boolean z, Handler handler) {
        cn.mucang.android.jiakaoyi.framework.log.f.f(this.f5780a.getTypeName() + "收到分包完成应答，分包总序号" + this.f5785h);
        if (!z) {
            this.m = true;
            SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
            if (singleFirmwareUpgradeCallback != null) {
                singleFirmwareUpgradeCallback.i(this.f5780a, "更新完成异常", this.k, true);
                String str = O() + "收到分包完成消息-返回码错误";
                UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                upgradeUploadModel.setMsg(str);
                upgradeUploadModel.setType(8);
                this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel);
            }
            b("更新完成异常,开始重试");
            cn.mucang.android.jiakaoyi.framework.log.f.f(this.f5780a.getTypeName() + "更新完成异常,开始重试");
            N();
            return;
        }
        SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback2 = this.b;
        if (singleFirmwareUpgradeCallback2 != null) {
            singleFirmwareUpgradeCallback2.e(this.f5780a, this.k);
        }
        if (this.f5780a.getType() == 2) {
            d();
            return;
        }
        if ((AppUtils.c() || AppUtils.b()) && this.f5780a.getType() == 7) {
            d();
            return;
        }
        cn.mucang.android.jiakaoyi.signal.k.callback.e eVar = this.f5782e;
        if (eVar != null) {
            eVar.a(this.f5780a, this.b);
        } else if (this.f5780a.getType() == 1) {
            c(handler);
        } else {
            d();
        }
    }

    public void J(i0 i0Var) {
        cn.mucang.android.core.utils.t.h("DebugOta", "收到分包应答：包序号:" + i0Var.f5425a + ",状态:" + ((int) i0Var.b));
        if (i0Var.b()) {
            this.l = 0;
            b("收到分包:" + this.f5785h);
            this.f5785h = this.f5785h + 1;
            P();
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5815a.r();
                }
            });
            return;
        }
        if (!i0Var.a() || !this.c) {
            H(i0Var);
            return;
        }
        int i = this.l;
        if (i >= 5) {
            b("重新发分包超过限定次数:" + this.f5785h);
            H(i0Var);
            return;
        }
        this.l = i + 1;
        b("重新发分包:" + this.f5785h);
        cn.mucang.android.core.utils.t.h("DebugOta", "重新发包:" + this.f5785h);
        P();
    }

    public void K(Handler handler) {
        if (this.f5780a.isMainObd()) {
            this.m = true;
            if (handler != null) {
                handler.removeCallbacks(this.r);
            }
            cn.mucang.android.core.utils.t.h("DebugOta", "主控固件更新,收到设备重启信号");
            b("收到设备重启信号,主控固件");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5808a.t();
                }
            });
            if (this.b != null) {
                String str = O() + "主控更新成功";
                UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                upgradeUploadModel.setMsg(str);
                upgradeUploadModel.setType(9);
                this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_SUCCESS, upgradeUploadModel);
            }
        }
    }

    public void L() {
        if (this.n) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x81重复接收，已丢弃");
            return;
        }
        this.n = true;
        this.f5785h = 1;
        this.q = 0;
        P();
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f5814a.v();
            }
        });
        String str = O() + "收到" + this.f5780a.getTypeName() + "响应指令";
        cn.mucang.android.jiakaoyi.framework.log.f.f(str);
        if (this.b != null) {
            UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
            upgradeUploadModel.setMsg(str);
            upgradeUploadModel.setType(6);
            this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_UPGRADING, upgradeUploadModel);
        }
    }

    protected void N() {
        if (this.m) {
            int i = this.k;
            if (i < 3) {
                this.p = true;
                this.k = i + 1;
                b("开始重试,次数" + this.k);
                cn.mucang.android.jiakaoyi.framework.log.f.f("开始重试,次数" + this.k);
                R();
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5806a.x();
                    }
                });
                return;
            }
            b("开始重试,次数" + this.k + "超过3次，更新失败");
            cn.mucang.android.jiakaoyi.framework.log.f.f("开始重试,次数" + this.k + "超过3次，更新失败");
            this.p = false;
            this.k = 1;
            this.o = "";
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5810a.z();
                }
            });
        }
    }

    protected String O() {
        return this.p ? "重试-" : "";
    }

    public void R() {
        if (!this.p) {
            this.k = 1;
            this.o = UUID.randomUUID().toString().replace("-", "").toLowerCase(Locale.ROOT);
        }
        M();
        DataInputStream dataInputStream = null;
        try {
            try {
                File file = new File(this.f5780a.getDownloadFilePath());
                DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(file));
                try {
                    int length = (int) file.length();
                    byte[] bArr = new byte[length];
                    dataInputStream2.readFully(bArr);
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(bArr, 0, bArr2, 0, 4);
                    if (Arrays.equals(bArr2, new byte[]{-86, -86, -86, -86})) {
                        cn.mucang.android.jiakaoyi.framework.log.f.f("特殊处理前128字节");
                        int i = length - 128;
                        byte[] bArr3 = new byte[i];
                        this.f5783f = bArr3;
                        System.arraycopy(bArr, 128, bArr3, 0, i);
                        byte[] bArr4 = new byte[128];
                        System.arraycopy(bArr, 0, bArr4, 0, 128);
                        if (a(new cn.mucang.android.jiakaoyi.signal.communicate.r(bArr4))) {
                            cn.mucang.android.core.utils.u.h("文件头校验不通过");
                            cn.mucang.android.jiakaoyi.framework.log.f.f("文件头校验不通过");
                            throw new Exception();
                        }
                    } else {
                        this.f5783f = bArr;
                    }
                    int length2 = this.f5783f.length;
                    this.f5784g = length2;
                    int i2 = this.f5781d;
                    int i3 = length2 / i2;
                    this.i = i3;
                    if (length2 % i2 > 0) {
                        this.i = i3 + 1;
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.f("初始化=========分包个数:" + this.i + ",总大小:" + this.f5784g);
                    this.j = this.f5780a.getType();
                    cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5807a.F();
                        }
                    });
                    String str = "开始升级" + this.f5780a.getTypeName();
                    cn.mucang.android.jiakaoyi.framework.log.f.f(str);
                    if (this.b != null) {
                        UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
                        upgradeUploadModel.setMsg(O() + str);
                        upgradeUploadModel.setType(3);
                        this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_START, upgradeUploadModel);
                    }
                    Q();
                    cn.mucang.android.core.utils.o.a(dataInputStream2);
                } catch (Exception unused) {
                    dataInputStream = dataInputStream2;
                    cn.mucang.android.jiakaoyi.framework.log.f.f(this.f5780a.getTypeName() + "固件文件读取异常");
                    SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback = this.b;
                    if (singleFirmwareUpgradeCallback != null) {
                        singleFirmwareUpgradeCallback.c(this.f5780a, "固件文件读取异常");
                        UpgradeUploadModel upgradeUploadModel2 = new UpgradeUploadModel();
                        upgradeUploadModel2.setMsg("固件文件读取异常");
                        upgradeUploadModel2.setType(3);
                        this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_FAIL, upgradeUploadModel2);
                    }
                    cn.mucang.android.core.utils.o.a(dataInputStream);
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    cn.mucang.android.core.utils.o.a(dataInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused2) {
        }
    }

    protected void b(String str) {
        if (MucangConfig.v()) {
            LiveBus.d(TestOTAUpgradeState.class).l(new TestOTAUpgradeState(str));
        }
    }

    protected void c(Handler handler) {
        cn.mucang.android.core.utils.t.h("DebugOta", "更新完成,等待设备重启" + this.f5785h);
        b("更新完成,等待设备重启");
        cn.mucang.android.jiakaoyi.framework.log.f.f("主控更新完成,等待设备重启");
        if (handler != null) {
            handler.postDelayed(this.r, SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US);
        }
    }

    protected void d() {
        this.m = true;
        cn.mucang.android.core.utils.t.h("DebugOta", "OBD-onSuccessOnTime-发送SINGLE_MODEL_SUCCESS消息");
        cn.mucang.android.jiakaoyi.framework.log.f.f("OBD固件更新完成");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f5768a.f();
            }
        });
        if (this.b != null) {
            String str = O() + "obd更新成功";
            UpgradeUploadModel upgradeUploadModel = new UpgradeUploadModel();
            upgradeUploadModel.setMsg(str);
            upgradeUploadModel.setType(2);
            this.b.a(this.o, this.f5780a, UpgradeState.SINGLE_MODEL_SUCCESS, upgradeUploadModel);
        }
    }
}
