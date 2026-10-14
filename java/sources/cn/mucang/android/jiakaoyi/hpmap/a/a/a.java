package cn.mucang.android.jiakaoyi.hpmap.a.a;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: compiled from: BoundDetector.java */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a {
    public static Pos a(b _this) {
        if (_this.f() == null || _this.k() == null) {
            return _this.b() != null ? _this.b().f5818e : new Pos();
        }
        return _this.f().middle().meanWith(_this.k().middle());
    }

    public static cn.mucang.android.jiakaoyi.signal.utils.b b(b bVar) {
        return null;
    }

    public static cn.mucang.android.jiakaoyi.hpmap.c.a c(b bVar) {
        return null;
    }

    public static Line d(b bVar) {
        return null;
    }

    public static boolean e(b _this, CarPos carPos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.l(carPos, _this.n());
    }

    public static boolean f(b _this, CarPos carPos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.m(carPos, _this.n());
    }

    public static boolean g(b _this, CarPos carPos) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.o(carPos, _this.n());
    }

    public static boolean h(b _this, CarPos carPos) {
        if (_this.o() == null || _this.f() == null) {
            return false;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.n(carPos, _this.f().middle(), _this.o().middle());
    }

    public static boolean i(b bVar) {
        return false;
    }

    public static int j(b bVar, Line line) {
        return -1;
    }
}
