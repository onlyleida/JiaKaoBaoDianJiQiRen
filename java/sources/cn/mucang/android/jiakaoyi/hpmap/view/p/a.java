package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.bg.InProject;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a extends k {
    private final Paint i;
    private final Path j;
    private final boolean k;

    public a(MapView mapView, List<Pos> list, int i, boolean z) {
        super(mapView);
        this.f3763h.addAll(list);
        this.k = z;
        Paint paint = new Paint(1);
        this.i = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        Path path = new Path();
        this.j = path;
        if (list.size() > 1) {
            path.moveTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(0).y));
            for (int i2 = 1; i2 < list.size(); i2++) {
                this.j.lineTo(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i2).x), cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(list.get(i2).y));
            }
        }
        if (list.size() == 2) {
            this.i.setStyle(Paint.Style.FILL_AND_STROKE);
            this.i.setStrokeWidth(20.0f);
        }
        this.j.close();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        canvas.drawPath(this.j, this.i);
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (!this.k) {
            InProject inProject = InProject.None;
            if (InProject.parse(i0.d("keyInProjectBg", inProject.type)) == inProject && this.c.getCurrentZoom() < 0.16f) {
                return false;
            }
        }
        return this.c.u.f3736h.d(this.f3763h, cVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
