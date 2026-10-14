package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Line f5997a = null;
    private Line b = null;

    public boolean a(e eVar, c cVar) {
        if (this.f5997a == null) {
            Line line = cVar.n;
            Pos posT = a.t(line.end, line.start, 15.0d);
            Line line2 = cVar.n;
            this.f5997a = new Line(a.t(line2.end, line2.start, 115.0d), posT);
            Line line3 = cVar.q;
            Pos posT2 = a.t(line3.start, line3.end, 15.0d);
            Line line4 = cVar.q;
            this.b = new Line(posT2, a.t(line4.start, line4.end, 115.0d));
        }
        CarPos carPosC = eVar.c();
        Wheel wheel = Wheel.LeftBack;
        Line line5 = this.f5997a;
        if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.u(wheel, carPosC, line5.start, line5.end)) {
            Line line6 = this.b;
            if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.u(wheel, carPosC, line6.start, line6.end)) {
                Wheel wheel2 = Wheel.RightBack;
                Line line7 = this.f5997a;
                if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.u(wheel2, carPosC, line7.start, line7.end)) {
                    Line line8 = this.b;
                    if (!cn.mucang.android.jiakaoyi.hpmap.a.b.a.u(wheel2, carPosC, line8.start, line8.end)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
