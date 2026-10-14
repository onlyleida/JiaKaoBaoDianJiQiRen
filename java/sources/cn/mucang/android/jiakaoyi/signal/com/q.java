package cn.mucang.android.jiakaoyi.signal.com;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public class q {
    static /* synthetic */ byte[] a(int i, int i2) {
        v vVar = new v(true);
        vVar.c((byte) i);
        vVar.h((short) i2);
        return vVar.b();
    }

    static /* synthetic */ byte[] c(int i) {
        return new byte[]{(byte) i};
    }

    static /* synthetic */ byte[] d(byte b, boolean z, byte b2, byte b3) {
        v vVar = new v(true);
        vVar.c(b);
        if (!z) {
            vVar.c(b2);
        }
        vVar.c(b3);
        return vVar.b();
    }

    static /* synthetic */ kotlin.v e(Cmd cmd, final int i) {
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.com.e
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return q.c(i);
            }
        })) {
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("标定指令下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i);
        return null;
    }

    static /* synthetic */ kotlin.v f(Cmd cmd, int i) {
        u.h("标定指令下发超时");
        cn.mucang.android.jiakaoyi.framework.log.f.f("标定指令下发超时:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i);
        return null;
    }

    static /* synthetic */ kotlin.v g(Cmd cmd, int i, cn.mucang.android.jiakaoyi.signal.communicate.receive.i iVar) {
        if (iVar.f5428a) {
            u.h("标定指令下发成功");
            cn.mucang.android.jiakaoyi.framework.log.f.f("标定指令下发成功:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i);
            return null;
        }
        u.h("标定指令下发失败");
        cn.mucang.android.jiakaoyi.framework.log.f.f("标定指令下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i);
        return null;
    }

    static /* synthetic */ kotlin.v h(Cmd cmd, final int i, final int i2) {
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.com.b
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return q.a(i, i2);
            }
        })) {
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("方向盘标定指令下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i + ",degree=" + i2);
        return null;
    }

    static /* synthetic */ kotlin.v i(Cmd cmd, int i, int i2) {
        u.h("标定指令下发超时");
        cn.mucang.android.jiakaoyi.framework.log.f.f("方向盘标定指令下发超时:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i + ",degree=" + i2);
        return null;
    }

    static /* synthetic */ kotlin.v j(final cn.mucang.android.jiakaoyi.framework.h.b bVar, Cmd cmd, int i, int i2, final cn.mucang.android.jiakaoyi.signal.communicate.receive.i iVar) {
        if (!iVar.f5428a) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("方向盘标定指令下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i + ",degree=" + i2);
            u.h("标定指令下发失败");
            return null;
        }
        if (bVar != null) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.com.l
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.callback(iVar);
                }
            });
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("方向盘标定指令下发成功:" + ((int) cmd.order) + "," + cmd.desc + ", type = " + i + ",degree=" + i2);
        u.h("标定指令下发成功");
        return null;
    }

    static /* synthetic */ kotlin.v k(Cmd cmd, final byte b, final boolean z, final byte b2, final byte b3, String str, String str2) {
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.com.k
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return q.d(b, z, b2, b3);
            }
        })) {
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(str + "下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", value = " + str2);
        return null;
    }

    static /* synthetic */ kotlin.v l(String str, Cmd cmd, String str2, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.f(str + "下发超时:" + ((int) cmd.order) + "," + cmd.desc + ", value = " + str2);
        u.h("标定指令下发超时");
        bVar.callback(Boolean.FALSE);
        return null;
    }

    static /* synthetic */ kotlin.v m(String str, Cmd cmd, String str2, cn.mucang.android.jiakaoyi.framework.h.b bVar, cn.mucang.android.jiakaoyi.signal.communicate.receive.i iVar) {
        if (iVar.f5428a) {
            cn.mucang.android.jiakaoyi.framework.log.f.f(str + "下发成功:" + ((int) cmd.order) + "," + cmd.desc + ", value = " + str2);
            u.h("标定指令下发成功");
            bVar.callback(Boolean.TRUE);
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(str + "下发失败:" + ((int) cmd.order) + "," + cmd.desc + ", value = " + str2);
        u.h("标定指令下发失败");
        bVar.callback(Boolean.FALSE);
        return null;
    }

    public static void n(final Cmd cmd, final int i) {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.i.class, 0, 3000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.e(cmd, i);
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.f(cmd, i);
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.signal.com.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.g(cmd, i, (cn.mucang.android.jiakaoyi.signal.communicate.receive.i) obj);
            }
        }).i();
    }

    public static void o(final Cmd cmd, final int i, final int i2, final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.i> bVar) {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.i.class, 0, 1000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.h(cmd, i, i2);
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.i(cmd, i, i2);
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.signal.com.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.j(bVar, cmd, i, i2, (cn.mucang.android.jiakaoyi.signal.communicate.receive.i) obj);
            }
        }).i();
    }

    public static void p(final boolean z, final byte b, final byte b2, final byte b3, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        StringBuilder sb;
        String string;
        final String str = z ? "自动电机标定" : "手动电机标定";
        if (z) {
            sb = new StringBuilder();
            sb.append((int) b);
            sb.append(", ");
            sb.append((int) b3);
            string = sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append((int) b);
            sb.append(", ");
            sb.append((int) b2);
            sb.append(", ");
            sb.append((int) b3);
            string = sb.toString();
        }
        final String str2 = string;
        cn.mucang.android.jiakaoyi.framework.log.f.o(str + str2);
        final Cmd cmd = z ? Cmd.OrderAutoMotorCalibration : Cmd.OrderManualMotorCalibration;
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.i.class, 0, 8000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.k(cmd, b, z, b2, b3, str, str2);
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.signal.com.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.l(str, cmd, str2, bVar);
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.signal.com.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.m(str, cmd, str2, bVar, (cn.mucang.android.jiakaoyi.signal.communicate.receive.i) obj);
            }
        }).i();
    }
}
