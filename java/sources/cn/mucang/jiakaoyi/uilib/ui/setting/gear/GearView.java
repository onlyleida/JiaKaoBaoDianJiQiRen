package cn.mucang.jiakaoyi.uilib.ui.setting.gear;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GearView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GearPose f9979a;
    private Paint b;
    private final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<GearPose> f9980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9983g;

    public GearView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9979a = null;
        this.b = null;
        this.c = new Pos();
    }

    private void a(Canvas canvas) {
        GearPose next;
        GearPose gearPose;
        Iterator<GearPose> it = this.f9980d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next != null && next.gear == Gear.GearN.gear) {
                break;
            }
        }
        GearPose gearPose2 = next;
        if (gearPose2 == null) {
            return;
        }
        canvas.save();
        Matrix matrix = new Matrix();
        matrix.postRotate(180.0f, gearPose2.pitch, gearPose2.roll);
        matrix.postScale(6.5f, 6.5f, gearPose2.pitch, gearPose2.roll);
        matrix.postTranslate((-gearPose2.pitch) + (this.f9982f * 0.5f), (-gearPose2.roll) + (this.f9983g * 0.5f));
        this.f9981e = 0;
        float[] fArr = new float[2];
        Iterator<GearPose> it2 = this.f9980d.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            GearPose next2 = it2.next();
            if (next2 != null) {
                if (this.f9979a == next2) {
                    this.b.setColor(-16711936);
                } else {
                    int i = next2.gear;
                    if (i == Gear.Gear1.gear) {
                        this.b.setColor(-15090941);
                    } else if (i == Gear.Gear2.gear) {
                        this.b.setColor(-16776961);
                    } else if (i == Gear.Gear3.gear) {
                        this.b.setColor(-7829504);
                    } else if (i == Gear.Gear4.gear) {
                        this.b.setColor(-16742264);
                    } else if (i == Gear.Gear5.gear) {
                        this.b.setColor(ViewCompat.MEASURED_STATE_MASK);
                    } else if (i == Gear.GearBack.gear) {
                        this.b.setColor(-65281);
                    } else if (i == Gear.GearN.gear) {
                        this.b.setColor(-65536);
                    }
                }
                fArr[0] = next2.pitch;
                fArr[1] = next2.roll;
                matrix.mapPoints(fArr);
                if (!b(next2.gear)) {
                    canvas.drawText(Gear.parse(next2.gear).gearName, fArr[0] + 15.0f, fArr[1] + 7.5f, this.b);
                    canvas.drawCircle(fArr[0], fArr[1], 2.0f, this.b);
                }
                List<Pos> list = next2.points;
                if (list != null) {
                    for (Pos pos : list) {
                        fArr[0] = (float) pos.y;
                        fArr[1] = (float) pos.x;
                        matrix.mapPoints(fArr);
                        canvas.drawCircle(fArr[0], fArr[1], 2.0f, this.b);
                        next2 = next2;
                    }
                    int i2 = 0;
                    for (int i3 = 1; i2 < next2.points.size() - i3; i3 = 1) {
                        float f2 = (float) next2.points.get(i2).y;
                        float f3 = (float) next2.points.get(i2).x;
                        fArr[0] = f2;
                        fArr[i3] = f3;
                        matrix.mapPoints(fArr);
                        float f4 = fArr[0];
                        float f5 = fArr[i3];
                        int i4 = i2 + 1;
                        float f6 = (float) next2.points.get(i4).y;
                        float f7 = (float) next2.points.get(i4).x;
                        fArr[0] = f6;
                        fArr[i3] = f7;
                        matrix.mapPoints(fArr);
                        canvas.drawLine(f4, f5, fArr[0], fArr[i3], this.b);
                        i2 = i4;
                        next2 = next2;
                    }
                    gearPose = next2;
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.v() && gearPose.points.size() > 2) {
                        float f8 = (float) gearPose.points.get(0).y;
                        float f9 = (float) gearPose.points.get(0).x;
                        fArr[0] = f8;
                        fArr[1] = f9;
                        matrix.mapPoints(fArr);
                        float f10 = fArr[0];
                        float f11 = fArr[1];
                        List<Pos> list2 = gearPose.points;
                        float f12 = (float) list2.get(list2.size() - 1).y;
                        List<Pos> list3 = gearPose.points;
                        float f13 = (float) list3.get(list3.size() - 1).x;
                        fArr[0] = f12;
                        fArr[1] = f13;
                        matrix.mapPoints(fArr);
                        canvas.drawLine(f10, f11, fArr[0], fArr[1], this.b);
                    }
                } else {
                    gearPose = next2;
                }
                if (gearPose.line != null && MucangConfig.v() && cn.mucang.android.jiakaoyi.signal.gearsensor.h.z()) {
                    float y = gearPose.line.getY(gearPose.startRoll);
                    float f14 = gearPose.startRoll;
                    fArr[0] = y;
                    fArr[1] = f14;
                    matrix.mapPoints(fArr);
                    float f15 = fArr[0];
                    float f16 = fArr[1];
                    float y2 = gearPose.line.getY(gearPose.endRoll);
                    float f17 = gearPose.endRoll;
                    fArr[0] = y2;
                    fArr[1] = f17;
                    matrix.mapPoints(fArr);
                    float f18 = fArr[0];
                    float f19 = fArr[1];
                    this.b.setColor(ViewCompat.MEASURED_STATE_MASK);
                    canvas.drawLine(f15, f16, f18, f19, this.b);
                }
            }
        }
        this.b.setColor(-65536);
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.z()) {
            float f20 = gearPose2.pitch + 30.0f;
            float fO = gearPose2.roll + cn.mucang.android.jiakaoyi.signal.gearsensor.h.o();
            fArr[0] = f20;
            fArr[1] = fO;
            matrix.mapPoints(fArr);
            float f21 = fArr[0];
            float f22 = fArr[1];
            float f23 = gearPose2.pitch - 30.0f;
            float fO2 = gearPose2.roll + cn.mucang.android.jiakaoyi.signal.gearsensor.h.o();
            fArr[0] = f23;
            fArr[1] = fO2;
            matrix.mapPoints(fArr);
            canvas.drawLine(f21, f22, fArr[0], fArr[1], this.b);
            float f24 = gearPose2.pitch + 30.0f;
            float fJ = gearPose2.roll - cn.mucang.android.jiakaoyi.signal.gearsensor.h.j();
            fArr[0] = f24;
            fArr[1] = fJ;
            matrix.mapPoints(fArr);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = gearPose2.pitch - 30.0f;
            float fJ2 = gearPose2.roll - cn.mucang.android.jiakaoyi.signal.gearsensor.h.j();
            fArr[0] = f27;
            fArr[1] = fJ2;
            matrix.mapPoints(fArr);
            canvas.drawLine(f25, f26, fArr[0], fArr[1], this.b);
        } else {
            float f28 = gearPose2.pitch + 30.0f;
            float f29 = gearPose2.roll;
            fArr[0] = f28;
            fArr[1] = f29;
            matrix.mapPoints(fArr);
            float f30 = fArr[0];
            float f31 = fArr[1];
            float f32 = gearPose2.pitch - 30.0f;
            float f33 = gearPose2.roll;
            fArr[0] = f32;
            fArr[1] = f33;
            matrix.mapPoints(fArr);
            canvas.drawLine(f30, f31, fArr[0], fArr[1], this.b);
            float f34 = gearPose2.pitch;
            float f35 = gearPose2.roll + 30.0f;
            fArr[0] = f34;
            fArr[1] = f35;
            matrix.mapPoints(fArr);
            float f36 = fArr[0];
            float f37 = fArr[1];
            float f38 = gearPose2.pitch;
            float f39 = gearPose2.roll - 30.0f;
            fArr[0] = f38;
            fArr[1] = f39;
            matrix.mapPoints(fArr);
            canvas.drawLine(f36, f37, fArr[0], fArr[1], this.b);
        }
        this.b.setColor(-16776961);
        Pos pos2 = this.c;
        fArr[0] = (float) pos2.y;
        fArr[1] = (float) pos2.x;
        matrix.mapPoints(fArr);
        canvas.drawCircle(fArr[0], fArr[1], 4.0f, this.b);
        canvas.restore();
    }

    private boolean b(int i) {
        boolean z;
        if (i == Gear.GearN.gear) {
            int i2 = this.f9981e;
            boolean z2 = (i2 & 1) != 0;
            this.f9981e = i2 & 1;
            return z2;
        }
        if (i == Gear.Gear1.gear) {
            int i3 = this.f9981e;
            z = (i3 & 2) != 0;
            this.f9981e = i3 | 2;
        } else if (i == Gear.Gear2.gear) {
            int i4 = this.f9981e;
            z = (i4 & 4) != 0;
            this.f9981e = i4 | 4;
        } else if (i == Gear.Gear3.gear) {
            int i5 = this.f9981e;
            z = (i5 & 8) != 0;
            this.f9981e = i5 | 8;
        } else if (i == Gear.Gear4.gear) {
            int i6 = this.f9981e;
            z = (i6 & 16) != 0;
            this.f9981e = i6 | 16;
        } else if (i == Gear.Gear5.gear) {
            int i7 = this.f9981e;
            z = (i7 & 32) != 0;
            this.f9981e = i7 | 32;
        } else {
            if (i != Gear.GearBack.gear) {
                return false;
            }
            int i8 = this.f9981e;
            z = (i8 & 64) != 0;
            this.f9981e = i8 | 64;
        }
        return z;
    }

    private void c() {
        if (this.f9980d == null) {
            f();
        }
        if (this.b == null) {
            Paint paint = new Paint();
            this.b = paint;
            paint.setColor(-65536);
            this.b.setAntiAlias(true);
            this.b.setStrokeWidth(1.0f);
            this.f9982f = getMeasuredWidth();
            this.f9983g = getMeasuredHeight();
            this.b.setTextSize(s0.a(16.0f));
        }
    }

    private void f() {
        List<GearPose> listH = cn.mucang.android.jiakaoyi.signal.gearsensor.h.h();
        if (listH != null) {
            this.f9980d = new ArrayList(listH);
        } else {
            this.f9980d = null;
        }
    }

    public void d() {
        f();
        postInvalidate();
    }

    public void e(double d2, double d3) {
        Pos pos = this.c;
        double d4 = pos.x - d2;
        double d5 = pos.y - d3;
        if ((d4 * d4) + (d5 * d5) < 0.1d) {
            return;
        }
        pos.setPos(d2, d3);
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c();
        if (this.f9980d == null) {
            return;
        }
        a(canvas);
    }

    public void setChoose(GearPose gearPose) {
        this.f9979a = gearPose;
        postInvalidate();
    }
}
