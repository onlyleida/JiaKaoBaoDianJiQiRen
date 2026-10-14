package cn.mucang.android.selectcity.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cn.mucang.android.core.utils.s0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LetterIndexBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f8947a;
    private List<String> b;
    private int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f8949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f8950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f8951g;

    public interface a {
        void a();

        void b(String str, int i);
    }

    public LetterIndexBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.c = new int[arrayList.size()];
        this.f8948d = -1;
        this.f8949e = new Paint();
        this.f8950f = 50;
        this.f8951g = 50;
    }

    private int a(float f2) {
        int i = 0;
        while (true) {
            int[] iArr = this.c;
            if (i >= iArr.length) {
                return 0;
            }
            int i2 = iArr[i];
            if (f2 <= iArr[0] || i == iArr.length - 1 || (f2 >= i2 && f2 < iArr[i + 1])) {
                return i;
            }
            i++;
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        int i = this.f8948d;
        a aVar = this.f8947a;
        int iA = a(y);
        if (action == 1 || action == 3) {
            setBackground(new ColorDrawable(0));
            this.f8948d = -1;
            invalidate();
            if (aVar != null) {
                aVar.a();
            }
        } else if (i != iA && iA >= 0 && iA < this.b.size()) {
            if (aVar != null) {
                aVar.b(this.b.get(iA), iA);
            }
            this.f8948d = iA;
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.b.size() == 0) {
            return;
        }
        int height = (getHeight() - this.f8950f) - this.f8951g;
        int width = getWidth();
        int size = height / this.b.size() <= 120 ? height / this.b.size() : 120;
        float f2 = this.f8950f;
        for (int i = 0; i < this.b.size(); i++) {
            this.f8949e.setColor(-13421773);
            this.f8949e.setAntiAlias(true);
            this.f8949e.setTextSize(s0.a(12.0f));
            if (i == this.f8948d) {
                this.f8949e.setColor(Color.parseColor("#3399ff"));
            }
            float fMeasureText = this.f8949e.measureText(this.b.get(i));
            Rect rect = new Rect();
            this.f8949e.getTextBounds(this.b.get(i), 0, 1, rect);
            int iHeight = rect.height();
            float f3 = f2 + ((size + iHeight) / 2);
            this.c[i] = (int) (f3 - iHeight);
            canvas.drawText(this.b.get(i), (width / 2) - (fMeasureText / 2.0f), f3, this.f8949e);
            f2 = f3 + ((size / 2) - (iHeight / 2));
            this.f8949e.reset();
        }
    }

    public void setLetterIdxData(List<String> list) {
        this.b.clear();
        this.b.addAll(list);
        this.c = new int[this.b.size()];
    }

    public void setOnTouchingLetterChangedListener(a aVar) {
        this.f8947a = aVar;
    }
}
