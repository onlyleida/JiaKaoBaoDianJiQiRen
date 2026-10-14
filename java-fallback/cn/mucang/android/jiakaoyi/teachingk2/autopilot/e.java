package cn.mucang.android.jiakaoyi.teachingk2.autopilot;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotOrder;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.q;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.h;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.ResultCode;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f6211a = null;

    static {
        f6211a = Executors.newSingleThreadExecutor();
    }

    static /* synthetic */ v a(byte[] r2) {
        Tiger.h(new AutoTeachDebugger(h0.a(r2)));
        m.h().Q(Cmd.AutoPilotCtl, r2);
        return null;
    }

    static /* synthetic */ v b(AutoPilotOrder r2) {
        u.h(k0.a(R.string.teachingk2_auto_teach_order_timeout));
        cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送超时:" + r2.order + ":" + r2.desc);
        return null;
    }

    static /* synthetic */ v c(AutoPilotOrder r3, cn.mucang.android.jiakaoyi.framework.h.b r4, cn.mucang.android.jiakaoyi.signal.communicate.receive.m r5) {
        if (r5.f5428a == false) goto L5;
        cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送成功:" + r3.order + ":" + r3.desc);
    L6:
        if (r4 == null) goto L10;
        r4.callback(r5);
        return null;
    L10:
        return null;
    L5:
        cn.mucang.android.jiakaoyi.framework.log.f.b("指令发送失败:" + r3.order + ":" + r3.desc);
        goto L6
    }

    static /* synthetic */ void d(AtomicInteger r2, AtomicBoolean r3, Object r4, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0129d r5) {
        if (r5.c == r2.get()) goto L5;
    L7:
        r3.set(true);
        cn.mucang.android.jiakaoyi.framework.log.f.b("收到路径发送回应错误:start=" + r5.c + ",end=" + r5.f5414d + ",size=" + r5.b + ",等待响应的start=" + r2.get());
    L8:
        monitor-enter(r4);
        r4.notifyAll();     // Catch: Throwable -> L12
        monitor-exit(r4);     // Catch: Throwable -> L12
        return;
    L12:
        th = move-exception;
        throw th;
    L5:
        if (r5.f5428a == false) goto L7;
        cn.mucang.android.jiakaoyi.framework.log.f.b("收到路径发送回应成功:start=" + r5.c + ",end=" + r5.f5414d + ",size=" + r5.b);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(boolean r3, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a> r4) {
        if ((MucangConfig.getContext() instanceof h) == true) goto L6;
        return;
    L6:
        if (((h) MucangConfig.getContext()).a(AutoTeachEvent.OpenAutoTeach) == false) goto L8;
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.Collect;
        r0.c(r1.order);
        r0.c(r3 ? 1 : 0);
        f(r0.b(), r4, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a.class, r1);
        return;
    L8:
        cn.mucang.android.jiakaoyi.framework.log.f.o("sendCollectOrder failed , 自动驾驶开关未打开");
    }

    private static <T extends cn.mucang.android.jiakaoyi.signal.communicate.receive.m> void f(final byte[] r9, final cn.mucang.android.jiakaoyi.framework.h.b<T> r10, Class<T> r11, final AutoPilotOrder r12) {
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送指令:" + r12.order + ":" + r12.desc);
        new q(r11, 2, 3000, new c(r9), new d(r12), new b(r12, r10)).i();
    }

    public static void g(Gear r3, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b> r4) {
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.Gear;
        r0.c(r1.order);
        r0.h((short) cn.mucang.android.jiakaoyi.signal.car.d.b().getConfig().getCode());
        r0.c((byte) r3.gear);
        f(r0.b(), r4, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b.class, r1);
    }

    public static void h(List<TraceItemModel> r19, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> r20) {
        Class<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0129d> r1 = cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0129d.class;
        AtomicInteger r2 = new AtomicInteger();
        final AtomicBoolean r3 = new AtomicBoolean();
        r3.set(false);
        final Object r5 = new Object();
        final AtomicInteger r6 = new AtomicInteger();
        cn.mucang.android.jiakaoyi.framework.h.b r7 = new a(r6, r3, r5);
        Tiger.j(r7, r1);
        int r8 = r19.size();
        StringBuilder r9 = new StringBuilder("实际发送数据:\n");
        int r10 = 0;
    L3:
        if (r10 >= r8) goto L49;
        if (r2.get() <= 3) goto L8;
        r3.set(true);
    L8:
        if (r3.get() == true) goto L49;
        int r11 = r10 + 18;
        if (r11 <= r8) goto L13;
        r11 = r8;
    L13:
        if (r11 != r8) goto L15;
        int r12 = 1;
    L16:
        cn.mucang.android.jiakaoyi.signal.communicate.v r14 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        r14.c(AutoPilotOrder.Path.order);
        r14.c((byte) r12);
        r14.f(r19.size());
        r14.f(r10);
        int r13 = r11 - 1;
        r14.f(r13);
        int r15 = r10;
    L17:
        if (r15 >= r11) goto L23;
        TraceItemModel r16 = r19.get(r15);
        r14.c(r16.pointType);
        int r17 = r11;
        if (r16.pointType != 1) goto L22;
        cn.mucang.android.jiakaoyi.framework.log.f.b("设置特殊点位,x:" + (r16.x * 1000.0d) + " y:" + (r16.y * 1000.0d));
    L22:
        r14.h(r16.step);
        r14.c(r16.gear);
        r14.c(r16.honk);
        r14.c(r16.light);
        r14.g((long) (r16.x * 1000.0d));
        r14.g((long) (r16.y * 1000.0d));
        r14.h(r16.heading);
        r14.h(r16.wheel);
        r9.append(r16.x);
        r9.append(",");
        r9.append(r16.y);
        r9.append("\n");
        r15 = r15 + 1;
        r1 = r1;
        r11 = r17;
        goto L17
    L23:
        int r18 = r11;
        r1 = r1;
        r6.set(r10);
        StringBuilder r0 = new StringBuilder();
        r0.append("发送轨迹指令:");
        AutoPilotOrder r4 = AutoPilotOrder.Path;
        r0.append(r4.order);
        r0.append(":");
        r0.append(r4.desc);
        r0.append(",start=");
        r0.append(r10);
        r0.append(",end=");
        r0.append(r13);
        r0.append(",size=");
        r0.append(r8);
        cn.mucang.android.jiakaoyi.framework.log.f.b(r0.toString());
        byte[] r21 = r14.b();
        m.h().Q(Cmd.AutoPilotCtl, r21);
        Tiger.h(new AutoTeachDebugger(h0.a(r21)));
        monitor-enter(r5);
        long r110 = System.currentTimeMillis();     // Catch: Throwable -> L41 InterruptedException -> L43
        r6 = r6;
        r7 = r7;
        r5.wait(3000);     // Catch: Throwable -> L41 InterruptedException -> L60
        if ((System.currentTimeMillis() - r110) <= 2950) goto L37;
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送轨迹指令超时,重新发送:" + r4.order + ":" + r4.desc + ",start=" + r10 + ",end=" + r13 + ",size=" + r8);     // Catch: Throwable -> L41 InterruptedException -> L60
        if (r3.get() == true) goto L31;
        r2.getAndIncrement();     // Catch: Throwable -> L41 InterruptedException -> L60
        monitor-exit(r5);     // Catch: Throwable -> L41
        goto L3
    L31:
        monitor-exit(r5);     // Catch: Throwable -> L41
    L50:
        cn.mucang.android.jiakaoyi.framework.log.f.b(r9.toString());
        Tiger.l(r7, r1);
        if (r3.get() == false) goto L53;
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送轨迹数据失败");
        r20.callback(Boolean.FALSE);
    L54:
        StringBuilder r22 = new StringBuilder();
        r22.append("下发自动示教轨迹");
        if (r3.get() == false) goto L57;
        String r23 = ResultCode.MSG_FAILED;
    L58:
        r22.append(r23);
        r22.append("：");
        r22.append(JSON.toJSONString(r19));
        cn.mucang.android.jiakaoyi.framework.log.f.c(r22.toString());
        return;
    L57:
        r23 = ResultCode.MSG_SUCCESS;
        goto L58
    L53:
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送轨迹数据成功");
        r20.callback(Boolean.TRUE);
        goto L54
    L37:
        r2.set(0);     // Catch: Throwable -> L41 InterruptedException -> L60
        monitor-exit(r5);     // Catch: Throwable -> L41
        r10 = r18;
    L44:
        r3.set(true);     // Catch: Throwable -> L41
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送轨迹指令线程被打断");     // Catch: Throwable -> L41
        monitor-exit(r5);     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        throw th;
    L43:
        r7 = r7;
        goto L44
    L15:
        r12 = 0;
    L49:
        r1 = r1;
        r7 = r7;
        goto L50
    }

    public static void i(boolean r3, int r4, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e> r5) {
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.Speed;
        r0.c(r1.order);
        r0.c(r3 ? 1 : 0);
        r0.c((byte) r4);
        f(r0.b(), r5, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e.class, r1);
    }

    public static void j(AutoPilotState r4, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f> r5) {
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.State;
        r0.c(r1.order);
        r0.c(r4.cmd);
        cn.mucang.android.jiakaoyi.framework.log.f.b("发送状态：" + r4.cmd);
        f(r0.b(), r5, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f.class, r1);
    }

    public static void k(boolean r3, short r4, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g> r5) {
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.Wheel;
        r0.c(r1.order);
        r0.c(r3 ? 1 : 0);
        r0.h(r4);
        f(r0.b(), r5, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g.class, r1);
    }

    public static void l(byte r3, byte r4, cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c> r5) {
        cn.mucang.android.jiakaoyi.signal.communicate.v r0 = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        AutoPilotOrder r1 = AutoPilotOrder.Motor;
        r0.c(r1.order);
        r0.c(r3);
        r0.c(r4);
        f(r0.b(), r5, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c.class, r1);
    }
}
