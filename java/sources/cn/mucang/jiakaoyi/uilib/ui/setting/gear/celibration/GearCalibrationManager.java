package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.GearCalibrationOrder;
import cn.mucang.android.jiakaoyi.signal.communicate.GearsData;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.Box;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.l0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0012\n\u0002\b\b\u0018\u0000 ?2\u00020\u0001:\u0001?B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0017H\u0016J\b\u0010\u001b\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0019J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u000eH\u0002J\u0006\u0010\"\u001a\u00020\u0015J\b\u0010#\u001a\u00020\u0017H\u0016J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0017H\u0016J\u0018\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020*H\u0002J\b\u0010+\u001a\u00020\u0015H\u0016J\u0010\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u0006H\u0016J\u0010\u0010.\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\nH\u0016J\u0018\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0010H\u0016J\u0018\u00102\u001a\u00020\u00152\u0006\u00103\u001a\u00020\u00192\u0006\u00104\u001a\u00020\u0019H\u0002J\u0010\u00105\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u0017H\u0016J\u0012\u00106\u001a\u00020\u00172\b\u00107\u001a\u0004\u0018\u000108H\u0002J0\u00109\u001a\u00020\u00152\u0006\u0010:\u001a\u00020\b2\u0006\u0010;\u001a\u00020\b2\u0006\u0010<\u001a\u00020\b2\u0006\u0010=\u001a\u00020\b2\u0006\u0010>\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationManager;", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/LinkerClient;", "()V", "comListener", "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;", "connectStatusListener", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearConnectStatusListener;", "dataCount", "", "gearLocationListener", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearLocationListener;", "gearsData", "Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;", "gyroscopeData", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGearCalibrationInfo$ReceiveGyroscopeData;", "markGearsCmdListener", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/MarkGearsCmdListener;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGearCalibrationInfo;", "connectInfo", "", "getConnectState", "", "connected", "", "getEquipmentParameter", "getGearConnectStatus", "getGearInfo", "enter", "handleCalibration", "data", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGearCalibrationInfo$ReceiveCalibrationUpload;", "handleSignal", "init", "loadGearsData", "modifyGearBoundary", "gearItemType", "boundary", "parseInfo", "msgType", "frameBytes", "Lcn/mucang/android/jiakaoyi/signal/communicate/ReadBytes;", "release", "setGearConnectStatusChangeCallback", "callback", "setGearsLocChangeCallback", "startGearsLearning", "gearsCategory", "cmdListener", "startUpCalibration", "isManual", TtmlNode.START, "stopGearsLearning", "toHexString", "bytes", "", "writeInGearBoundInfo", "gearType", "top", "bottom", TtmlNode.LEFT, TtmlNode.RIGHT, "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearCalibrationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GearLocationListener f10039a;
    private MarkGearsCmdListener b;
    private GearConnectStatusListener c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.communicate.receive.r.e f10041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10042f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GearsData f10040d = new GearsData();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ComStateListener f10043g = new ComStateListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.w
        @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
        public final void a(ComStateListener.State state, Throwable th) {
            GearCalibrationManager.a(this.f10107a, state, th);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.signal.communicate.receive.r> f10044h = new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.u
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            GearCalibrationManager.y(this.f10082a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.r) obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.b();
    }

    private final void F(final boolean z, final boolean z2) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r
            @Override // java.lang.Runnable
            public final void run() {
                GearCalibrationManager.G(z, z2, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(boolean z, boolean z2, GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) 4);
        vVar.c((byte) (!z ? 1 : 0));
        vVar.c(z2 ? (byte) 1 : (byte) 0);
        try {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
            Cmd cmd = Cmd.OrderGearCalibration;
            mVarH.Q(cmd, vVar.b());
            StringBuilder sb = new StringBuilder();
            sb.append("GearCalibrationManager: ");
            sb.append(z2 ? "开始标定" : "结束标定");
            sb.append(z ? "手动档" : "自动挡");
            sb.append(", 0x");
            sb.append(this$0.I(new byte[]{cmd.order}));
            sb.append("  ");
            sb.append(this$0.I(vVar.b()));
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        } catch (Throwable unused) {
        }
    }

    private final String I(byte[] bArr) {
        if (bArr == null) {
            return BuildConfig.COMMON_MODULE_COMMIT_ID;
        }
        int length = bArr.length - 1;
        if (length == -1) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        int i = 0;
        while (true) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String str = String.format("0x%02x", Arrays.copyOf(new Object[]{Byte.valueOf((byte) (bArr[i] & (-1)))}, 1));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            sb.append(str);
            if (i == length) {
                sb.append(']');
                String string = sb.toString();
                kotlin.jvm.internal.r.d(string, "b.append(']').toString()");
                return string;
            }
            sb.append(", ");
            i++;
        }
    }

    private final void J(final int i, final int i2, final int i3, final int i4, final int i5) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.v
            @Override // java.lang.Runnable
            public final void run() {
                GearCalibrationManager.K(i, i2, i3, i4, i5, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(int i, int i2, int i3, int i4, int i5, GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) 7);
        vVar.c((byte) i);
        vVar.c((byte) i2);
        vVar.c((byte) i3);
        vVar.c((byte) i4);
        vVar.c((byte) i5);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("GearCalibrationManager: 写入边界信息, ");
            Cmd cmd = Cmd.OrderGearCalibration;
            sb.append(this$0.I(new byte[]{cmd.order}));
            sb.append("  ");
            sb.append(this$0.I(vVar.b()));
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(cmd, vVar.b());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(GearCalibrationManager this$0, ComStateListener.State state, Throwable th) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        GearConnectStatusListener gearConnectStatusListener = this$0.c;
        if (gearConnectStatusListener == null) {
            return;
        }
        gearConnectStatusListener.a(this$0.f(state == ComStateListener.State.Valid));
    }

    private final void b() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.p
            @Override // java.lang.Runnable
            public final void run() {
                GearCalibrationManager.c();
            }
        });
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.x
            @Override // java.lang.Runnable
            public final void run() {
                GearCalibrationManager.d(this.f10108a);
            }
        }, 1000L);
        int i = this.f10042f;
        if (i == 0) {
            this.f10042f = i + 1;
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.t
                @Override // java.lang.Runnable
                public final void run() {
                    GearCalibrationManager.e(this.f10081a);
                }
            }, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) 9);
        try {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.OrderGearCalibration, vVar.b());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f10041e == null) {
            cn.mucang.android.core.utils.u.h("未检测到陀螺仪");
        }
    }

    private final String f(boolean z) {
        return "{\"connect_status\":" + (z ? 1 : 0) + '}';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(boolean z, GearCalibrationManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) 1);
        vVar.c(z ? (byte) 1 : (byte) 0);
        try {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
            Cmd cmd = Cmd.OrderGearCalibration;
            mVarH.Q(cmd, vVar.b());
            cn.mucang.android.jiakaoyi.framework.log.f.o("GearCalibrationManager: 获取档位信息, " + this$0.I(new byte[]{cmd.order}) + "  " + this$0.I(vVar.b()));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private final void k(cn.mucang.android.jiakaoyi.signal.communicate.receive.r.b bVar) {
        int i = bVar.f5433a;
        if (47 == i) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("GearCalibrationManager: 档位标定结束");
            MarkGearsCmdListener markGearsCmdListener = this.b;
            if (markGearsCmdListener == null) {
                return;
            }
            markGearsCmdListener.a();
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("GearCalibrationManager: 开始档位标定", Gear.parse(i).gearName));
        MarkGearsCmdListener markGearsCmdListener2 = this.b;
        if (markGearsCmdListener2 == null) {
            return;
        }
        String str = Gear.parse(bVar.f5433a).gearName;
        kotlin.jvm.internal.r.d(str, "parse(data.calibrationGear).gearName");
        markGearsCmdListener2.b(str);
    }

    private final void l(cn.mucang.android.jiakaoyi.signal.communicate.receive.r.e eVar) {
        this.f10040d.setGearCategory(eVar.b());
        if (kotlin.jvm.internal.r.a("手动挡", eVar.b())) {
            this.f10040d.setGearsList(eVar.c());
        } else {
            this.f10040d.setGearsList(eVar.a());
        }
        GearLocationListener gearLocationListener = this.f10039a;
        if (gearLocationListener != null) {
            gearLocationListener.a("{\"left\":" + eVar.s + ",\"top\":" + eVar.t + '}');
        }
        GearLocationListener gearLocationListener2 = this.f10039a;
        if (gearLocationListener2 == null) {
            return;
        }
        Gear gear = Gear.parse(eVar.u);
        kotlin.jvm.internal.r.d(gear, "parse(data.gear)");
        gearLocationListener2.b(gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(GearCalibrationManager this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.r rVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (rVar != null) {
            int i = rVar.type;
            cn.mucang.android.jiakaoyi.signal.communicate.r rVar2 = rVar.b;
            kotlin.jvm.internal.r.d(rVar2, "t.data");
            this$0.z(i, rVar2);
        }
    }

    private final void z(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        try {
            byte b = rVar.q()[0];
            if (b == GearCalibrationOrder.GearData.order) {
                if (!new cn.mucang.android.jiakaoyi.signal.communicate.receive.r.d(b, rVar).f5428a) {
                    cn.mucang.android.core.utils.u.h("获取挡位数据失败");
                    return;
                }
                cn.mucang.android.core.utils.u.e(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        GearCalibrationManager.A(this.f10080a);
                    }
                });
                if (this.f10042f > 0) {
                    cn.mucang.android.core.utils.u.h("获取挡位数据成功");
                }
                this.f10042f = 0;
                b();
                return;
            }
            if (b == GearCalibrationOrder.GyroscopeData.order) {
                cn.mucang.android.jiakaoyi.signal.communicate.receive.r.e eVar = new cn.mucang.android.jiakaoyi.signal.communicate.receive.r.e(b, rVar);
                this.f10041e = eVar;
                l(eVar);
                return;
            }
            if (b == GearCalibrationOrder.Calibration.order) {
                cn.mucang.android.jiakaoyi.signal.communicate.receive.r.a aVar = new cn.mucang.android.jiakaoyi.signal.communicate.receive.r.a(b, rVar);
                String str = "开始标定成功";
                cn.mucang.android.core.utils.u.h(aVar.f5428a ? "开始标定成功" : "开始标定失败");
                if (!aVar.f5428a) {
                    str = "开始标定失败";
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("GearCalibrationManager: ", str));
                return;
            }
            if (b == GearCalibrationOrder.CalibrationUpload.order) {
                k(new cn.mucang.android.jiakaoyi.signal.communicate.receive.r.b(b, rVar));
                return;
            }
            if (b == GearCalibrationOrder.GearBoundary.order) {
                cn.mucang.android.jiakaoyi.signal.communicate.receive.r.c cVar = new cn.mucang.android.jiakaoyi.signal.communicate.receive.r.c(b, rVar);
                if (cVar.f5428a) {
                    cn.mucang.android.core.utils.u.h("设置挡位边界信息成功");
                } else {
                    cn.mucang.android.core.utils.u.h("设置挡位边界信息失败");
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("GearCalibrationManager: ", cVar.f5428a ? "设置挡位边界信息成功" : "设置挡位边界信息失败"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("GearCalibrationManager , ", e2.getMessage()));
        }
    }

    public void B() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().N(this.f10043g);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.r.class).m(this.f10044h);
    }

    public void C(GearConnectStatusListener callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.c = callback;
    }

    public void D(GearLocationListener callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f10039a = callback;
    }

    public void E(String gearsCategory, MarkGearsCmdListener cmdListener) {
        kotlin.jvm.internal.r.e(gearsCategory, "gearsCategory");
        kotlin.jvm.internal.r.e(cmdListener, "cmdListener");
        if (this.f10040d.getGearCategory() == null) {
            cn.mucang.android.core.utils.u.h("请先获取挡位数据");
        } else {
            this.b = cmdListener;
            F(kotlin.jvm.internal.r.a("手动挡", gearsCategory), true);
        }
    }

    public void H(String gearsCategory) {
        kotlin.jvm.internal.r.e(gearsCategory, "gearsCategory");
        this.b = null;
        F(kotlin.jvm.internal.r.a("手动挡", gearsCategory), false);
    }

    public String g() {
        return String.valueOf(this.f10041e);
    }

    public String h() {
        return f(cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().k() == ComStateListener.State.Valid);
    }

    public final void i(final boolean z) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.q
            @Override // java.lang.Runnable
            public final void run() {
                GearCalibrationManager.j(z, this);
            }
        });
    }

    public final void m() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().a(this.f10043g);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.r.class).i(this.f10044h);
    }

    public String w() throws InterruptedException {
        i(true);
        Thread.sleep(200L);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("GearCalibrationManager-档位数据：", this.f10040d));
        String string = this.f10040d.toString();
        kotlin.jvm.internal.r.d(string, "gearsData.toString()");
        return string;
    }

    public void x(String gearItemType, String boundary) {
        Gear gear;
        kotlin.jvm.internal.r.e(gearItemType, "gearItemType");
        kotlin.jvm.internal.r.e(boundary, "boundary");
        int length = Gear.values().length;
        if (length <= 0) {
            gear = null;
            break;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (kotlin.jvm.internal.r.a(gearItemType, Gear.values()[i].gearName)) {
                gear = Gear.values()[i];
                break;
            } else {
                if (i2 >= length) {
                    gear = null;
                    break;
                }
                i = i2;
            }
        }
        Box box = (Box) JSON.parseObject(boundary, Box.class);
        if (gear == null || box == null) {
            return;
        }
        J(gear.gear, box.getTop(), box.getBottom(), box.getLeft(), box.getRight());
    }
}
