package com.serenegiant.math;

import android.graphics.Rect;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class RectangleBounds extends BaseBounds {
    private static final long serialVersionUID = 260429282595037220L;
    private final Rect boundsRect;
    public final Vector box;
    private final Vector w;

    public RectangleBounds(float f2, float f3, float f4, float f5, float f6, float f7) {
        Vector vector = new Vector();
        this.box = vector;
        this.boundsRect = new Rect();
        this.w = new Vector();
        this.position.set(f2, f3, f4);
        vector.set(f5 / 2.0f, f6 / 2.0f, f7 / 2.0f);
        this.radius = vector.len();
    }

    public Rect boundsRect() {
        Rect rect = this.boundsRect;
        Vector vector = this.position;
        float f2 = vector.x;
        Vector vector2 = this.box;
        float f3 = vector2.x;
        float f4 = vector.y;
        float f5 = vector2.y;
        rect.set((int) (f2 - f3), (int) (f4 - f5), (int) (f2 + f3), (int) (f4 + f5));
        return this.boundsRect;
    }

    @Override // com.serenegiant.math.BaseBounds
    public boolean ptInBounds(float f2, float f3, float f4) {
        boolean zPtInBoundsSphere = ptInBoundsSphere(f2, f3, f4, this.radius);
        if (!zPtInBoundsSphere) {
            return zPtInBoundsSphere;
        }
        this.w.set(f2, f3, f4).sub(this.position).rotate(this.angle, -1.0f);
        Vector vector = this.position;
        float f5 = vector.x;
        Vector vector2 = this.box;
        float f6 = vector2.x;
        float f7 = f5 - f6;
        float f8 = f5 + f6;
        float f9 = vector.y;
        float f10 = vector2.y;
        float f11 = f9 - f10;
        float f12 = f9 + f10;
        float f13 = vector.z;
        float f14 = vector2.z;
        float f15 = f13 - f14;
        float f16 = f13 + f14;
        Vector vector3 = this.w;
        float f17 = vector3.x;
        if (f17 >= f7 && f17 <= f8) {
            float f18 = vector3.y;
            if (f18 >= f11 && f18 <= f12) {
                float f19 = vector3.z;
                if (f19 >= f15 && f19 <= f16) {
                    return true;
                }
            }
        }
        return false;
    }

    public Rect boundsRect(float f2) {
        Rect rect = this.boundsRect;
        Vector vector = this.position;
        float f3 = vector.x;
        Vector vector2 = this.box;
        float f4 = vector2.x;
        float f5 = vector.y;
        float f6 = vector2.y;
        rect.set((int) (f3 - (f4 * f2)), (int) (f5 - (f6 * f2)), (int) (f3 + (f4 * f2)), (int) (f5 + (f6 * f2)));
        return this.boundsRect;
    }

    public RectangleBounds(float f2, float f3, float f4, float f5) {
        this(f2, f3, BitmapDescriptorFactory.HUE_RED, f4, f5, BitmapDescriptorFactory.HUE_RED);
    }

    public RectangleBounds(Vector vector, float f2, float f3) {
        this(vector.x, vector.y, vector.z, f2, f3, BitmapDescriptorFactory.HUE_RED);
    }

    public RectangleBounds(Vector vector, Vector vector2) {
        Vector vector3 = new Vector();
        this.box = vector3;
        this.boundsRect = new Rect();
        this.w = new Vector();
        float f2 = vector.x;
        float f3 = vector2.x;
        if (f2 > f3) {
            vector.x = f3;
            vector2.x = f2;
        }
        float f4 = vector.y;
        float f5 = vector2.y;
        if (f4 > f5) {
            vector.y = f5;
            vector2.y = f4;
        }
        float f6 = vector.z;
        float f7 = vector2.z;
        if (f6 > f7) {
            vector.z = f7;
            vector2.z = f6;
        }
        setPosition((vector2.x - vector.x) / 2.0f, (vector2.y - vector.y) / 2.0f, (vector2.z - vector.z) / 2.0f);
        vector3.set(this.position).sub(vector);
        this.radius = vector3.len();
    }

    public RectangleBounds(Rect rect) {
        this(rect.centerX(), rect.centerY(), rect.width(), rect.height());
    }
}
