package cn.mucang.android.jiakaoyi.mapcollect.collect.car;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends k {
    private CarPos i;
    private Paint j;

    public e(MapView mapView) {
        super(mapView);
        Paint paint = new Paint(1);
        this.j = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.j.setTextSize(28.0f);
    }

    private void i(Canvas canvas, Matrix matrix) {
        Pos pos = this.i.front;
        if (pos != null) {
            k(-13408513, 15, canvas, matrix, pos, "前天线", 48);
        }
        Pos pos2 = this.i.back;
        if (pos2 != null) {
            k(-13408513, 15, canvas, matrix, pos2, "主天线", 48);
        }
    }

    private void j(Matrix matrix, Canvas canvas, Paint paint, float f2, List<Pos> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        int i = 1;
        float[] fArr = new float[(list.size() - 1) * 4];
        Pos posH = null;
        int i2 = 0;
        while (i2 < list.size() - 1) {
            if (posH == null) {
                posH = h(list.get(i2), matrix);
            }
            int i3 = i2 * 4;
            fArr[i3] = (float) posH.x;
            fArr[i3 + 1] = (float) posH.y;
            i2++;
            posH = h(list.get(i2), matrix);
            fArr[i3 + 2] = (float) posH.x;
            fArr[i3 + 3] = (float) posH.y;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setStrokeWidth(f2);
        canvas.drawLines(fArr, paint);
        if (list.size() >= 24) {
            Pos posH2 = h(list.get(0), matrix);
            Pos posH3 = h(list.get(list.size() - 1), matrix);
            canvas.drawLine((float) posH2.x, (float) posH2.y, (float) posH3.x, (float) posH3.y, paint);
        }
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1282049);
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            Pos posH4 = h(it.next(), matrix);
            paint.setStrokeWidth(1.0f);
            l(String.valueOf(i), posH4.x, posH4.y - 30.0d, canvas);
            canvas.drawCircle((float) posH4.x, (float) posH4.y, 12.0f, paint);
            i++;
        }
    }

    private void k(int i, int i2, Canvas canvas, Matrix matrix, Pos pos, String str, int i3) {
        float fWidth;
        Pos posH = h(pos, matrix);
        this.j.setColor(i);
        this.j.setStyle(Paint.Style.FILL_AND_STROKE);
        canvas.drawCircle((float) posH.x, (float) posH.y, i2, this.j);
        Rect rect = new Rect();
        this.j.getTextBounds(str, 0, str.length(), rect);
        float fHeight = 30.0f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (i3 != 3) {
            if (i3 == 5) {
                fWidth = (rect.width() * 0.5f) + 30.0f;
            } else if (i3 == 48) {
                fHeight = (-30.0f) - (rect.height() * 0.5f);
            } else if (i3 != 80) {
                fHeight = BitmapDescriptorFactory.HUE_RED;
            }
            this.j.setStrokeWidth(1.0f);
            canvas.drawText(str, (((float) posH.x) + f2) - (rect.width() * 0.5f), ((float) posH.y) + fHeight, this.j);
        }
        fWidth = (-30.0f) - (rect.width() * 0.5f);
        f2 = fWidth;
        fHeight = BitmapDescriptorFactory.HUE_RED;
        this.j.setStrokeWidth(1.0f);
        canvas.drawText(str, (((float) posH.x) + f2) - (rect.width() * 0.5f), ((float) posH.y) + fHeight, this.j);
    }

    private void l(String str, double d2, double d3, Canvas canvas) {
        Rect rect = new Rect();
        this.j.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, (float) (d2 - ((double) (rect.width() * 0.5f))), (float) (d3 + ((double) (rect.height() * 0.5f))), this.j);
    }

    private void m(Canvas canvas, Matrix matrix) {
        Pos pos = this.i.wheelLeftFront;
        if (pos != null) {
            k(-13408513, 12, canvas, matrix, pos, "左前轮", 3);
        }
        Pos pos2 = this.i.wheelLeftBack;
        if (pos2 != null) {
            k(-13408513, 12, canvas, matrix, pos2, "左后轮", 3);
        }
        Pos pos3 = this.i.wheelRightFront;
        if (pos3 != null) {
            k(-13408513, 12, canvas, matrix, pos3, "右前轮", 5);
        }
        Pos pos4 = this.i.wheelRightBack;
        if (pos4 != null) {
            k(-13408513, 12, canvas, matrix, pos4, "右后轮", 5);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (this.i == null) {
            return;
        }
        canvas.save();
        synchronized (this) {
            j(matrix, canvas, this.j, 2.0f, this.i.carPoints);
            i(canvas, matrix);
            m(canvas, matrix);
            j(matrix, canvas, this.j, 2.0f, this.i.leftMirrorPoints);
            j(matrix, canvas, this.j, 2.0f, this.i.rightMirrorPoints);
        }
        canvas.restore();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    public void n(CarPos carPos) {
        synchronized (this) {
            this.i = carPos;
        }
    }
}
