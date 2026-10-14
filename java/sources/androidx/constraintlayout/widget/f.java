package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class f extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f904a;
    private View b;
    private int c;

    public void a(ConstraintLayout constraintLayout) {
        if (this.b == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.b.getLayoutParams();
        bVar2.s0.a1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourY = bVar.s0.y();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviourY != dimensionBehaviour) {
            bVar.s0.b1(bVar2.s0.R());
        }
        if (bVar.s0.O() != dimensionBehaviour) {
            bVar.s0.C0(bVar2.s0.v());
        }
        bVar2.s0.a1(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f904a == -1 && !isInEditMode()) {
            setVisibility(this.c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f904a);
        this.b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).g0 = true;
            this.b.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.b;
    }

    public int getEmptyVisibility() {
        return this.c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View viewFindViewById;
        if (this.f904a == i) {
            return;
        }
        View view = this.b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.b.getLayoutParams()).g0 = false;
            this.b = null;
        }
        this.f904a = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.c = i;
    }
}
