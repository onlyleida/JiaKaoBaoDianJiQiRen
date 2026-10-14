package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public class d extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f903a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public c getConstraintSet() {
        if (this.f903a == null) {
            this.f903a = new c();
        }
        this.f903a.o(this);
        return this.f903a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    public static class a extends ConstraintLayout.b {
        public float A0;
        public float B0;
        public float C0;
        public float D0;
        public float E0;
        public float F0;
        public float G0;
        public float u0;
        public boolean v0;
        public float w0;
        public float x0;
        public float y0;
        public float z0;

        public a(int i, int i2) {
            super(i, i2);
            this.u0 = 1.0f;
            this.v0 = false;
            this.w0 = BitmapDescriptorFactory.HUE_RED;
            this.x0 = BitmapDescriptorFactory.HUE_RED;
            this.y0 = BitmapDescriptorFactory.HUE_RED;
            this.z0 = BitmapDescriptorFactory.HUE_RED;
            this.A0 = 1.0f;
            this.B0 = 1.0f;
            this.C0 = BitmapDescriptorFactory.HUE_RED;
            this.D0 = BitmapDescriptorFactory.HUE_RED;
            this.E0 = BitmapDescriptorFactory.HUE_RED;
            this.F0 = BitmapDescriptorFactory.HUE_RED;
            this.G0 = BitmapDescriptorFactory.HUE_RED;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i = Build.VERSION.SDK_INT;
            this.u0 = 1.0f;
            this.v0 = false;
            this.w0 = BitmapDescriptorFactory.HUE_RED;
            this.x0 = BitmapDescriptorFactory.HUE_RED;
            this.y0 = BitmapDescriptorFactory.HUE_RED;
            this.z0 = BitmapDescriptorFactory.HUE_RED;
            this.A0 = 1.0f;
            this.B0 = 1.0f;
            this.C0 = BitmapDescriptorFactory.HUE_RED;
            this.D0 = BitmapDescriptorFactory.HUE_RED;
            this.E0 = BitmapDescriptorFactory.HUE_RED;
            this.F0 = BitmapDescriptorFactory.HUE_RED;
            this.G0 = BitmapDescriptorFactory.HUE_RED;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintSet_android_alpha) {
                    this.u0 = typedArrayObtainStyledAttributes.getFloat(index, this.u0);
                } else if (index == R.styleable.ConstraintSet_android_elevation) {
                    if (i >= 21) {
                        this.w0 = typedArrayObtainStyledAttributes.getFloat(index, this.w0);
                        this.v0 = true;
                    }
                } else if (index == R.styleable.ConstraintSet_android_rotationX) {
                    this.y0 = typedArrayObtainStyledAttributes.getFloat(index, this.y0);
                } else if (index == R.styleable.ConstraintSet_android_rotationY) {
                    this.z0 = typedArrayObtainStyledAttributes.getFloat(index, this.z0);
                } else if (index == R.styleable.ConstraintSet_android_rotation) {
                    this.x0 = typedArrayObtainStyledAttributes.getFloat(index, this.x0);
                } else if (index == R.styleable.ConstraintSet_android_scaleX) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == R.styleable.ConstraintSet_android_scaleY) {
                    this.B0 = typedArrayObtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotX) {
                    this.C0 = typedArrayObtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotY) {
                    this.D0 = typedArrayObtainStyledAttributes.getFloat(index, this.D0);
                } else if (index == R.styleable.ConstraintSet_android_translationX) {
                    this.E0 = typedArrayObtainStyledAttributes.getFloat(index, this.E0);
                } else if (index == R.styleable.ConstraintSet_android_translationY) {
                    this.F0 = typedArrayObtainStyledAttributes.getFloat(index, this.F0);
                } else if (index == R.styleable.ConstraintSet_android_translationZ && i >= 21) {
                    this.G0 = typedArrayObtainStyledAttributes.getFloat(index, this.G0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
