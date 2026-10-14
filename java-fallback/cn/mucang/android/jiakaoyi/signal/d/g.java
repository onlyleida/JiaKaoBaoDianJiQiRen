package cn.mucang.android.jiakaoyi.signal.d;

import android.location.Location;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.m;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
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
import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.k0;
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
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.handle.gps.j;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mobile.auth.gatewayauth.ResultCode;
import java.util.HashMap;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.handle.gear.a f5550a;
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
        a(g r1, int r2, r r3) {
            super(r2, r3);
        }
    }

    public g() {
        this.f5550a = new cn.mucang.android.jiakaoyi.signal.handle.gear.a();
        new HashMap();
        this.b = new long[16];
        this.c = new short[16];
        this.f5551d = 0;
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
        Gear r0 = Gear.GearN;
        if (m.f() == false) goto L5;
    L6:
        boolean r1 = i0.b("keyFingerprintDefault", true);
        this.n = r1;
        if (r1 == false) goto L12;
        cn.mucang.android.jiakaoyi.signal.center.config.a r2 = cn.mucang.android.jiakaoyi.signal.center.config.a.h();
        CarSignal r3 = CarSignal.FingerPrint;
        if (r2.m(r3) == false) goto L11;
        cn.mucang.android.jiakaoyi.signal.center.config.a.h().c(r3);
    L11:
        i0.i("keyFingerprintDefault", false);
        this.n = false;
    L12:
        this.o = h.a();
        return;
    L5:
        if (m.l() == false) goto L12;
        goto L6
    }

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
    private boolean b(cn.mucang.android.jiakaoyi.signal.communicate.receive.e0 r27, cn.mucang.android.jiakaoyi.signal.center.model.d r28) {
        /*  JADX ERROR: Simple mode code generation failed
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x040d: CAST (r6v7 ?? I:long) = (long) (r9v1 int) in method: cn.mucang.android.jiakaoyi.signal.d.g.b(cn.mucang.android.jiakaoyi.signal.communicate.receive.e0, cn.mucang.android.jiakaoyi.signal.center.model.d):boolean, file: classes3.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.MethodGen.generateSimpleCode(MethodGen.java:348)
            	at jadx.core.codegen.MethodGen.addSimpleMethodCode(MethodGen.java:316)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:279)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.ArgType.getPrimitiveType()" because "type" is null
            	at jadx.core.codegen.ClassGen.useType(ClassGen.java:564)
            	at jadx.core.codegen.InsnGen.useType(InsnGen.java:269)
            	at jadx.core.codegen.InsnGen.declareVar(InsnGen.java:166)
            	at jadx.core.codegen.InsnGen.declareVar(InsnGen.java:159)
            	at jadx.core.codegen.InsnGen.assignVar(InsnGen.java:152)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:299)
            	... 11 more
            */
        /*
            Method dump skipped, instruction units count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.signal.d.g.b(cn.mucang.android.jiakaoyi.signal.communicate.receive.e0, cn.mucang.android.jiakaoyi.signal.center.model.d):boolean");
    }

    private boolean c(long r6) {
        long r0 = this.f5551d;
        if (r0 != 0) goto L5;
    L7:
        return false;
    L5:
        if ((r6 - r0) <= 250) goto L7;
        return true;
    }

    private cn.mucang.android.jiakaoyi.signal.center.model.b d(t r4) {
        cn.mucang.android.jiakaoyi.signal.center.model.b r0 = new cn.mucang.android.jiakaoyi.signal.center.model.b();
        r0.f5281g.set(r4.f5442a);
        r0.j = r4.f5447h;
        r0.f5278d = r4.b;
        r0.f5277a = r4.c;
        r0.f5282h = r4.f5443d;
        r0.b = r4.i;
        float r1 = r4.f5446g;
        r0.f5279e = r1;
        r0.f5280f = r1;
        r0.i = r4.f5445f;
        return r0;
    }

    private boolean e(long[] r7, int r8, boolean r9, int r10, boolean r11, long r12) {
        if (r9 == false) goto L6;
        r7[r8] = r12;
        return true;
    L6:
        long r1 = r7[r8];
        if (r1 <= 0) goto L16;
        if (r11 == false) goto L12;
        r7[r8] = 0;
        return false;
    L12:
        if ((r12 - r1) < r10) goto L15;
        r7[r8] = 0;
        return false;
    L15:
        return true;
    L16:
        return false;
    }

    private boolean f(int r8, boolean r9, boolean r10, long r11, long r13) {
        long[] r0 = this.b;
        long r1 = r0[r8];
        if (r9 == false) goto L21;
        if (r1 != 0) goto L8;
        r0[r8] = r11;
    L35:
        return false;
    L8:
        if ((r11 - r1) <= 250) goto L10;
        boolean r12 = true;
    L11:
        if (r12 == false) goto L17;
        short[] r14 = this.c;
        if (r14[r8] != 0) goto L17;
        r14[r8] = 1;
        r0[r8] = r11;
        return true;
    L17:
        if (this.c[r8] != 1) goto L35;
        r0[r8] = r11;
        return true;
    L10:
        r12 = false;
        goto L11
    L21:
        if (r1 <= 0) goto L34;
        if (r10 == false) goto L26;
        r0[r8] = 0;
        this.c[r8] = 0;
        return false;
    L26:
        if ((r11 - r1) < r13) goto L30;
        r0[r8] = 0;
        this.c[r8] = 0;
        return false;
    L30:
        if (this.c[r8] == 1) goto L36;
        return false;
    L36:
        return true;
    L34:
        this.c[r8] = 0;
        goto L35
    }

    private void g(t r2) {
        cn.mucang.android.jiakaoyi.signal.center.model.b r3 = d(r2);
        if (k.c(r3.f5281g) == true) goto L5;
    L7:
        cn.mucang.android.core.utils.t.d("SignalHandler", "handleLocation() location is invalid");
        return;
    L5:
        if (j(r3.f5281g) == false) goto L7;
        j.f5733a.o(r3);
    }

    private void h(final e0 r2) {
        cn.mucang.android.jiakaoyi.signal.c.d.u(new d(this, r2));
    }

    private boolean i() {
        if (m.n() == false) goto L6;
        return false;
    L6:
        if (cn.mucang.android.jiakaoyi.signal.car.d.b() != null) goto L8;
    L11:
        return false;
    L8:
        if (cn.mucang.android.jiakaoyi.signal.car.d.b().getConfig() == null) goto L11;
        return cn.mucang.android.jiakaoyi.signal.car.d.b().getConfig().getSignalDelay();
    }

    private boolean j(Location r6) {
        if (r6.getLatitude() > 1.0E-7d) goto L5;
    L7:
        return false;
    L5:
        if (r6.getLongitude() <= 1.0E-7d) goto L7;
        return true;
    }

    static /* synthetic */ v k() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("0x08 发现与本地盒子版本不一致 clearExtendConfig");
        cn.mucang.android.jiakaoyi.signal.center.config.a.h().d();
        return null;
    }

    private /* synthetic */ boolean l(e0 r1, cn.mucang.android.jiakaoyi.signal.center.model.d r2) {
        return b(r1, r2);
    }

    static /* synthetic */ v n(String r2, byte r3) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 失败1 ：" + r2 + "，" + r3);
        return null;
    }

    static /* synthetic */ void o() {
        final String r0 = cn.mucang.android.jiakaoyi.signal.car.d.g();
        if (n0.g(r0) == false) goto L11;
        final byte r1 = Integer.valueOf(r0).byteValue();     // Catch: Exception -> L6
        cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 " + r0);     // Catch: Exception -> L6
        McCommandManager.f5380a.o(r1, new c(r0, r1));     // Catch: Exception -> L6
        return;
    L6:
        e = move-exception;
        cn.mucang.android.jiakaoyi.framework.log.f.o("信号层设置车型 失败2 ：" + r0 + " " + cn.mucang.android.core.utils.t.g(e));
        return;
    }

    private void p() {
        u.c(e.f5548a);
    }

    public void a(int r10, r r11) {
    L110:
        e = move-exception;
        cn.mucang.android.core.utils.t.d("DebugSignal", "类型:" + r10 + " dispatchHandler异常" + e.getLocalizedMessage());
        StringBuilder r12 = new StringBuilder();
        r12.append("信号解析出错:");
        r12.append(q0.d(e));
        cn.mucang.android.jiakaoyi.framework.log.f.o(r12.toString());
        return;
    L4:
        if (MucangConfig.v() == false) goto L6;
        Integer.toHexString(r10);     // Catch: Exception -> L110
    L6:
        String r5 = ResultCode.MSG_SUCCESS;
        switch(r10) {
            case 3: goto L101;
            case 8: goto L96;
            case 16: goto L89;
            case 17: goto L87;
            case 18: goto L83;
            case 20: goto L81;
            case 22: goto L80;
            case 24: goto L79;
            case 25: goto L75;
            case 28: goto L74;
            case 30: goto L73;
            case 33: goto L72;
            case 35: goto L71;
            case 36: goto L66;
            case 37: goto L65;
            case 39: goto L53;
            case 40: goto L49;
            case 41: goto L36;
            case 67: goto L35;
            case 69: goto L35;
            case 71: goto L35;
            case 73: goto L35;
            case 77: goto L34;
            case 79: goto L33;
            case 81: goto L32;
            case 82: goto L31;
            case 83: goto L30;
            case 84: goto L27;
            case 85: goto L26;
            case 87: goto L25;
            case 89: goto L24;
            case 91: goto L23;
            case 93: goto L22;
            case 95: goto L35;
            case 96: goto L21;
            case 97: goto L35;
            case 99: goto L35;
            case 113: goto L20;
            case 117: goto L19;
            case 119: goto L18;
            case 121: goto L17;
            case 129: goto L72;
            case 130: goto L16;
            case 132: goto L66;
            case 133: goto L49;
            case 146: goto L15;
            case 193: goto L14;
            case 194: goto L13;
            case 241: goto L12;
            case 243: goto L11;
            case 244: goto L10;
            case 254: goto L9;
            default: goto L159;
        };
    L9:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.h(r10, r11));     // Catch: Exception -> L110
        return;
    L10:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.b(r10, r11));     // Catch: Exception -> L110
        return;
    L11:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.c(r10, r11));     // Catch: Exception -> L110
        return;
    L12:
        LiveBus.c(new a(this, r10, r11));     // Catch: Exception -> L110
        return;
    L13:
        new cn.mucang.android.jiakaoyi.signal.communicate.receive.e(r10, r11);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AutoPilotResponse, r11.q());     // Catch: Exception -> L110
        return;
    L14:
        new cn.mucang.android.jiakaoyi.signal.communicate.receive.d(r10, r11);     // Catch: Exception -> L110
        return;
    L15:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.r(r10, r11));     // Catch: Exception -> L110
        return;
    L16:
        cn.mucang.android.jiakaoyi.signal.k.e0.j().O(new cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.b(r10, r11));     // Catch: Exception -> L110
        return;
    L17:
        LiveBus.c(new o(r10, r11));     // Catch: Exception -> L110
        return;
    L18:
        LiveBus.c(new s(r10, r11));     // Catch: Exception -> L110
        return;
    L19:
        LiveBus.c(new d0(r10, r11));     // Catch: Exception -> L110
        return;
    L20:
        cn.mucang.android.jiakaoyi.signal.communicate.x.a.b().c(r11.j(), r11.j());     // Catch: Exception -> L110
        return;
    L21:
        cn.mucang.android.jiakaoyi.signal.e.e.c(r11.f());     // Catch: Exception -> L110
        return;
    L22:
        LiveBus.c(new q(r10, r11));     // Catch: Exception -> L110
        return;
    L23:
        LiveBus.c(new w(r10, r11));     // Catch: Exception -> L110
        return;
    L24:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.v(r10, r11));     // Catch: Exception -> L110
        return;
    L25:
        LiveBus.c(new g0(r10, r11));     // Catch: Exception -> L110
        return;
    L26:
        LiveBus.c(new x(r10, r11));     // Catch: Exception -> L110
        return;
    L27:
        cn.mucang.android.jiakaoyi.framework.utils.r.t(new cn.mucang.android.jiakaoyi.signal.communicate.receive.u(r10, r11).a());     // Catch: Exception -> L110
        if (MucangConfig.v() == false) goto L132;
        cn.mucang.android.core.utils.t.h("DebugSignal", "收到模块版本信息" + JSON.toJSONString(cn.mucang.android.jiakaoyi.framework.utils.r.g()));     // Catch: Exception -> L110
        u.h("收到模块版本信息" + JSON.toJSONString(cn.mucang.android.jiakaoyi.framework.utils.r.g()));     // Catch: Exception -> L110
        return;
    L132:
        return;
    L30:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.k(r10, r11));     // Catch: Exception -> L110
        return;
    L31:
        byte[] r13 = r11.f();     // Catch: Exception -> L110
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.handle.gps.d(r13));     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.e.e.b(r13);     // Catch: Exception -> L110
        return;
    L32:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.f(r10, r11));     // Catch: Exception -> L110
        return;
    L33:
        LiveBus.c(new f0(r10, r11));     // Catch: Exception -> L110
        return;
    L34:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.a(r10, r11));     // Catch: Exception -> L110
        return;
    L35:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.i(r10, r11));     // Catch: Exception -> L110
        return;
    L36:
        GpsAnalysis.f().j();     // Catch: Exception -> L110
        l0 r0 = new l0(r10, r11);     // Catch: Exception -> L110
        LiveBus.c(r0);     // Catch: Exception -> L110
        int r14 = cn.mucang.android.jiakaoyi.signal.c.d.m.h();     // Catch: Exception -> L110
        if (r14 == 4) goto L44;
        StringBuilder r3 = new StringBuilder();     // Catch: Exception -> L110
        r3.append("0x29:gpsType=");     // Catch: Exception -> L110
        r3.append(r14);     // Catch: Exception -> L110
        r3.append(",返回的包长度=");     // Catch: Exception -> L110
        r3.append(r0.b);     // Catch: Exception -> L110
        r3.append(",index=");     // Catch: Exception -> L110
        r3.append(r0.c);     // Catch: Exception -> L110
        r3.append(",state=");     // Catch: Exception -> L110
        r3.append(r0.f5427d);     // Catch: Exception -> L110
        r3.append(" : ");     // Catch: Exception -> L110
        if (r0.f5428a == false) goto L42;
        String r15 = ResultCode.MSG_SUCCESS;
    L43:
        r3.append(r15);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.i(r3.toString());     // Catch: Exception -> L110
        goto L44
    L42:
        r15 = ResultCode.MSG_FAILED;
    L44:
        StringBuilder r16 = new StringBuilder();     // Catch: Exception -> L110
        r16.append("序号=");     // Catch: Exception -> L110
        r16.append(r0.c);     // Catch: Exception -> L110
        r16.append(",state=");     // Catch: Exception -> L110
        r16.append(r0.f5427d);     // Catch: Exception -> L110
        r16.append(" : ");     // Catch: Exception -> L110
        if (r0.f5428a == true) goto L48;
        r5 = ResultCode.MSG_FAILED;
    L48:
        r16.append(r5);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.handle.gps.g.a(r16.toString());     // Catch: Exception -> L110
        return;
    L49:
        j0 r1 = new j0(r10, r11);     // Catch: Exception -> L110
        if (MucangConfig.v() == false) goto L52;
        cn.mucang.android.core.utils.t.h("DebugOta", "收到固件升级进度上报" + JSON.toJSONString(r1));     // Catch: Exception -> L110
    L52:
        cn.mucang.android.jiakaoyi.signal.k.e0.j().L(r1);     // Catch: Exception -> L110
        return;
    L53:
        GpsAnalysis.f().j();     // Catch: Exception -> L110
        m0 r2 = new m0(r10, r11);     // Catch: Exception -> L110
        LiveBus.c(r2);     // Catch: Exception -> L110
        int r17 = cn.mucang.android.jiakaoyi.signal.c.d.m.h();     // Catch: Exception -> L110
        if (r17 == 4) goto L60;
        StringBuilder r4 = new StringBuilder();     // Catch: Exception -> L110
        r4.append("0x27:gpsType=");     // Catch: Exception -> L110
        r4.append(r17);     // Catch: Exception -> L110
        r4.append(",发送rtcm返回的包长度=");     // Catch: Exception -> L110
        r4.append(r2.b);     // Catch: Exception -> L110
        r4.append(" : ");     // Catch: Exception -> L110
        if (r2.f5428a == false) goto L58;
        String r18 = ResultCode.MSG_SUCCESS;
    L59:
        r4.append(r18);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.i(r4.toString());     // Catch: Exception -> L110
        goto L60
    L58:
        r18 = ResultCode.MSG_FAILED;
    L60:
        StringBuilder r19 = new StringBuilder();     // Catch: Exception -> L110
        r19.append("包长度=");     // Catch: Exception -> L110
        r19.append(r2.b);     // Catch: Exception -> L110
        r19.append(" : ");     // Catch: Exception -> L110
        if (r2.f5428a == true) goto L64;
        r5 = ResultCode.MSG_FAILED;
    L64:
        r19.append(r5);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.handle.gps.g.a(r19.toString());     // Catch: Exception -> L110
        return;
    L65:
        cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x25，升级后重启完毕");     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.k.e0.j().P();     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x25");     // Catch: Exception -> L110
        p();     // Catch: Exception -> L110
        return;
    L66:
        cn.mucang.android.core.utils.t.h("DebugOta", "收到分包完成应答");     // Catch: Exception -> L110
        if (p.b() == true) goto L69;
        boolean r110 = new h0(r10, r11).f5424a;     // Catch: Exception -> L110
    L70:
        cn.mucang.android.jiakaoyi.signal.k.e0.j().M(r110);     // Catch: Exception -> L110
        return;
    L69:
        r110 = new cn.mucang.android.jiakaoyi.signal.communicate.receive.n0.a(r10, r11).f5430a;     // Catch: Exception -> L110
        goto L70
    L71:
        cn.mucang.android.jiakaoyi.signal.k.e0.j().N(new cn.mucang.android.jiakaoyi.signal.communicate.receive.i0(r10, r11));     // Catch: Exception -> L110
        return;
    L72:
        cn.mucang.android.core.utils.t.h("RobotCommunicateManager", "收到ota应答");     // Catch: Exception -> L110
        y r6 = new y(r10, r11);     // Catch: Exception -> L110
        LiveBus.d(y.class).l(r6);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.k.e0.j().Q(r6);     // Catch: Exception -> L110
        return;
    L73:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.p(r10, r11));     // Catch: Exception -> L110
        return;
    L74:
        LiveBus.c(new cn.mucang.android.jiakaoyi.signal.communicate.receive.g(r10, r11));     // Catch: Exception -> L110
        return;
    L75:
        ReceiveWaitOta r7 = new ReceiveWaitOta(r10, r11, this.o);     // Catch: Exception -> L110
        HardwareInfo r111 = r7.map();     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x19，" + r111.toString());     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.o("消息0x19，更新硬件信息：" + r111.string());     // Catch: Exception -> L110
        if (r111.hardwareVersion == 1) goto L78;
        r111.hardwareVersion = 1;     // Catch: Exception -> L110
    L78:
        cn.mucang.android.jiakaoyi.framework.utils.r.r(r111, null);     // Catch: Exception -> L110
        LiveBus.c(r7);     // Catch: Exception -> L110
        return;
    L79:
        cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x18");     // Catch: Exception -> L110
        LiveBus.c(new k0(r10, r11));     // Catch: Exception -> L110
        return;
    L80:
        LiveBus.c(new c0(r10, r11));     // Catch: Exception -> L110
        return;
    L81:
        LiveBus.c(new b0(r10, r11));     // Catch: Exception -> L110
        return;
    L87:
        g(new t(r10, r11));     // Catch: Exception -> L110
        return;
    L96:
        HardwareInfo r112 = new ReceiveHardwareInfo(r10, r11, this.o).map();     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.o("盒子上传的硬件信息：" + r112.string());     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.utils.r.p(r112.hardwareNumber, r112.serialNumber);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.utils.r.r(r112, b.f5545a);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.utils.r.w(r112.isSafeSpeedCheck);     // Catch: Exception -> L110
        LiveBus.d(HardwareInfo.class).l(r112);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.o("获取本地设备信息：" + cn.mucang.android.jiakaoyi.framework.utils.r.e() + " ; " + cn.mucang.android.jiakaoyi.framework.utils.r.j());     // Catch: Exception -> L110
        String r8 = cn.mucang.android.jiakaoyi.signal.car.d.g();     // Catch: Exception -> L110
        if (n0.g(r8) == true) goto L99;
        return;
    L99:
        if (r8.equals(r112.carType + "") == true) goto L157;
        cn.mucang.android.jiakaoyi.framework.log.f.o("盒子的车型和app 保存的车型不一样 ,发消息重新选择车型 app:" + r8 + ";底层:" + r112.carType);     // Catch: Exception -> L110
        p();     // Catch: Exception -> L110
        return;
    L157:
        return;
    L101:
        cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x03");     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.communicate.receive.j r9 = new cn.mucang.android.jiakaoyi.signal.communicate.receive.j(r10, r11);     // Catch: Exception -> L110
        LocalCarModel r113 = cn.mucang.android.jiakaoyi.signal.car.d.e();     // Catch: Exception -> L110
        if (r113 != null) goto L104;
    L108:
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.j.class).l(r9);     // Catch: Exception -> L110
        return;
    L104:
        if (r113.getConfig() == null) goto L108;
        cn.mucang.android.jiakaoyi.framework.log.f.o("接受到盒子消息 0x03 保存车型 " + r113.getConfig().getCode());     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.signal.car.d.i(r113);     // Catch: Exception -> L110
        HardwareInfo r20 = cn.mucang.android.jiakaoyi.framework.utils.r.d();     // Catch: Exception -> L110
        if (r20 == null) goto L108;
        r20.carType = r113.getConfig().getCode();     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.utils.r.r(r20, null);     // Catch: Exception -> L110
        cn.mucang.android.jiakaoyi.framework.log.f.o("切换车型后 更新hardwareInfo" + r20.string());     // Catch: Exception -> L110
        goto L108
    L159:
        return;
    L83:
        if (p.b() == true) goto L85;
        z r21 = new z(r10, r11);     // Catch: Exception -> L110
    L86:
        LiveBus.c(r21);     // Catch: Exception -> L110
        return;
    L85:
        r21 = new z(r10, r11, true);     // Catch: Exception -> L110
        goto L86
    L89:
        if (p.b() == true) goto L91;
    L94:
        e0 r22 = new e0(r10, r11, this.o);     // Catch: Exception -> L110
    L95:
        LiveBus.d(e0.class).l(r22);     // Catch: Exception -> L110
        h(r22);     // Catch: Exception -> L110
        MucangConfig.v();     // Catch: Exception -> L110
        return;
    L91:
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a() == true) goto L94;
        r22 = new e0(r10, r11, true, this.o);     // Catch: Exception -> L110
        goto L95
    }

    public /* synthetic */ boolean m(e0 r1, cn.mucang.android.jiakaoyi.signal.center.model.d r2) {
        return l(r1, r2);
    }
}
