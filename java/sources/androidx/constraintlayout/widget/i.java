package androidx.constraintlayout.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends a {
    private boolean j;
    private boolean k;

    @Override // androidx.constraintlayout.widget.a
    protected void j(ConstraintLayout constraintLayout) {
        i(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.a
    protected void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.j = true;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.k = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.a, android.view.View
    public void onAttachedToWindow() {
        int i = Build.VERSION.SDK_INT;
        super.onAttachedToWindow();
        if (this.j || this.k) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = i >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
                for (int i2 = 0; i2 < this.b; i2++) {
                    View viewById = constraintLayout.getViewById(this.f847a[i2]);
                    if (viewById != null) {
                        if (this.j) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.k && elevation > BitmapDescriptorFactory.HUE_RED && i >= 21) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        h();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        h();
    }

    public void u(androidx.constraintlayout.core.widgets.i iVar, int i, int i2) {
    }
}
