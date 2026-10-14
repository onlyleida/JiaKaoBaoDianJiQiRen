package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HardwareGearCalibView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GearPose f9996a;
    private Paint b;
    private final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<GearPose> f9997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9999f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10000g;

    public HardwareGearCalibView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9996a = null;
        this.b = null;
        this.c = new Pos();
    }

    private void a(Canvas canvas) {
        GearPose next;
        Iterator<GearPose> it = this.f9997d.iterator();
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
        GearPose gearPose = next;
        if (gearPose == null) {
            return;
        }
        canvas.save();
        Matrix matrix = new Matrix();
        matrix.postRotate(180.0f, gearPose.pitch, gearPose.roll);
        matrix.postScale(6.5f, 6.5f, gearPose.pitch, gearPose.roll);
        matrix.postTranslate((-gearPose.pitch) + (this.f9999f * 0.5f), (-gearPose.roll) + (this.f10000g * 0.5f));
        this.f9998e = 0;
        float[] fArr = new float[2];
        Iterator<GearPose> it2 = this.f9997d.iterator();
        while (true) {
            if (!it2.hasNext()) {
                this.b.setColor(-65536);
                float f2 = gearPose.pitch + 30.0f;
                float f3 = gearPose.roll;
                fArr[0] = f2;
                fArr[1] = f3;
                matrix.mapPoints(fArr);
                float f4 = fArr[0];
                float f5 = fArr[1];
                float f6 = gearPose.pitch - 30.0f;
                float f7 = gearPose.roll;
                fArr[0] = f6;
                fArr[1] = f7;
                matrix.mapPoints(fArr);
                canvas.drawLine(f4, f5, fArr[0], fArr[1], this.b);
                float f8 = gearPose.pitch;
                float f9 = gearPose.roll + 30.0f;
                fArr[0] = f8;
                fArr[1] = f9;
                matrix.mapPoints(fArr);
                float f10 = fArr[0];
                float f11 = fArr[1];
                float f12 = gearPose.pitch;
                float f13 = gearPose.roll - 30.0f;
                fArr[0] = f12;
                fArr[1] = f13;
                matrix.mapPoints(fArr);
                canvas.drawLine(f10, f11, fArr[0], fArr[1], this.b);
                this.b.setColor(-16776961);
                Pos pos = this.c;
                fArr[0] = (float) pos.y;
                fArr[1] = (float) pos.x;
                matrix.mapPoints(fArr);
                canvas.drawCircle(fArr[0], fArr[1], 4.0f, this.b);
                canvas.restore();
                return;
            }
            GearPose next2 = it2.next();
            if (next2 != null) {
                if (this.f9996a == next2) {
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
                    for (Pos pos2 : list) {
                        fArr[0] = (float) pos2.y;
                        fArr[1] = (float) pos2.x;
                        matrix.mapPoints(fArr);
                        canvas.drawCircle(fArr[0], fArr[1], 2.0f, this.b);
                    }
                    int i2 = 0;
                    for (int i3 = 1; i2 < next2.points.size() - i3; i3 = 1) {
                        float f14 = (float) next2.points.get(i2).y;
                        float f15 = (float) next2.points.get(i2).x;
                        fArr[0] = f14;
                        fArr[i3] = f15;
                        matrix.mapPoints(fArr);
                        float f16 = fArr[0];
                        float f17 = fArr[i3];
                        int i4 = i2 + 1;
                        float f18 = (float) next2.points.get(i4).y;
                        float f19 = (float) next2.points.get(i4).x;
                        fArr[0] = f18;
                        fArr[i3] = f19;
                        matrix.mapPoints(fArr);
                        canvas.drawLine(f16, f17, fArr[0], fArr[i3], this.b);
                        i2 = i4;
                        next2 = next2;
                    }
                    GearPose gearPose2 = next2;
                    if (gearPose2.points.size() > 2) {
                        float f20 = (float) gearPose2.points.get(0).y;
                        float f21 = (float) gearPose2.points.get(0).x;
                        fArr[0] = f20;
                        fArr[1] = f21;
                        matrix.mapPoints(fArr);
                        float f22 = fArr[0];
                        float f23 = fArr[1];
                        List<Pos> list2 = gearPose2.points;
                        float f24 = (float) list2.get(list2.size() - 1).y;
                        List<Pos> list3 = gearPose2.points;
                        float f25 = (float) list3.get(list3.size() - 1).x;
                        fArr[0] = f24;
                        fArr[1] = f25;
                        matrix.mapPoints(fArr);
                        canvas.drawLine(f22, f23, fArr[0], fArr[1], this.b);
                    }
                }
            }
        }
    }

    private boolean b(int i) {
        boolean z;
        if (i == Gear.GearN.gear) {
            int i2 = this.f9998e;
            boolean z2 = (i2 & 1) != 0;
            this.f9998e = i2 & 1;
            return z2;
        }
        if (i == Gear.Gear1.gear) {
            int i3 = this.f9998e;
            z = (i3 & 2) != 0;
            this.f9998e = i3 | 2;
        } else if (i == Gear.Gear2.gear) {
            int i4 = this.f9998e;
            z = (i4 & 4) != 0;
            this.f9998e = i4 | 4;
        } else if (i == Gear.Gear3.gear) {
            int i5 = this.f9998e;
            z = (i5 & 8) != 0;
            this.f9998e = i5 | 8;
        } else if (i == Gear.Gear4.gear) {
            int i6 = this.f9998e;
            z = (i6 & 16) != 0;
            this.f9998e = i6 | 16;
        } else if (i == Gear.Gear5.gear) {
            int i7 = this.f9998e;
            z = (i7 & 32) != 0;
            this.f9998e = i7 | 32;
        } else {
            if (i != Gear.GearBack.gear) {
                return false;
            }
            int i8 = this.f9998e;
            z = (i8 & 64) != 0;
            this.f9998e = i8 | 64;
        }
        return z;
    }

    private void c() {
        if (this.b == null) {
            Paint paint = new Paint();
            this.b = paint;
            paint.setColor(-65536);
            this.b.setAntiAlias(true);
            this.b.setStrokeWidth(1.0f);
            this.f9999f = getMeasuredWidth();
            this.f10000g = getMeasuredHeight();
            this.b.setTextSize(s0.a(16.0f));
        }
    }

    private void setGps(List<GearPose> list) {
        if (list != null) {
            this.f9997d = new ArrayList(list);
        } else {
            this.f9997d = null;
        }
    }

    public void d(List<GearPose> list) {
        setGps(list);
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
        if (this.f9997d == null) {
            return;
        }
        a(canvas);
    }

    public void setChoose(GearPose gearPose) {
        this.f9996a = gearPose;
        postInvalidate();
    }
}
