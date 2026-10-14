package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;

/* JADX INFO: loaded from: classes.dex */
public class n extends androidx.constraintlayout.widget.a implements MotionLayout.k {
    private boolean j;
    private boolean k;
    private float l;
    protected View[] m;

    public void A(View view, float f2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.k
    public void a(MotionLayout motionLayout, int i, int i2, float f2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.k
    public void b(MotionLayout motionLayout, int i) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.k
    public void c(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.k
    public void d(MotionLayout motionLayout, int i, boolean z, float f2) {
    }

    public float getProgress() {
        return this.l;
    }

    @Override // androidx.constraintlayout.widget.a
    protected void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MotionHelper_onShow) {
                    this.j = typedArrayObtainStyledAttributes.getBoolean(index, this.j);
                } else if (index == R.styleable.MotionHelper_onHide) {
                    this.k = typedArrayObtainStyledAttributes.getBoolean(index, this.k);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f2) {
        this.l = f2;
        int i = 0;
        if (this.b > 0) {
            this.m = m((ConstraintLayout) getParent());
            while (i < this.b) {
                A(this.m[i], f2);
                i++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i < childCount) {
            View childAt = viewGroup.getChildAt(i);
            if (!(childAt instanceof n)) {
                A(childAt, f2);
            }
            i++;
        }
    }

    public boolean u() {
        return false;
    }

    public boolean v() {
        return this.k;
    }

    public boolean w() {
        return this.j;
    }

    public void x(MotionLayout motionLayout) {
    }

    public void y(Canvas canvas) {
    }

    public void z(Canvas canvas) {
    }
}
