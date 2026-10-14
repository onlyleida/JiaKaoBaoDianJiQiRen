package com.serenegiant.math;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class OverlapTester {
    private static final Vector r1L = new Vector();
    private static final Vector r2L = new Vector();

    public static boolean check(BaseBounds baseBounds, BaseBounds baseBounds2) {
        float fDistSquared = baseBounds.position.distSquared(baseBounds2.position);
        float f2 = baseBounds.radius + baseBounds2.radius;
        return fDistSquared <= f2 * f2;
    }

    public static boolean check(CircleBounds circleBounds, CircleBounds circleBounds2) {
        float fDistSquared = circleBounds.position.distSquared(circleBounds2.position);
        float f2 = circleBounds.radius + circleBounds2.radius;
        return fDistSquared <= f2 * f2;
    }

    public static boolean check(RectangleBounds rectangleBounds, RectangleBounds rectangleBounds2) {
        Vector vector = r1L;
        vector.set(rectangleBounds.position).sub(rectangleBounds.box);
        Vector vector2 = rectangleBounds.box;
        float f2 = vector2.x * 2.0f;
        float f3 = vector2.y * 2.0f;
        float f4 = vector2.z * 2.0f;
        Vector vector3 = r2L;
        vector3.set(rectangleBounds2.position).sub(rectangleBounds2.box);
        Vector vector4 = rectangleBounds2.box;
        float f5 = vector4.x * 2.0f;
        float f6 = vector4.y * 2.0f;
        float f7 = vector4.z * 2.0f;
        float f8 = vector.x;
        float f9 = vector3.x;
        if (f8 < f5 + f9 && f8 + f2 > f9) {
            float f10 = vector.y;
            float f11 = vector3.y;
            if (f10 < f6 + f11 && f10 + f3 > f11) {
                float f12 = vector.z;
                float f13 = vector3.z;
                if (f12 < f7 + f13 && f12 + f4 > f13) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean check(CircleBounds circleBounds, RectangleBounds rectangleBounds) {
        Vector vector = circleBounds.position;
        float f2 = vector.x;
        float f3 = vector.y;
        float f4 = vector.z;
        Vector vector2 = r1L;
        vector2.set(rectangleBounds.position).sub(rectangleBounds.box);
        Vector vector3 = rectangleBounds.box;
        float f5 = vector3.x * 2.0f;
        float f6 = vector3.y * 2.0f;
        float f7 = vector3.z * 2.0f;
        Vector vector4 = circleBounds.position;
        float f8 = vector4.x;
        float f9 = vector2.x;
        if (f8 < f9) {
            f2 = f9;
        } else if (f8 > f9 + f5) {
            f2 = f9 + f5;
        }
        float f10 = vector4.y;
        float f11 = vector2.y;
        if (f10 < f11) {
            f3 = f11;
        } else if (f10 > f11 + f6) {
            f3 = f11 + f6;
        }
        float f12 = vector4.z;
        float f13 = vector2.z;
        if (f12 < f13) {
            f4 = f13;
        } else if (f12 > f13 + f7) {
            f4 = f13 + f7;
        }
        float fDistSquared = vector4.distSquared(f2, f3, f4);
        float f14 = circleBounds.radius;
        return fDistSquared < f14 * f14;
    }

    public static boolean check(CircleBounds circleBounds, Vector vector) {
        float fDistSquared = circleBounds.position.distSquared(vector);
        float f2 = circleBounds.radius;
        return fDistSquared < f2 * f2;
    }

    public static boolean check(CircleBounds circleBounds, float f2, float f3, float f4) {
        float fDistSquared = circleBounds.position.distSquared(f2, f3, f4);
        float f5 = circleBounds.radius;
        return fDistSquared < f5 * f5;
    }

    public static boolean check(CircleBounds circleBounds, float f2, float f3) {
        float fDistSquared = circleBounds.position.distSquared(f2, f3);
        float f4 = circleBounds.radius;
        return fDistSquared < f4 * f4;
    }

    public static boolean check(RectangleBounds rectangleBounds, Vector vector) {
        return check(rectangleBounds, vector.x, vector.y, vector.z);
    }

    public static boolean check(RectangleBounds rectangleBounds, float f2, float f3) {
        return check(rectangleBounds, f2, f3, BitmapDescriptorFactory.HUE_RED);
    }

    public static boolean check(RectangleBounds rectangleBounds, float f2, float f3, float f4) {
        Vector vector = r1L;
        vector.set(rectangleBounds.position).sub(rectangleBounds.box);
        float f5 = vector.x;
        if (f5 <= f2) {
            Vector vector2 = rectangleBounds.box;
            if (f5 + (vector2.x * 2.0f) >= f2) {
                float f6 = vector.y;
                if (f6 <= f3 && f6 + (vector2.y * 2.0f) >= f3) {
                    float f7 = vector.z;
                    if (f7 <= f4 && f7 + (vector2.z * 2.0f) >= f4) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean check(SphereBounds sphereBounds, SphereBounds sphereBounds2) {
        return sphereBounds.position.distance(sphereBounds2.position) <= sphereBounds.radius + sphereBounds2.radius;
    }

    public static boolean check(SphereBounds sphereBounds, Vector vector) {
        float fDistSquared = sphereBounds.position.distSquared(vector);
        float f2 = sphereBounds.radius;
        return fDistSquared < f2 * f2;
    }

    public static boolean check(SphereBounds sphereBounds, float f2, float f3, float f4) {
        float fDistance = sphereBounds.position.distance(f2, f3, f4);
        float f5 = sphereBounds.radius;
        return fDistance < f5 * f5;
    }
}
