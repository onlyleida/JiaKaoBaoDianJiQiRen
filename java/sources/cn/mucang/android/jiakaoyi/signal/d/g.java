package cn.mucang.android.jiakaoyi.signal.d;

import android.location.Location;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.p;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveHardwareInfo;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveWaitOta;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.b0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.c0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.d0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.e0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.f0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.g0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.h0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.k0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.n;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.o;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.q;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.s;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.t;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.w;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.x;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.y;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.z;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mobile.auth.gatewayauth.ResultCode;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.handle.gear.a f5550a = new cn.mucang.android.jiakaoyi.signal.handle.gear.a();
    private long[] b;
    private short[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long[] f5552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.utils.c f5553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.utils.c f5554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.utils.c f5555h;
    private final cn.mucang.android.jiakaoyi.signal.utils.c i;
    private float j;
    private float k;
    private float l;
    private float m;
    private boolean n;
    private final h o;

    class a extends n {
        a(g gVar, int i, r rVar) {
            super(i, rVar);
        }
    }

    public g() {
        new HashMap();
        this.b = new long[16];
        this.c = new short[16];
        this.f5551d = 0L;
        this.f5552e = new long[32];
        this.f5553f = new cn.mucang.android.jiakaoyi.signal.utils.c(1);
        this.f5554g = new cn.mucang.android.jiakaoyi.signal.utils.c(1);
        this.f5555h = new cn.mucang.android.jiakaoyi.signal.utils.c(1);
        this.i = new cn.mucang.android.jiakaoyi.signal.utils.c(1);
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = -99999.0f;
        this.l = -99999.0f;
        this.m = BitmapDescriptorFactory.HUE_RED;
        this.n = true;
        Gear gear = Gear.GearN;
        if (AppUtils.f() || AppUtils.l()) {
            boolean zB = i0.b("keyFingerprintDefault", true);
            this.n = zB;
            if (zB) {
                cn.mucang.android.jiakaoyi.signal.center.config.a aVarH = cn.mucang.android.jiakaoyi.signal.center.config.a.h();
                CarSignal carSignal = CarSignal.FingerPrint;
                if (aVarH.m(carSignal)) {
                    cn.mucang.android.jiakaoyi.signal.center.config.a.h().c(carSignal);
                }
                i0.i("keyFingerprintDefault", false);
                this.n = false;
            }
        }
        this.o = h.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to calculate best type for var: r26v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r26v0 'this'  ??, new type: cn.mucang.android.jiakaoyi.signal.d.g
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v5 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v5 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v6 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v7 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r26v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r26v0 'this'  ??, new type: cn.mucang.android.jiakaoyi.signal.d.g
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v5 ??, new type: long
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean m(cn.mucang.android.jiakaoyi.signal.communicate.receive.e0 r27, cn.mucang.android.jiakaoyi.signal.center.model.d r28) {
        /*
            Method dump skipped, instruction units count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.signal.d.g.l(cn.mucang.android.jiakaoyi.signal.communicate.receive.e0, cn.mucang.android.jiakaoyi.signal.center.model.d):boolean");
    }

    private boolean c(long j) {
        long j2 = this.f5551d;
        return j2 != 0 && j - j2 > 250;
    }

    private cn.mucang.android.jiakaoyi.signal.center.model.b d(t tVar) {
        cn.mucang.android.jiakaoyi.signal.center.model.b bVar = new cn.mucang.android.jiakaoyi.signal.center.model.b();
        bVar.f5281g.set(tVar.f5442a);
        bVar.j = tVar.f5447h;
        bVar.f5278d = tVar.b;
        bVar.f5277a = tVar.c;
        bVar.f5282h = tVar.f5443d;
        bVar.b = tVar.i;
        float f2 = tVar.f5446g;
        bVar.f5279e = f2;
        bVar.f5280f = f2;
        bVar.i = tVar.f5445f;
        return bVar;
    }

    private boolean e(long[] jArr, int i, boolean z, int i2, boolean z2, long j) {
        if (z) {
            jArr[i] = j;
            return true;
        }
        long j2 = jArr[i];
        if (j2 <= 0) {
            return false;
        }
        if (z2) {
            jArr[i] = 0;
            return false;
        }
        if (j - j2 < i2) {
            return true;
        }
        jArr[i] = 0;
        return false;
    }

    private boolean f(int i, boolean z, boolean z2, long j, long j2) {
        long[] jArr = this.b;
        long j3 = jArr[i];
        if (z) {
            if (j3 == 0) {
                jArr[i] = j;
            } else {
                if (j - j3 > 250) {
                    short[] sArr = this.c;
                    if (sArr[i] == 0) {
                        sArr[i] = 1;
                        jArr[i] = j;
                        return true;
                    }
                }
                if (this.c[i] == 1) {
                    jArr[i] = j;
                    return true;
                }
            }
        } else {
            if (j3 > 0) {
                if (z2) {
                    jArr[i] = 0;
                    this.c[i] = 0;
                    return false;
                }
                if (j - j3 < j2) {
                    return this.c[i] == 1;
                }
                jArr[i] = 0;
                this.c[i] = 0;
                return false;
            }
            this.c[i] = 0;
        }
        return false;
    }

    private void g(t tVar) {
        cn.mucang.android.jiakaoyi.signal.center.model.b bVarD = d(tVar);
        if (k.c(bVarD.f5281g) && j(bVarD.f5281g)) {
            JLocationManager.f5733a.o(bVarD);
        } else {
            cn.mucang.android.core.utils.t.d("SignalHandler", "handleLocation() location is invalid");
        }
    }

    private void h(final e0 e0Var) {
        cn.mucang.android.jiakaoyi.signal.c.d.u(new cn.mucang.android.jiakaoyi.signal.c.d.a() { // from class: cn.mucang.android.jiakaoyi.signal.d.d
            @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
            public final boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
                return this.f5547a.m(e0Var, dVar);
            }
        });
    }

    private boolean i() {
        if (AppUtils.n() || SelectCarManager.b() == null || SelectCarManager.b().getConfig() == null) {
            return false;
        }
        return SelectCarManager.b().getConfig().getSignalDelay();
    }

    private boolean j(Location location) {
        return location.getLatitude() > 1.0E-7d && location.getLongitude() > 1.0E-7d;
    }

    static /* synthetic */ v k() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("0x08 发现与本地盒子版本不一致 clearExtendConfig");
        cn.mucang.android.jiakaoyi.signal.center.config.a.h().d();
        return null;
    }

    static /* synthetic */ v n(String str, byte b) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 失败1 ：" + str + "，" + ((int) b));
        return null;
    }

    static /* synthetic */ void o() {
        final String strG = SelectCarManager.g();
        if (n0.g(strG)) {
            try {
                final byte bByteValue = Integer.valueOf(strG).byteValue();
                cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 " + strG);
                McCommandManager.f5380a.o(bByteValue, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.d.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.n(strG, bByteValue);
                    }
                });
            } catch (Exception e2) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 失败2 ：" + strG + " " + cn.mucang.android.core.utils.t.g(e2));
            }
        }
    }

    private void p() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.d.e
            @Override // java.lang.Runnable
            public final void run() {
                g.o();
            }
        });
    }

    public void a(int i, r rVar) {
        try {
            if (MucangConfig.v()) {
                Integer.toHexString(i);
            }
            String str = ResultCode.MSG_SUCCESS;
            switch (i) {
                case 3:
                    cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x03");
                    j jVar = new j(i, rVar);
                    LocalCarModel localCarModelE = SelectCarManager.e();
                    if (localCarModelE != null && localCarModelE.getConfig() != null) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x03 保存车型 " + localCarModelE.getConfig().getCode());
                        SelectCarManager.i(localCarModelE);
                        HardwareInfo hardwareInfoD = DeviceUtils.d();
                        if (hardwareInfoD != null) {
                            hardwareInfoD.carType = localCarModelE.getConfig().getCode();
                            DeviceUtils.r(hardwareInfoD, null);
                            cn.mucang.android.jiakaoyi.framework.log.f.o("切换车型后 更新hardwareInfo" + hardwareInfoD.string());
                        }
                    }
                    LiveBus.d(j.class).l(jVar);
                    break;
                case 8:
                    HardwareInfo map = new ReceiveHardwareInfo(i, rVar, this.o).map();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("盒子上传的硬件信息：" + map.string());
                    DeviceUtils.p(map.hardwareNumber, map.serialNumber);
                    DeviceUtils.r(map, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.d.b
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return g.k();
                        }
                    });
                    DeviceUtils.w(map.isSafeSpeedCheck);
                    LiveBus.d(HardwareInfo.class).l(map);
                    cn.mucang.android.jiakaoyi.framework.log.f.o("获取本地设备信息：" + DeviceUtils.e() + " ; " + DeviceUtils.j());
                    String strG = SelectCarManager.g();
                    if (n0.g(strG)) {
                        if (!strG.equals(map.carType + "")) {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("盒子的车型和app 保存的车型不一样 ,发消息重新选择车型 app:" + strG + ";底层:" + map.carType);
                            p();
                        }
                    }
                    break;
                case 16:
                    e0 e0Var = (!p.b() || cn.mucang.android.jiakaoyi.framework.utils.n.a()) ? new e0(i, rVar, this.o) : new e0(i, rVar, true, this.o);
                    LiveBus.d(e0.class).l(e0Var);
                    h(e0Var);
                    MucangConfig.v();
                    break;
                case 17:
                    g(new t(i, rVar));
                    break;
                case 18:
                    LiveBus.c(!p.b() ? new z(i, rVar) : new z(i, rVar, true));
                    break;
                case 20:
                    LiveBus.c(new b0(i, rVar));
                    break;
                case 22:
                    LiveBus.c(new c0(i, rVar));
                    break;
                case 24:
                    cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x18");
                    LiveBus.c(new k0(i, rVar));
                    break;
                case 25:
                    ReceiveWaitOta receiveWaitOta = new ReceiveWaitOta(i, rVar, this.o);
                    HardwareInfo map2 = receiveWaitOta.map();
                    cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x19，" + map2.toString());
                    cn.mucang.android.jiakaoyi.framework.log.f.o("消息0x19，更新硬件信息：" + map2.string());
                    if (map2.hardwareVersion != 1) {
                        map2.hardwareVersion = 1;
                    }
                    DeviceUtils.r(map2, null);
                    LiveBus.c(receiveWaitOta);
                    break;
                case 28:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.g(i, rVar));
                    break;
                case 30:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.p(i, rVar));
                    break;
                case 33:
                case 129:
                    cn.mucang.android.core.utils.t.h("RobotCommunicateManager", "收到ota应答");
                    y yVar = new y(i, rVar);
                    LiveBus.d(y.class).l(yVar);
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().Q(yVar);
                    break;
                case 35:
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().N(new cn.mucang.android.jiakaoyi.signal.communicate.receive.i0(i, rVar));
                    break;
                case 36:
                case 132:
                    cn.mucang.android.core.utils.t.h("DebugOta", "收到分包完成应答");
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().M(!p.b() ? new h0(i, rVar).f5424a : new cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.a(i, rVar).f5430a);
                    break;
                case 37:
                    cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x25，升级后重启完毕");
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().P();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x25");
                    p();
                    break;
                case 39:
                    GpsAnalysis.f().j();
                    m0 m0Var = new m0(i, rVar);
                    LiveBus.c(m0Var);
                    int iH = cn.mucang.android.jiakaoyi.signal.c.d.m.h();
                    if (iH != 4) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("0x27:gpsType=");
                        sb.append(iH);
                        sb.append(",发送rtcm返回的包长度=");
                        sb.append(m0Var.b);
                        sb.append(" : ");
                        sb.append(m0Var.f5428a ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                        cn.mucang.android.jiakaoyi.framework.log.f.i(sb.toString());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("包长度=");
                    sb2.append(m0Var.b);
                    sb2.append(" : ");
                    if (!m0Var.f5428a) {
                        str = ResultCode.MSG_FAILED;
                    }
                    sb2.append(str);
                    cn.mucang.android.jiakaoyi.signal.handle.gps.g.a(sb2.toString());
                    break;
                case 40:
                case 133:
                    j0 j0Var = new j0(i, rVar);
                    if (MucangConfig.v()) {
                        cn.mucang.android.core.utils.t.h("DebugOta", "收到固件升级进度上报" + JSON.toJSONString(j0Var));
                    }
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().L(j0Var);
                    break;
                case 41:
                    GpsAnalysis.f().j();
                    l0 l0Var = new l0(i, rVar);
                    LiveBus.c(l0Var);
                    int iH2 = cn.mucang.android.jiakaoyi.signal.c.d.m.h();
                    if (iH2 != 4) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("0x29:gpsType=");
                        sb3.append(iH2);
                        sb3.append(",返回的包长度=");
                        sb3.append(l0Var.b);
                        sb3.append(",index=");
                        sb3.append(l0Var.c);
                        sb3.append(",state=");
                        sb3.append(l0Var.f5427d);
                        sb3.append(" : ");
                        sb3.append(l0Var.f5428a ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                        cn.mucang.android.jiakaoyi.framework.log.f.i(sb3.toString());
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("序号=");
                    sb4.append(l0Var.c);
                    sb4.append(",state=");
                    sb4.append(l0Var.f5427d);
                    sb4.append(" : ");
                    if (!l0Var.f5428a) {
                        str = ResultCode.MSG_FAILED;
                    }
                    sb4.append(str);
                    cn.mucang.android.jiakaoyi.signal.handle.gps.g.a(sb4.toString());
                    break;
                case 67:
                case 69:
                case 71:
                case 73:
                case 95:
                case 97:
                case 99:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.i(i, rVar));
                    break;
                case 77:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.a(i, rVar));
                    break;
                case 79:
                    LiveBus.c(new f0(i, rVar));
                    break;
                case 81:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.f(i, rVar));
                    break;
                case 82:
                    byte[] bArrF = rVar.f();
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.handle.gps.d(bArrF));
                    cn.mucang.android.jiakaoyi.signal.e.e.b(bArrF);
                    break;
                case 83:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.k(i, rVar));
                    break;
                case 84:
                    DeviceUtils.t(new cn.mucang.android.jiakaoyi.signal.communicate.receive.u(i, rVar).a());
                    if (MucangConfig.v()) {
                        cn.mucang.android.core.utils.t.h("DebugSignal", "收到模块版本信息" + JSON.toJSONString(DeviceUtils.g()));
                        u.h("收到模块版本信息" + JSON.toJSONString(DeviceUtils.g()));
                    }
                    break;
                case 85:
                    LiveBus.c(new x(i, rVar));
                    break;
                case 87:
                    LiveBus.c(new g0(i, rVar));
                    break;
                case 89:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.v(i, rVar));
                    break;
                case 91:
                    LiveBus.c(new w(i, rVar));
                    break;
                case 93:
                    LiveBus.c(new q(i, rVar));
                    break;
                case 96:
                    cn.mucang.android.jiakaoyi.signal.e.e.c(rVar.f());
                    break;
                case 113:
                    cn.mucang.android.jiakaoyi.signal.communicate.x.a.b().c(rVar.j(), rVar.j());
                    break;
                case 117:
                    LiveBus.c(new d0(i, rVar));
                    break;
                case 119:
                    LiveBus.c(new s(i, rVar));
                    break;
                case 121:
                    LiveBus.c(new o(i, rVar));
                    break;
                case 130:
                    cn.mucang.android.jiakaoyi.signal.k.e0.j().O(new cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.b(i, rVar));
                    break;
                case l.Receive_GEAR_DATA /* 146 */:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.r(i, rVar));
                    break;
                case 193:
                    new cn.mucang.android.jiakaoyi.signal.communicate.receive.d(i, rVar);
                    break;
                case l.Receive_AutoPilot_Response /* 194 */:
                    new cn.mucang.android.jiakaoyi.signal.communicate.receive.e(i, rVar);
                    m.h().Q(Cmd.AutoPilotResponse, rVar.q());
                    break;
                case l.RECEIVE_FAULT_CODE_CLEAR_RET /* 241 */:
                    LiveBus.c(new a(this, i, rVar));
                    break;
                case l.Receive_AutoAssist_Response /* 243 */:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.c(i, rVar));
                    break;
                case l.Receive_AutoAssist_Error /* 244 */:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.b(i, rVar));
                    break;
                case l.Receive_Bt_3d_Pos /* 254 */:
                    LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.h(i, rVar));
                    break;
            }
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("DebugSignal", "类型:" + i + " dispatchHandler异常" + e2.getLocalizedMessage());
            StringBuilder sb5 = new StringBuilder();
            sb5.append("信号解析出错:");
            sb5.append(q0.d(e2));
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb5.toString());
        }
    }
}
