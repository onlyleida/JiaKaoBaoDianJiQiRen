package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3758a;
    protected MapView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f3760e;
    public boolean b = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final Pos f3761f = new Pos();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final Pos f3762g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<Pos> f3763h = new ArrayList();

    public k(MapView mapView) {
        this.c = mapView;
    }

    protected float a(float f2, Matrix matrix) {
        return Math.max(matrix.mapRadius(f2), 2.0f);
    }

    public abstract void b(Canvas canvas, Matrix matrix);

    protected boolean c(Pos pos) {
        return (pos == null || pos.x == -1.0E11d || pos.y == -1.0E11d) ? false : true;
    }

    public abstract boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar);

    public void e() {
    }

    public abstract cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2);

    public void g() {
    }

    protected Pos h(Pos pos, Matrix matrix) {
        float[] fArr = {cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(pos.y)};
        matrix.mapPoints(fArr);
        return new Pos(fArr[0], fArr[1]);
    }
}
