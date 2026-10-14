package cn.mucang.android.jiakaoyi.teachingk2.autopilot;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotOrder;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f6211a = Executors.newSingleThreadExecutor();

    static /* synthetic */ v a(byte[] bArr) {
        Tiger.h(new AutoTeachDebugger(h0.a(bArr)));
        m.h().Q(Cmd.AutoPilotCtl, bArr);
        return null;
    }

    static /* synthetic */ v b(AutoPilotOrder autoPilotOrder) {
        u.h(k0.a(R.string.teachingk2_auto_teach_order_timeout));
        cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送超时:" + ((int) autoPilotOrder.order) + ":" + autoPilotOrder.desc);
        return null;
    }

    static /* synthetic */ v c(AutoPilotOrder autoPilotOrder, cn.mucang.android.jiakaoyi.framework.h.b bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.m mVar) {
        if (mVar.f5428a) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送成功:" + ((int) autoPilotOrder.order) + ":" + autoPilotOrder.desc);
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送失败:" + ((int) autoPilotOrder.order) + ":" + autoPilotOrder.desc);
        }
        if (bVar == null) {
            return null;
        }
        bVar.callback(mVar);
        return null;
    }

    static /* synthetic */ void d(AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, Object obj, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0124d c0124d) {
        if (c0124d.c == atomicInteger.get() && c0124d.f5428a) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("收到路径发送回应成功:start=" + c0124d.c + ",end=" + c0124d.f5414d + ",size=" + c0124d.b);
        } else {
            atomicBoolean.set(true);
            cn.mucang.android.jiakaoyi.framework.log.f.b("收到路径发送回应错误:start=" + c0124d.c + ",end=" + c0124d.f5414d + ",size=" + c0124d.b + ",等待响应的start=" + atomicInteger.get());
        }
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(boolean z, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a> bVar) {
        if (MucangConfig.getContext() instanceof TeachEventHandler) {
            if (!((TeachEventHandler) MucangConfig.getContext()).a(AutoTeachEvent.OpenAutoTeach)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("sendCollectOrder failed , 自动驾驶开关未打开");
                return;
            }
            cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
            AutoPilotOrder autoPilotOrder = AutoPilotOrder.Collect;
            vVar.c(autoPilotOrder.order);
            vVar.c(z ? (byte) 1 : (byte) 0);
            f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a.class, autoPilotOrder);
        }
    }

    private static <T extends cn.mucang.android.jiakaoyi.signal.communicate.receive.m> void f(final byte[] bArr, final cn.mucang.android.jiakaoyi.framework.h.b<T> bVar, Class<T> cls, final AutoPilotOrder autoPilotOrder) {
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送指令:" + ((int) autoPilotOrder.order) + ":" + autoPilotOrder.desc);
        new MessageSender(cls, 2, 3000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autopilot.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.a(bArr);
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autopilot.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.b(autoPilotOrder);
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autopilot.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.c(autoPilotOrder, bVar, (cn.mucang.android.jiakaoyi.signal.communicate.receive.m) obj);
            }
        }).i();
    }

    public static void g(Gear gear, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b> bVar) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder autoPilotOrder = AutoPilotOrder.Gear;
        vVar.c(autoPilotOrder.order);
        vVar.h((short) SelectCarManager.b().getConfig().getCode());
        vVar.c((byte) gear.gear);
        f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b.class, autoPilotOrder);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x01bd, code lost:
    
        r10 = r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void h(java.util.List<cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel> r19, cn.mucang.android.jiakaoyi.framework.h.b<java.lang.Boolean> r20) {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.h(java.util.List, cn.mucang.android.jiakaoyi.framework.h.b):void");
    }

    public static void i(boolean z, int i, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e> bVar) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder autoPilotOrder = AutoPilotOrder.Speed;
        vVar.c(autoPilotOrder.order);
        vVar.c(z ? (byte) 1 : (byte) 0);
        vVar.c((byte) i);
        f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e.class, autoPilotOrder);
    }

    public static void j(AutoPilotState autoPilotState, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f> bVar) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder autoPilotOrder = AutoPilotOrder.State;
        vVar.c(autoPilotOrder.order);
        vVar.c(autoPilotState.cmd);
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送状态：" + ((int) autoPilotState.cmd));
        f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f.class, autoPilotOrder);
    }

    public static void k(boolean z, short s, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g> bVar) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder autoPilotOrder = AutoPilotOrder.Wheel;
        vVar.c(autoPilotOrder.order);
        vVar.c(z ? (byte) 1 : (byte) 0);
        vVar.h(s);
        f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g.class, autoPilotOrder);
    }

    public static void l(byte b, byte b2, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c> bVar) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder autoPilotOrder = AutoPilotOrder.Motor;
        vVar.c(autoPilotOrder.order);
        vVar.c(b);
        vVar.c(b2);
        f(vVar.b(), bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c.class, autoPilotOrder);
    }
}
