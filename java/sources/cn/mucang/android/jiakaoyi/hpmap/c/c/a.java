package cn.mucang.android.jiakaoyi.hpmap.c.c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.R;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a extends k {
    private final Rect A;
    private final Rect B;
    private final Rect C;
    private final Paint D;
    private final Path E;
    private final RectF F;
    private final RectF G;
    private final RectF H;
    private final RectF I;
    private final RectF J;
    private final RectF K;
    private final boolean L;
    private Boolean M;
    private CarModel N;
    private cn.mucang.android.jiakaoyi.signal.c.f.a O;
    private final CarPos i;
    private final Bitmap j;
    private final Bitmap k;
    private final Bitmap l;
    private final Bitmap m;
    private final Bitmap n;
    private final Bitmap o;
    private final Bitmap p;
    private final Rect q;
    private final Bitmap r;
    private final Bitmap s;
    private final RectF t;
    private final RectF u;
    private final Rect v;
    private final Rect w;
    private final Rect x;
    private final Rect y;
    private final Rect z;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.hpmap.c.c.a$a, reason: collision with other inner class name */
    class C0109a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        C0109a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(e eVar) {
            a.this.N = eVar.d();
        }
    }

    public a(MapView mapView, CarPos carPos) {
        super(mapView);
        this.M = null;
        this.O = new C0109a();
        this.L = AppUtils.l() || AppUtils.b();
        this.i = carPos.copy();
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_image);
        this.j = bitmapDecodeResource;
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__truck_model_image);
        this.k = bitmapDecodeResource2;
        Bitmap bitmapDecodeResource3 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_left_mirror);
        this.l = bitmapDecodeResource3;
        Bitmap bitmapDecodeResource4 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_right_mirror);
        this.m = bitmapDecodeResource4;
        Bitmap bitmapDecodeResource5 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_left_front_turnlight);
        this.n = bitmapDecodeResource5;
        Bitmap bitmapDecodeResource6 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_right_front_turnlight);
        this.o = bitmapDecodeResource6;
        this.H = new RectF();
        this.I = new RectF();
        this.B = new Rect(0, 0, bitmapDecodeResource5.getWidth(), bitmapDecodeResource5.getHeight());
        this.C = new Rect(0, 0, bitmapDecodeResource6.getWidth(), bitmapDecodeResource6.getHeight());
        Bitmap bitmapDecodeResource7 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_front_light);
        this.p = bitmapDecodeResource7;
        this.q = new Rect(0, 0, bitmapDecodeResource7.getWidth(), bitmapDecodeResource7.getHeight());
        this.J = new RectF();
        Bitmap bitmapDecodeResource8 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_left_footer_light);
        this.r = bitmapDecodeResource8;
        Bitmap bitmapDecodeResource9 = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), R.drawable.hpmap__car_right_footer_light);
        this.s = bitmapDecodeResource9;
        this.t = new RectF();
        this.u = new RectF();
        this.v = new Rect(0, 0, bitmapDecodeResource8.getWidth(), bitmapDecodeResource8.getHeight());
        this.w = new Rect(0, 0, bitmapDecodeResource9.getWidth(), bitmapDecodeResource9.getHeight());
        this.x = new Rect(0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight());
        this.y = new Rect(0, 0, bitmapDecodeResource2.getWidth(), bitmapDecodeResource2.getHeight());
        this.z = new Rect(0, 0, bitmapDecodeResource3.getWidth(), bitmapDecodeResource3.getHeight());
        this.A = new Rect(0, 0, bitmapDecodeResource4.getWidth(), bitmapDecodeResource4.getHeight());
        this.K = new RectF();
        this.F = new RectF();
        this.G = new RectF();
        this.E = new Path();
        Paint paint = new Paint();
        this.D = paint;
        paint.setColor(-65536);
        paint.setStrokeWidth(10.0f);
        paint.setStyle(Paint.Style.STROKE);
        this.f3758a = 100;
    }

    private void j(Canvas canvas, Matrix matrix, RectF rectF, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (this.N != null) {
            float f8 = f4 * 0.5f;
            float width = (f2 + f8) - (this.o.getWidth() * 0.6f);
            canvas.save();
            canvas.setMatrix(matrix);
            long jElapsedRealtime = SystemClock.elapsedRealtime() / 800;
            canvas.rotate((float) this.i.degree, rectF.centerX(), rectF.centerY());
            if (this.N.j(Light.TurnLeftLight)) {
                if (jElapsedRealtime % 2 == 0) {
                    float height = (f3 - (f5 * 0.5f)) - ((this.n.getHeight() * f7) * 0.55f);
                    this.H.set(width, height, (this.B.width() * f6) + width, (this.C.height() * f7) + height);
                    canvas.drawBitmap(this.n, this.B, this.H, (Paint) null);
                }
            } else if (this.N.j(Light.TurnRightLight) && jElapsedRealtime % 2 == 0) {
                float height2 = (f3 + (f5 * 0.5f)) - ((this.o.getHeight() * f7) * 0.45f);
                this.I.set(width, height2, (this.C.width() * f6) + width, (this.C.height() * f7) + height2);
                canvas.drawBitmap(this.o, this.C, this.I, (Paint) null);
            }
            if (this.N.f5269g) {
                float f9 = f2 - f8;
                float width2 = (this.r.getWidth() * f6 * 0.5f) + f9;
                float f10 = 0.5f * f5;
                float fHeight = (f3 - f10) + (this.v.height() * f7 * 0.65f);
                this.t.set(width2 - (this.v.width() * f6), fHeight - (this.v.height() * f7), width2, fHeight);
                canvas.drawBitmap(this.r, this.v, this.t, (Paint) null);
                float width3 = f9 + (this.s.getWidth() * f6 * 0.55f);
                float fHeight2 = (f3 + f10) - ((this.w.height() * f7) * 0.6f);
                this.u.set(width3 - (this.w.width() * f6), fHeight2, width3, (this.w.height() * f7) + fHeight2);
                canvas.drawBitmap(this.s, this.w, this.u, (Paint) null);
            }
            canvas.restore();
        }
    }

    private void k(Canvas canvas, Matrix matrix, RectF rectF, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (this.N != null) {
            canvas.save();
            canvas.setMatrix(matrix);
            canvas.rotate((float) this.i.degree, rectF.centerX(), rectF.centerY());
            if (this.N.j(Light.NearLight) || this.N.j(Light.FarLight)) {
                float f8 = f2 + (f4 * 0.5f);
                this.J.set(f8 - ((this.q.width() * f6) * 0.4f), f3 - ((this.q.height() * f7) * 0.5f), f8 + (f6 * this.q.width() * 0.6f), f3 + (f7 * this.q.height() * 0.5f));
                canvas.drawBitmap(this.p, this.q, this.J, (Paint) null);
            }
            canvas.restore();
        }
    }

    private void l(Canvas canvas, Pos pos, Pos pos2) {
        canvas.drawLine((float) pos.x, (float) pos.y, (float) pos2.x, (float) pos2.y, this.D);
    }

    private void m(List<Pos> list) {
        if (g.b(list)) {
            return;
        }
        this.E.reset();
        this.E.moveTo((float) list.get(0).x, (float) list.get(0).y);
        for (int i = 1; i < list.size(); i++) {
            this.E.lineTo((float) list.get(i).x, (float) list.get(i).y);
        }
        this.E.close();
    }

    private void n(Canvas canvas, Matrix matrix) {
        canvas.save();
        canvas.setMatrix(matrix);
        if (AppUtils.b()) {
            CarPos carPos = this.i;
            Pos pos = carPos.center;
            float f2 = (float) pos.x;
            float f3 = (float) pos.y;
            c cVar = carPos.carRect;
            double dDistanceTo = cVar.f5820a.distanceTo(cVar.b);
            c cVar2 = this.i.carRect;
            double dDistanceTo2 = cVar2.b.distanceTo(cVar2.c);
            float fMax = (float) Math.max(dDistanceTo, dDistanceTo2);
            float f4 = fMax * 0.5f;
            float fMin = ((float) Math.min(dDistanceTo, dDistanceTo2)) * 0.5f;
            this.K.set(f2 - f4, f3 - fMin, f2 + f4, f3 + fMin);
            canvas.rotate((float) this.i.degree, this.K.centerX(), this.K.centerY());
            canvas.drawBitmap(this.k, this.y, this.K, (Paint) null);
        } else {
            o(5.0d);
            this.D.setColor(Color.parseColor("#30A2FF"));
            this.D.setStrokeWidth(5.0f);
            this.D.setStyle(Paint.Style.FILL);
            canvas.drawPath(this.E, this.D);
            m(this.i.leftMirrorPoints);
            canvas.drawPath(this.E, this.D);
            m(this.i.rightMirrorPoints);
            canvas.drawPath(this.E, this.D);
            this.D.setStrokeWidth((float) this.i.wheelTouchWidth);
            this.D.setStyle(Paint.Style.STROKE);
            this.D.setColor(-1);
            CarPos carPos2 = this.i;
            l(canvas, carPos2.wheelRightFront, carPos2.wheelRightFrontInner);
            CarPos carPos3 = this.i;
            l(canvas, carPos3.wheelLeftFront, carPos3.wheelLeftFrontInner);
            CarPos carPos4 = this.i;
            l(canvas, carPos4.wheelRightBack, carPos4.wheelRightBackInner);
            CarPos carPos5 = this.i;
            l(canvas, carPos5.wheelLeftBack, carPos5.wheelLeftBackInner);
        }
        canvas.restore();
    }

    private void o(double d2) {
        double d3 = d2 * 0.5d;
        this.E.reset();
        List<Pos> list = this.i.carPoints;
        if (this.M == null) {
            this.M = Boolean.valueOf(cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(cn.mucang.android.jiakaoyi.hpmap.d.a.e(list.get(0), list.get(1), list.get(2), d3), list));
        }
        double d4 = d3 * ((double) (this.M.booleanValue() ? 1 : -1));
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (i == 0) {
                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.e(list.get(list.size() - 1), list.get(i), list.get(i + 1), d4));
            } else if (i == list.size() - 1) {
                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.e(list.get(i - 1), list.get(i), list.get(0), d4));
            } else {
                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.e(list.get(i - 1), list.get(i), list.get(i + 1), d4));
            }
        }
        this.E.moveTo((float) ((Pos) arrayList.get(0)).x, (float) ((Pos) arrayList.get(0)).y);
        for (int i2 = 1; i2 < arrayList.size(); i2++) {
            this.E.lineTo((float) ((Pos) arrayList.get(i2)).x, (float) ((Pos) arrayList.get(i2)).y);
        }
        this.E.close();
    }

    private void p() {
        this.E.reset();
        List<Pos> list = this.i.carPoints;
        this.E.moveTo((float) list.get(0).x, (float) list.get(0).y);
        for (int i = 1; i < list.size(); i++) {
            this.E.lineTo((float) list.get(i).x, (float) list.get(i).y);
        }
        this.E.close();
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        synchronized (this.i) {
            if (!this.L && !AppUtils.i()) {
                canvas.save();
                canvas.setMatrix(matrix);
                CarPos carPos = this.i;
                Pos pos = carPos.center;
                float f2 = (float) pos.x;
                float f3 = (float) pos.y;
                c cVar = carPos.carRect;
                double dDistanceTo = cVar.f5820a.distanceTo(cVar.b);
                c cVar2 = this.i.carRect;
                double dDistanceTo2 = cVar2.b.distanceTo(cVar2.c);
                float fMax = (float) Math.max(dDistanceTo, dDistanceTo2);
                float fMin = (float) Math.min(dDistanceTo, dDistanceTo2);
                float width = fMax / this.j.getWidth();
                float f4 = fMax * 0.5f;
                float f5 = f2 - f4;
                float f6 = 0.5f * fMin;
                float f7 = f3 - f6;
                float f8 = f3 + f6;
                this.K.set(f5, f7, f4 + f2, f8);
                float height = fMin / this.j.getHeight();
                canvas.restore();
                k(canvas, matrix, this.K, f2, f3, fMax, fMin, width, height);
                canvas.save();
                canvas.setMatrix(matrix);
                List<Pos> list = this.i.carPoints;
                if (list != null && list.size() > 0) {
                    p();
                    canvas.clipPath(this.E);
                }
                canvas.drawColor(-16741633);
                canvas.rotate((float) this.i.degree, this.K.centerX(), this.K.centerY());
                canvas.drawBitmap(this.j, this.x, this.K, (Paint) null);
                canvas.restore();
                canvas.save();
                canvas.setMatrix(matrix);
                canvas.rotate((float) this.i.degree, this.K.centerX(), this.K.centerY());
                float f9 = f5 + (0.64912283f * fMax);
                float height2 = f8 - (((this.m.getHeight() * height) * 1.0f) / 3.0f);
                this.F.set(f9, height2, (this.A.width() * width) + f9, (this.A.height() * height) + height2);
                canvas.drawBitmap(this.m, this.A, this.F, (Paint) null);
                float height3 = f7 - (((this.l.getHeight() * height) * 2.0f) / 3.0f);
                this.G.set(f9, height3, (this.z.width() * width) + f9, (this.z.height() * height) + height3);
                canvas.drawBitmap(this.l, this.z, this.G, (Paint) null);
                canvas.restore();
                j(canvas, matrix, this.K, f2, f3, fMax, fMin, width, height);
                if (MucangConfig.v()) {
                    canvas.save();
                    canvas.setMatrix(matrix);
                    this.D.setColor(-16711936);
                    Pos pos2 = this.i.back;
                    canvas.drawCircle((float) pos2.x, (float) pos2.y, 10.0f, this.D);
                    Pos pos3 = this.i.front;
                    canvas.drawCircle((float) pos3.x, (float) pos3.y, 20.0f, this.D);
                    Pos pos4 = this.i.wheelLeftFront;
                    canvas.drawCircle((float) pos4.x, (float) pos4.y, 10.0f, this.D);
                    Pos pos5 = this.i.wheelRightFront;
                    canvas.drawCircle((float) pos5.x, (float) pos5.y, 10.0f, this.D);
                    Pos pos6 = this.i.wheelLeftBack;
                    canvas.drawCircle((float) pos6.x, (float) pos6.y, 20.0f, this.D);
                    Pos pos7 = this.i.wheelRightBack;
                    canvas.drawCircle((float) pos7.x, (float) pos7.y, 20.0f, this.D);
                    for (int i = 0; i < this.i.carPoints.size(); i++) {
                        canvas.drawCircle((float) this.i.carPoints.get(i).x, (float) this.i.carPoints.get(i).y, 5.0f, this.D);
                    }
                    this.D.setColor(-65536);
                    Pos pos8 = this.i.carRect.f5820a;
                    canvas.drawCircle((float) pos8.x, (float) pos8.y, 10.0f, this.D);
                    Pos pos9 = this.i.carRect.b;
                    canvas.drawCircle((float) pos9.x, (float) pos9.y, 10.0f, this.D);
                    Pos pos10 = this.i.carRect.c;
                    canvas.drawCircle((float) pos10.x, (float) pos10.y, 10.0f, this.D);
                    Pos pos11 = this.i.carRect.f5821d;
                    canvas.drawCircle((float) pos11.x, (float) pos11.y, 10.0f, this.D);
                    canvas.restore();
                }
                return;
            }
            n(canvas, matrix);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVar, this.i.carRect);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void e() {
        super.e();
        d.m.b(this.O);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void g() {
        super.g();
        d.m.n(this.O);
    }

    public void q(CarPos carPos) {
        synchronized (this.i) {
            this.i.set(carPos);
        }
    }
}
