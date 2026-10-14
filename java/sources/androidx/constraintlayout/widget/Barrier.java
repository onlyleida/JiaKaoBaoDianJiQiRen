package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends a {
    private int j;
    private int k;
    private androidx.constraintlayout.core.widgets.a l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void u(ConstraintWidget constraintWidget, int i, boolean z) {
        this.k = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.j;
            if (i2 == 5) {
                this.k = 0;
            } else if (i2 == 6) {
                this.k = 1;
            }
        } else if (z) {
            int i3 = this.j;
            if (i3 == 5) {
                this.k = 1;
            } else if (i3 == 6) {
                this.k = 0;
            }
        } else {
            int i4 = this.j;
            if (i4 == 5) {
                this.k = 0;
            } else if (i4 == 6) {
                this.k = 1;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            ((androidx.constraintlayout.core.widgets.a) constraintWidget).r1(this.k);
        }
    }

    public boolean getAllowsGoneWidget() {
        return this.l.l1();
    }

    public int getMargin() {
        return this.l.n1();
    }

    public int getType() {
        return this.j;
    }

    @Override // androidx.constraintlayout.widget.a
    protected void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        this.l = new androidx.constraintlayout.core.widgets.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.l.q1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.l.s1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f848d = this.l;
        t();
    }

    @Override // androidx.constraintlayout.widget.a
    public void o(ConstraintWidget constraintWidget, boolean z) {
        u(constraintWidget, this.j, z);
    }

    public void setAllowsGoneWidget(boolean z) {
        this.l.q1(z);
    }

    public void setDpMargin(int i) {
        this.l.s1((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i) {
        this.l.s1(i);
    }

    public void setType(int i) {
        this.j = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
