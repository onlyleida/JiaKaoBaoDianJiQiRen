package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.core.view.ViewCompat;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;

/* JADX INFO: loaded from: classes4.dex */
public class j3 extends cn.mucang.android.jiakaoyi.hpmap.view.p.k {
    private final Paint i;
    private final NormalVariable j;

    public j3(MapView mapView, NormalVariable normalVariable) {
        super(mapView);
        this.f3758a = normalVariable.isSelect ? 20 : 10;
        this.j = normalVariable;
        Paint paint = new Paint(1);
        this.i = paint;
        paint.setStrokeWidth(1.0f);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        canvas.save();
        Pos posH = h(this.j.posOnLine, matrix);
        float fA = a(this.j.width / 2.0f, matrix);
        this.i.setColor(-1);
        if (this.j.isSelect) {
            this.i.setStyle(Paint.Style.FILL);
        } else {
            this.i.setStyle(Paint.Style.STROKE);
        }
        canvas.drawCircle((float) posH.x, (float) posH.y, fA, this.i);
        NormalVariable normalVariable = this.j;
        if (normalVariable.isRange) {
            float fA2 = a(normalVariable.width, matrix);
            this.i.setStyle(Paint.Style.STROKE);
            canvas.drawCircle((float) posH.x, (float) posH.y, fA2, this.i);
        } else {
            Pos posH2 = h(normalVariable.p1, matrix);
            Pos posH3 = h(this.j.p2, matrix);
            canvas.drawLine((float) posH2.x, (float) posH2.y, (float) posH3.x, (float) posH3.y, this.i);
        }
        if (cn.mucang.android.core.utils.n0.g(this.j.number)) {
            this.i.setStyle(Paint.Style.FILL);
            this.i.setColor(this.j.isSelect ? ViewCompat.MEASURED_STATE_MASK : -1);
            this.i.setTextSize(20.0f);
            Rect rect = new Rect();
            Paint paint = this.i;
            String str = this.j.number;
            paint.getTextBounds(str, 0, str.length(), rect);
            canvas.drawText(this.j.number, ((float) posH.x) - (rect.width() * 0.5f), ((float) posH.y) + (rect.height() * 0.5f), this.i);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, cn.mucang.android.jiakaoyi.hpmap.view.r.a.c(this.j.posOnLine, this.f3761f));
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
