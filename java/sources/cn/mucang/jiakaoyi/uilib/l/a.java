package cn.mucang.jiakaoyi.uilib.l;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.b.c;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class a implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f9343a;
    private final b b;
    private final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f9344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f9345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9346f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9347g = false;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Pos f9348a;
        private final double b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f9349d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private double f9350e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private double f9351f;

        void b(boolean z, Pos pos, long j, boolean z2) {
            if (!z) {
                this.f9348a.setPos(0.0d, 0.0d);
                this.f9349d = 0L;
                this.f9351f = 0.0d;
                this.f9350e = 0.0d;
                return;
            }
            if (a.c(this.f9348a) < 1.0E-5d) {
                this.f9348a.setPos(pos);
                this.f9349d = j;
                double d2 = pos.z;
                this.f9350e = d2;
                this.f9351f = d2;
            }
            double dAbs = Math.abs(pos.z - this.f9350e);
            if (this.f9348a.distanceTo(pos) >= this.b && j - this.f9349d > SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS && (!z2 || (Math.abs(pos.z - this.f9351f) < 5.0d && dAbs < 7.0d))) {
                this.c = true;
            }
            this.f9351f = pos.z;
            if (dAbs <= 9.0d || !z2) {
                return;
            }
            f.o("倒车灯：高度变化比较大，清空:" + dAbs + " , 阈值:" + this.b);
            c();
        }

        void c() {
            this.c = false;
            this.f9349d = 0L;
            this.f9351f = 0.0d;
            this.f9350e = 0.0d;
            this.f9348a.setPos(0.0d, 0.0d);
        }

        private b(double d2) {
            this.f9348a = new Pos();
            this.b = d2;
            this.c = false;
        }
    }

    public a() {
        double d2 = 400.0d;
        this.f9343a = new b(d2);
        double d3 = 125.0d;
        this.b = new b(d3);
        this.c = new b(d2);
        this.f9344d = new b(d3);
        this.f9345e = new b(d3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double c(Pos pos) {
        double d2 = pos.x;
        double d3 = pos.y;
        return (d2 * d2) + (d3 * d3);
    }

    private void d() {
        this.f9343a.c();
        this.b.c();
        this.c.c();
        this.f9344d.c();
        this.f9345e.c();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.b.c.a
    public synchronized void a(e eVar, r0<Boolean> r0Var) {
        if (this.f9346f) {
            this.f9346f = false;
            f.o("开始计算倒车灯是否可用");
        }
        if (eVar.d().h()) {
            if (!eVar.getCurrentPosition().c()) {
                d();
                return;
            }
            if (eVar.c() == null) {
                d();
                return;
            }
            CarModel.Direction direction = eVar.d().F;
            Pos pos = eVar.c().center;
            boolean zJ = eVar.d().j(Light.ReturnLight);
            b bVar = this.f9343a;
            CarModel.Direction direction2 = CarModel.Direction.Forward;
            bVar.b(direction == direction2 && !zJ, pos, eVar.d().L, true);
            b bVar2 = this.b;
            CarModel.Direction direction3 = CarModel.Direction.Back;
            bVar2.b(direction == direction3 && zJ, pos, eVar.d().L, true);
            this.c.b(direction == direction2 && zJ, pos, eVar.d().L, true);
            this.f9344d.b(direction == direction3 && !zJ, pos, eVar.d().L, true);
            if (cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get()) {
                d();
            }
            if (this.c.c || this.f9344d.c) {
                if (r0Var.b().booleanValue() || !this.f9347g) {
                    this.f9347g = true;
                    r0Var.j(Boolean.FALSE);
                }
                f.o("倒车灯状态不可用:前进且灯亮=" + this.c.c + ",后退且灯不亮=" + this.f9344d.c);
                d();
            }
            if (this.f9343a.c && this.b.c) {
                if (!r0Var.b().booleanValue() || !this.f9347g) {
                    this.f9347g = true;
                    r0Var.j(Boolean.TRUE);
                    f.o("倒车灯状态可用:前进且灯不亮=" + this.f9343a.c + ",后退且灯亮=" + this.b.c);
                }
                d();
            }
        }
    }
}
