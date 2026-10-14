package cn.mucang.android.jiakaoyi.teachingk2.ui.f1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends k {
    private List<c> i;
    private Bitmap j;
    private final int k;
    private final int l;
    private final int m;
    private final InterfaceC0140a n;
    private final Rect o;
    private final Rect p;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.f1.a$a, reason: collision with other inner class name */
    public interface InterfaceC0140a {
        Bitmap a(int i);
    }

    public a(MapView mapView, List<c> list, int i, int i2, InterfaceC0140a interfaceC0140a) {
        super(mapView);
        this.i = list;
        this.k = i;
        this.l = i2;
        this.n = interfaceC0140a;
        if (f.c()) {
            this.m = R.drawable.scheck__bg;
        } else {
            this.m = R.drawable.scheck__bg_auto;
        }
        this.o = new Rect();
        this.p = new Rect();
    }

    private void i(c cVar, Canvas canvas) {
        try {
            Bitmap bitmapJ = j(cVar.f8213a);
            float f2 = cVar.f8216f * 1.0f;
            float f3 = cVar.f8217g * 1.0f;
            cVar.j.set(f2, f3, cVar.f8218h + f2, cVar.i + f3);
            canvas.drawBitmap(bitmapJ, new Rect(0, 0, bitmapJ.getWidth(), bitmapJ.getHeight()), cVar.j, (Paint) null);
        } catch (Throwable unused) {
            t.d("TAG", "图片加载失败");
        }
    }

    private Bitmap j(int i) {
        return this.n.a(i);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public void b(Canvas canvas, Matrix matrix) {
        if (g.b(this.i)) {
            return;
        }
        if (this.j == null) {
            try {
                Bitmap bitmapJ = j(this.m);
                this.j = bitmapJ;
                bitmapJ.getWidth();
                this.j.getHeight();
            } catch (Throwable unused) {
                return;
            }
        }
        int iSave = canvas.save();
        canvas.setMatrix(matrix);
        this.o.set(0, 0, this.j.getWidth(), this.j.getHeight());
        this.p.set(0, 0, this.k, this.l);
        canvas.drawBitmap(this.j, this.o, this.p, (Paint) null);
        for (c cVar : this.i) {
            if (cVar.b) {
                int iSave2 = canvas.save();
                canvas.rotate(cVar.c, cVar.f8216f + (cVar.f8218h * 0.5f), cVar.f8217g + (cVar.i * 0.5f));
                i(cVar, canvas);
                canvas.restoreToCount(iSave2);
            } else {
                i(cVar, canvas);
            }
        }
        canvas.restoreToCount(iSave);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public boolean d(cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.k
    public cn.mucang.android.jiakaoyi.hpmap.view.q.a f(Pos pos, double d2) {
        return null;
    }
}
