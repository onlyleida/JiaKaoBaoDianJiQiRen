package cn.mucang.android.core.widget.datepick;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class SelectDateView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2919a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f2922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2924h;
    private boolean i;
    private int j;
    private int k;
    private boolean l;
    private List<String> m;
    private Paint n;
    private Paint o;
    private a p;
    private c q;
    private Timer r;
    private b s;
    private Paint.FontMetricsInt t;
    private Paint.FontMetricsInt u;
    private int v;

    class a extends TimerTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Handler f2925a;

        a(SelectDateView selectDateView, Handler handler) {
            this.f2925a = handler;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f2925a.sendEmptyMessage(0);
        }
    }

    public interface b {
        void a(String str);
    }

    static class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<SelectDateView> f2926a;

        c(SelectDateView selectDateView) {
            this.f2926a = new WeakReference<>(selectDateView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SelectDateView selectDateView = this.f2926a.get();
            if (selectDateView != null) {
                selectDateView.j();
            }
        }
    }

    public SelectDateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(MotionEvent motionEvent) {
        a aVar = this.p;
        if (aVar != null) {
            aVar.cancel();
            this.p = null;
        }
        this.b = motionEvent.getY();
    }

    private void b(float f2) {
        float f3 = this.f2919a + (f2 - this.b);
        this.f2919a = f3;
        float f4 = this.f2920d;
        if (f3 > (f4 * 2.8f) / 2.0f) {
            boolean z = this.i;
            if (!z && this.k == 0) {
                this.b = f2;
                invalidate();
                return;
            } else {
                if (!z) {
                    this.k--;
                }
                h();
                this.f2919a -= this.f2920d * 2.8f;
            }
        } else if (f3 < (f4 * (-2.8f)) / 2.0f) {
            if (this.k == this.m.size() - 1) {
                this.b = f2;
                invalidate();
                return;
            } else {
                if (!this.i) {
                    this.k++;
                }
                g();
                this.f2919a += this.f2920d * 2.8f;
            }
        }
        this.b = f2;
        invalidate();
    }

    private void c() {
        if (Math.abs(this.f2919a) < 1.0E-4d) {
            this.f2919a = BitmapDescriptorFactory.HUE_RED;
        }
        a aVar = this.p;
        if (aVar != null) {
            aVar.cancel();
            this.p = null;
        }
        a aVar2 = new a(this, this.q);
        this.p = aVar2;
        this.r.schedule(aVar2, 0L, 10L);
    }

    private void d(Canvas canvas) {
        float fI = i(this.f2923g / 4.0f, this.f2919a);
        float f2 = this.c;
        float f3 = this.f2920d;
        this.n.setTextSize(((f2 - f3) * fI) + f3);
        Paint paint = this.n;
        float f4 = this.f2922f;
        float f5 = this.f2921e;
        paint.setAlpha((int) (((f4 - f5) * fI) + f5));
        float f6 = (float) (((double) this.f2924h) / 2.0d);
        float f7 = (float) ((((double) this.f2923g) / 2.0d) + ((double) this.f2919a));
        this.n.getFontMetricsInt(this.t);
        double d2 = f7;
        Paint.FontMetricsInt fontMetricsInt = this.t;
        float f8 = (float) (d2 - ((((double) fontMetricsInt.bottom) / 2.0d) + (((double) fontMetricsInt.top) / 2.0d)));
        int size = this.m.size();
        int i = this.k;
        if (size > i) {
            canvas.drawText(this.m.get(i), f6, f8, this.n);
        }
        for (int i2 = 0; this.k - i2 >= 0 && i2 <= 10; i2++) {
            e(canvas, i2, -1);
        }
        for (int i3 = 0; this.k + i3 < this.m.size() && i3 <= 10; i3++) {
            e(canvas, i3, 1);
        }
    }

    private void e(Canvas canvas, int i, int i2) {
        float f2 = i2;
        float f3 = (this.f2920d * 2.8f * i) + (this.f2919a * f2);
        float fI = i(this.f2923g / 4.0f, f3);
        float f4 = this.c;
        float f5 = this.f2920d;
        this.o.setTextSize(((f4 - f5) * fI) + f5);
        Paint paint = this.o;
        float f6 = this.f2922f;
        float f7 = this.f2921e;
        paint.setAlpha((int) (((f6 - f7) * fI) + f7));
        float f8 = (float) ((((double) this.f2923g) / 2.0d) + ((double) (f2 * f3)));
        this.o.getFontMetricsInt(this.u);
        Paint.FontMetricsInt fontMetricsInt = this.u;
        canvas.drawText(this.m.get(this.k + (i2 * i)), (float) (((double) this.f2924h) / 2.0d), (float) (((double) f8) - ((((double) fontMetricsInt.bottom) / 2.0d) + (((double) fontMetricsInt.top) / 2.0d))), this.o);
    }

    private void f() {
        this.j = s0.a(20.0f);
        this.v = getResources().getColor(R.color.core__date_picker_content_color);
        Paint paint = new Paint(1);
        this.n = paint;
        paint.setStyle(Paint.Style.FILL);
        this.n.setTextAlign(Paint.Align.CENTER);
        this.n.setColor(this.v);
        Paint paint2 = new Paint(1);
        this.o = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.o.setTextAlign(Paint.Align.CENTER);
        this.o.setColor(this.v);
        this.q = new c(this);
        this.r = new Timer();
        this.t = this.n.getFontMetricsInt();
        this.u = this.o.getFontMetricsInt();
    }

    private void g() {
        if (this.i) {
            String str = this.m.get(0);
            this.m.remove(0);
            this.m.add(str);
        }
    }

    private void h() {
        if (this.i) {
            List<String> list = this.m;
            String str = list.get(list.size() - 1);
            List<String> list2 = this.m;
            list2.remove(list2.size() - 1);
            this.m.add(0, str);
        }
    }

    private float i(float f2, float f3) {
        float fPow = (float) (1.0d - Math.pow(f3 / f2, 2.0d));
        return fPow < BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : fPow;
    }

    public String getCurrentSelected() {
        return this.m.get(this.k);
    }

    public void j() {
        if (Math.abs(this.f2919a) < 10.0f) {
            this.f2919a = BitmapDescriptorFactory.HUE_RED;
            a aVar = this.p;
            if (aVar != null) {
                aVar.cancel();
                this.p = null;
                b bVar = this.s;
                if (bVar != null) {
                    bVar.a(this.m.get(this.k));
                }
            }
        } else {
            float f2 = this.f2919a;
            this.f2919a = f2 - ((f2 / Math.abs(f2)) * 10.0f);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        List<String> list;
        super.onDraw(canvas);
        if (!this.l || (list = this.m) == null || list.isEmpty()) {
            return;
        }
        d(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f2923g = getMeasuredHeight();
        this.f2924h = getMeasuredWidth();
        float fMax = Math.max(this.f2923g / 7.0f, this.j);
        this.c = fMax;
        this.f2920d = fMax / 2.2f;
        this.l = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            a(motionEvent);
        } else if (action == 1) {
            c();
        } else if (action == 2) {
            b(motionEvent.getY());
        }
        return true;
    }

    public void setColor(int i) {
        this.v = i;
        this.n.setColor(i);
        this.o.setColor(i);
        invalidate();
    }

    public void setDataList(List<String> list) {
        this.m = list;
    }

    public void setOnChangeListener(b bVar) {
        this.s = bVar;
    }

    public void setSelected(int i) {
        this.k = i;
        if (this.i) {
            int size = (this.m.size() / 2) - this.k;
            int i2 = 0;
            if (size < 0) {
                while (i2 < (-size)) {
                    g();
                    this.k--;
                    i2++;
                }
            } else if (size > 0) {
                while (i2 < size) {
                    h();
                    this.k++;
                    i2++;
                }
            }
        }
        invalidate();
    }

    public SelectDateView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2921e = 120.0f;
        this.f2922f = 255.0f;
        this.i = true;
        this.k = 0;
        this.l = false;
        f();
    }

    public void setSelected(String str) {
        for (int i = 0; i < this.m.size(); i++) {
            if (this.m.get(i).equals(str)) {
                setSelected(i);
                return;
            }
        }
    }
}
